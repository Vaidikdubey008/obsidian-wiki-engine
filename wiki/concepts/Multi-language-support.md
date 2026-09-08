---
type: concept
title: Multi-Language Support
created: 2026-09-01
updated: 2026-09-01
review_by: 2026-12-01
status: contested
confidence: high
sensitivity: internal
sources: [raw/START-HERE-VENDOR-BRIEF.md, raw/01-chatbot-identity-guardrails.md, "raw/emergency-response-crisis-protocols (1).docx", "raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx", "raw/Thomas (Proposal for AI-Powered Chatbot System) (1).docx"]
tags: [language, accessibility, burmese, reading-level]
---

# Multi-Language Support

## Definition
The language and reading-level requirements for serving helpers from three source countries alongside Singapore employers. It is simultaneously an accessibility requirement, a safeguarding requirement, and a regulatory one.

## Why it matters here
MOM requires the agency to "convey information or explain to your clients in the language that he or she understands." (src: raw/20250819 - MOM guidelines-for-eas-placing-fdws (1).docx §Signing of documents · 2026-09-01)

And the users least able to escalate a misunderstanding are exactly the ones with the least English.

## Reading levels
(src: raw/01-chatbot-identity-guardrails.md §1.2 · 2026-09-01)

| User type | Level | Style |
|---|---|---|
| Employers | Grade 12 | Professional but conversational |
| Helpers | Grade 8 | Short sentences, common words, no jargon |
| Helpers with limited English | Grade 6 | Subject-verb-object, present tense, no idioms |

Acceptance criterion: helper-facing output holds Grade 8 or below, and Grade 6 where limited English is detected. (src: raw/START-HERE-VENDOR-BRIEF.md §8 · 2026-09-01)

## The Burmese gap
**Burmese is unsupported.** Myanmar is one of three source countries. The current fallback is simple English — "for the cohort with the least English and the highest isolation risk." (src: raw/START-HERE-VENDOR-BRIEF.md §9 · 2026-09-01)

The brief flags this at kickoff and states: "If budget allows a Burmese path, it is the highest-value scope addition available."

The gap compounds. The Myanmar embassy entry in the emergency contact database carries the note "Limited services due to political situation" — so a Myanmar helper has both the weakest language support and the weakest consular fallback. (src: raw/emergency-response-crisis-protocols (1).docx §Embassy Emergency Support · 2026-09-01)

## What exists
The emergency protocols document contains the most developed multilingual material in the corpus: trigger keyword sets in English, Tagalog, Indonesian, Burmese and Chinese, and full crisis scripts in Tagalog, Indonesian and Burmese with English glosses. (src: raw/emergency-response-crisis-protocols (1).docx §Trigger Keywords, §Language-Specific Emergency Responses · 2026-09-01)

So Burmese crisis scripts do exist, even though Burmese is listed as unsupported — the gap is in general conversation, not in the emergency path.

## Verification status
Multilingual content is **unverified**. Tagalog, Bahasa and Burmese examples "have not been checked by native speakers." (src: raw/START-HERE-VENDOR-BRIEF.md §9 · 2026-09-01)

The emergency protocols' own pre-launch checklist requires "multi-language accuracy verified by native speakers" — an unticked box. (src: raw/emergency-response-crisis-protocols (1).docx §Deployment Checklist · 2026-09-01)

Unverified crisis text in a language nobody on the team reads is a distinctive risk: it will look complete in review and fail only in use.

> [!conflict] OPEN — is multilingual support in scope?
> - **Claim A:** Multilingual support is "excluded absolutely" from the vendor scope; the review accepts exclusion "from MVP only" and requires it stay on the roadmap. The original proposal prepares infrastructure "for English Language only." (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §4; raw/Thomas (Proposal for AI-Powered Chatbot System) (1).docx §2 · 2026-09-01)
> - **Claim B:** The emergency protocols mandate five-language keyword detection and translated crisis scripts as LIFE-CRITICAL, with native-speaker verification on the pre-launch checklist. (src: raw/emergency-response-crisis-protocols (1).docx §Critical Implementation Notice, §Deployment Checklist · 2026-09-01)
> - **Assessment:** These can coexist only if safeguarding is carved out of the multilingual exclusion — English-only general conversation, multilingual crisis detection and response. That is a defensible design and is probably what is intended, since crisis detection is a deterministic classifier rather than LLM generation. But no document states the carve-out, and "excluded absolutely" does not read as having one. A vendor implementing Claim A literally ships a bot that cannot detect "dipukul" or "sinakit".
> - **Next step:** Confirm in writing that crisis-path language detection is exempt from the multilingual exclusion, and fund native-speaker verification of the crisis scripts regardless of MVP scope.
> - **Status:** open

## Gotchas
- Module 03 handles language switching but is not present in this corpus.
- Grade-level compliance is testable; translation quality is not, without native speakers. Passing the reading-level check says nothing about whether the Burmese text is correct.
- [[HOME]] offers support in English, Indonesian, Filipino, Tamil and Hindi — not Burmese. (src: raw/emergency-response-crisis-protocols (1).docx §Crisis Intervention Hotlines · 2026-09-01)

## Related
[[Helper-rights]] · [[Crisis-escalation]] · [[Chatbot-guardrails]] · [[HOME]] · [[EA-licence-compliance]] · [[launch-blockers]] · [[documentation-completeness-check]]

## Open questions
- Is crisis-path multilingual detection exempt from the MVP exclusion?
- Who will verify the Tagalog, Bahasa and Burmese content, and when?
- What does a Myanmar helper actually receive today?
