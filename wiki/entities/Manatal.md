---
type: entity
title: Manatal
created: 2026-09-01
updated: 2026-09-01
review_by: 2026-12-01
status: deprecated
confidence: high
sensitivity: internal
sources: ["raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx", "raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx"]
tags: [platform, ats, candidates, superseded]
---

# Manatal

## What it is
An applicant tracking system proposed to hold candidate and helper records, with [[Airtable]] holding employer records and [[n8n]] connecting the two for matching. (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §7 · 2026-09-01)

**Superseded.** The June 2026 review pack replaces the Manatal dependency with the Ming Hwee OS Matching Engine. See [[Candidate-employer-matching]] for the full conflict and its resolution. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §4, §11 · 2026-09-01)

## History in this project

| Date | Position | Source |
|---|---|---|
| 11 Mar 2026 | Candidate data should sync to Manatal, not just Airtable | (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §7) |
| 11 Mar 2026 | Ming Hwee limits Manatal-sourced candidate delivery to the website: "Only in the website." | (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §Q11) |
| Jun 2026 | Dependency must be replaced — conflicts with the native Supabase candidate database and the Ming Hwee Matching Engine | (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §4) |

## Tool replacement
(src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §11 · 2026-09-01)

| Old concept | Replacement |
|---|---|
| `fetch_matched_helpers` via Manatal API | `get_matching_summary(case_id)` from the Ming Hwee Matching Engine |
| Return up to five profiles directly to WhatsApp | Return consultant-reviewed shortlist suggestions to the Sales Consultant PWA |
| Eligibility outcome triggers helper profiles automatically | Eligibility may trigger a consultant review task, never automatic sending |

## Known issues / conflicts
The replacement is recorded on [[Candidate-employer-matching]] as a resolved conflict. This page is kept rather than deleted because the March decision may still be reflected in vendor work in progress, and because the licence conditions on biodata disclosure (see [[EA-licence-compliance]]) apply to whichever system ends up serving candidate profiles.

## Projects using this
- Ming Hwee Assistant chatbot — proposed then superseded

## Related
[[Candidate-employer-matching]] · [[Ming-Hwee-OS]] · [[Supabase]] · [[Airtable]] · [[vendor-scope-realignment]]
