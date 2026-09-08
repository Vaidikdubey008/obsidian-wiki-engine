---
type: analysis
title: How did the chatbot scope change from proposal to v13.0?
created: 2026-09-01
updated: 2026-09-01
review_by: 2026-12-01
status: stable
confidence: high
sensitivity: client-confidential
sources: ["raw/Thomas (Proposal for AI-Powered Chatbot System) (1).docx", "raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx", "raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx"]
pages_used: [Ming-Hwee-OS, Manatal, Respond.io, XCally, Workflow-inventory, Candidate-employer-matching, Employer-eligibility-screening]
tags: [analysis, scope, vendor, decisions]
---

# How did the chatbot scope change from proposal to v13.0?

## Question
The corpus contains three vendor documents written months apart that disagree. What was proposed, what changed, and what is current?

## Short answer
The project moved through three positions in roughly six months: a standalone sales chatbot (undated proposal), a corrected chatbot with MOM eligibility at its centre (11 March 2026), and finally a conversational layer inside a larger platform (June 2026). The direction of travel is consistent — each revision moves logic and data **out** of the chatbot and into systems Ming Hwee controls. Where documents conflict, the June 2026 v13.0 pack is current, with one important caveat: it is explicitly not a signed contract.

## The three documents

| Document | Date | Framing |
|---|---|---|
| Vendor proposal | Undated | A business automation engine automating 70–80% of workflows |
| Requirements and clarification | 11 Mar 2026 | The proposal is missing its core business logic; expand and correct it |
| Ming Hwee OS Vendor Review Pack v13.0 | Jun 2026 | The chatbot is one channel into Ming Hwee OS, which is the operating system |

## What changed

| Item | Proposal | Mar 2026 | Jun 2026 (current) |
|---|---|---|---|
| System framing | Standalone automation engine | (unchallenged) | Conversational AI layer inside [[Ming-Hwee-OS]] |
| Database | Airtable + candidate DB | Airtable = employers, [[Manatal]] = candidates | Shared Ming Hwee OS schema; no separate chatbot database |
| Matching | Query database, present top profiles in chat | Sync candidates to Manatal | Deterministic Matching Engine; consultant-reviewed shortlist — see [[Candidate-employer-matching]] |
| Human handoff | Live agent with context | [[XCally]] eliminated → [[Respond.io]] native assignment | Retained, with approval gates on high-impact actions |
| Eligibility | Absent | **Critical blocker.** 7 MOM criteria, 40% of lead score | Sensitive intake moves to the Employer Portal |
| Workflows | 8 | 16, of which 8 new — see [[Workflow-inventory]] | Rewritten as permission-checked Ming Hwee OS tools |
| Calendar | "Calendly or Cal.com" | [[Cal.com]] confirmed, GHL Calendar declined | (unchanged) |
| Marketing | Phase 2 funnel | GoHighLevel proposed then declined | Not addressed |
| Documents over WhatsApp | Assumed fine | OCR pipeline required | Prohibited — see [[Sensitive-data-boundary]] |
| E-signing | Breeze Doc | (unaddressed) | Swappable e-sign adapter |
| ML | Future capability | Deferred: "not follow the ML approach in phase 1" | (unchanged) |
| Multilingual | English only | (unaddressed) | Excluded from MVP only; must stay on roadmap |

## Reasoning

**One theme explains almost every change: reducing what the chatbot owns.** The proposal's implicit architecture puts the bot at the centre — its own database, its own matching, its own document handling, its own lifecycle logic. Each review pulls something back. By June the principle is explicit: "The AI never directly accesses the database. The AI calls approved tools," and "There must not be a separate chatbot database that later needs to be reconciled." (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §5, §7 · 2026-09-01)

**The March review is the substantive one, not the strategic one.** Its finding that the 7-step eligibility engine was entirely absent — "the core business logic of Ming Hwee" — is a larger gap than anything the June pack raises. A chatbot that qualifies leads without checking whether the employer may legally hire is scoring the wrong thing, which is why eligibility took 40% of the lead score. See [[Employer-eligibility-screening]].

**What the June pack keeps is as informative as what it changes.** Ten vendor components are explicitly retained, including HMAC validation and idempotency ("mandatory non-negotiable"), fast webhook 200s, queue-based processing, tool-calling architecture, and the write-every-answer-before-asking-the-next principle. The reframe is about ownership and data, not about engineering quality — the vendor's backend patterns survived review intact. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §3 · 2026-09-01)

**One change is contractual rather than technical and is easy to overlook.** The "silence equals acceptance" clause must be replaced with explicit written acceptance, because otherwise "Ming Hwee may unintentionally accept incomplete deliverables." Given how many acceptance criteria in this project are safeguarding tests, an acceptance mechanism that can be satisfied by nobody objecting is a real risk. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §4 · 2026-09-01)

## Where the record is genuinely unclear

**Latency.** Asked whether Phase 1's 15–20 seconds could be optimised below 8 seconds in Phase 2, Ming Hwee answered "The max latency will never less then 15." The phrasing supports two opposite readings — a floor or a ceiling — and the two have opposite engineering consequences. It also collides with the sub-1-second emergency requirement; see the open conflict on [[Crisis-escalation]].

**OCR platform.** Google Document AI in the requirement, "google gemini" in the answer, same document. See [[Employer-eligibility-screening]].

**Airtable's status.** Never explicitly retired, but a lead store outside the shared schema is what §7 forbids. See [[Airtable]].

**Orphaned workflows.** WF-14 and WF-15 are scoped out of the chatbot without another owner named. See [[Workflow-inventory]].

## Trade-offs

| Option | Pros | Cons | Best when |
|---|---|---|---|
| Build to v13.0 as current | Latest, most coherent, resolves data-fragmentation risk | Depends on Ming Hwee OS components that may not exist yet; not contractually signed | The platform build is genuinely underway |
| Build to March scope, migrate later | Ships sooner; eligibility engine is well specified | Builds the chatbot-owned database v13.0 forbids, guaranteeing rework | Ming Hwee OS is further off than the chatbot |
| Hold for a signed contract | Removes the ambiguity in the biggest architectural decision | Delay; the pack says legal review is still pending | Commercial terms are contested |

## Confidence and gaps
High confidence on what each document says. The gap is **status**: v13.0 is a "vendor review and implementation alignment document. Not a signed commercial contract," with commercial and data-protection clauses still requiring legal review. Nothing in this corpus records whether the vendor accepted the reframe or what was ultimately signed.

The vendor proposal is undated in its own text, so the sequence here is inferred from the review documents referring back to it. Eight upstream documents referenced by the v13.0 pack — the SOW, Sales Consultant App Brief, Matching Brief, Hiring Pipelines by Nationality, manual service workflows, and Knowledge Engine Pack — are not present.

## Pages this drew on
[[Ming-Hwee-OS]] · [[Manatal]] · [[Respond.io]] · [[XCally]] · [[Workflow-inventory]] · [[Candidate-employer-matching]] · [[Employer-eligibility-screening]] · [[Sensitive-data-boundary]] · [[Airtable]] · [[Cal.com]] · [[Crisis-escalation]]
