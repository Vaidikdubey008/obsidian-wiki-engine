---
type: concept
title: Candidate-Employer Matching
created: 2026-09-01
updated: 2026-09-01
review_by: 2026-12-01
status: stable
confidence: high
sensitivity: client-confidential
sources: ["raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx", "raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx", "raw/Thomas (Proposal for AI-Powered Chatbot System) (1).docx", "raw/20250819 - MOM-EA-licence-conditions (1).docx"]
tags: [matching, fairness, consultant-review, deterministic]
---

# Candidate-Employer Matching

## Definition
Deciding which helper profiles to put in front of which employer. In the current design this is **decision support for a consultant**, not an automated recommendation to the employer. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §11 · 2026-09-01)

## Why it matters here
Matching is where a chatbot's convenience instinct collides with both fairness and licence conditions. Sending five profiles into a WhatsApp thread is the natural product design and is prohibited on two independent grounds.

## The rules
(src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §11 · 2026-09-01)

- The AI **may** extract free-text requirements from WhatsApp or visual intake answers
- The AI **must not** assign candidate match scores
- Scoring is deterministic, from the Ming Hwee OS Matching Engine
- Consultants see match bands, confidence, reasons and flags — **not** a default percentage
- No candidate biodata reaches an employer without consultant approval
- The system creates a consultant task: review recommended shortlist

**Fairness constraints:**
- Salary is a negotiable flag, not a rank penalty
- **Nationality and religion must not be scored as quality factors**

The nationality rule is notable given that source country drives placement timelines and that the salary-range endpoint carries a "Filipino premium note" — the design permits nationality as a *preference and pricing* input while forbidding it as a *quality* signal.

## Regulatory constraint
Licence Condition 17, in force since 1 July 2020: the licensee must not publicly disclose any information or photograph of an FDW on any platform, **with or without her consent**, except as permitted. Full biodata and image may go directly to an employer who has specifically requested more information on that FDW, or via a restricted-access platform. (src: raw/20250819 - MOM-EA-licence-conditions (1).docx §Condition 17 · 2026-09-01)

The agency must also furnish the employer with her unaltered Work Permit Online employment history, retain written acknowledgement of receipt, and disclose it to nobody else. (src: raw/20250819 - MOM-EA-licence-conditions (1).docx §Condition 13 · 2026-09-01)

Whether a WhatsApp thread counts as "restricted access" or as "any platform" is not resolved anywhere in this corpus, and it determines whether the chatbot may ever send a profile at all. See [[EA-licence-compliance]].

> [!conflict] RESOLVED — matching source system
> - **Claim A:** Candidate data syncs to [[Manatal]] as the ATS; the chatbot calls `fetch_matched_helpers` via the Manatal API after eligibility and returns up to five profiles. (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §7 · 2026-09-01)
> - **Claim B:** The Manatal dependency "conflicts with native Supabase candidate database and Ming Hwee Matching Engine" and must be replaced by `get_matching_summary(case_id)`, returning consultant-reviewed shortlist suggestions to the Sales Consultant PWA rather than profiles to WhatsApp. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §4, §11 · 2026-09-01)
> - **Assessment:** Claim B is three months newer (June 2026 vs March 2026), is the document explicitly written to review and correct the earlier position, and is consistent with the corpus-wide move away from chatbot-owned data. Ming Hwee had already limited Manatal-sourced candidate delivery to the website in March, so Claim A was narrowing before it was replaced. Claim B also resolves the Condition 17 exposure that Claim A creates by sending profiles into WhatsApp.
> - **Resolution:** The Ming Hwee OS Matching Engine is the matching source. Manatal is superseded; see [[Manatal]] for the tool-level replacement table. Automatic profile delivery to WhatsApp is not permitted.
> - **Status:** resolved · 2026-09-01

## Gotchas
- The vendor proposal frames matching as "a recommendation engine for human capital" that queries the database, filters, presents top profiles interactively and moves to booking. Every step after "filters" is now gated on consultant approval. (src: raw/Thomas (Proposal for AI-Powered Chatbot System) (1).docx §4.D, §7 · 2026-09-01)
- Ming Hwee scoped WF-14 Candidate Matcher out of the chatbot entirely — so the bot's role is requirement extraction and nothing further. (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §9 · 2026-09-01)
- ML-driven compatibility scoring is deferred and, per Ming Hwee, belongs in the portal rather than the chatbot in any case. (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §1 · 2026-09-01)

## Related
[[Manatal]] · [[Ming-Hwee-OS]] · [[Employer-eligibility-screening]] · [[EA-licence-compliance]] · [[Sensitive-data-boundary]] · [[Human-handoff]] · [[Workflow-inventory]]

## Open questions
- Does a WhatsApp thread satisfy Condition 17's restricted-access exception?
- What are the match bands, and what makes a match high or low confidence? The Matching Brief is not in this corpus.
