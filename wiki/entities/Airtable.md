---
type: entity
title: Airtable
created: 2026-09-01
updated: 2026-09-01
review_by: 2026-12-01
status: contested
confidence: medium
sensitivity: internal
sources: ["raw/Thomas (Proposal for AI-Powered Chatbot System) (1).docx", "raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx", "raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx"]
tags: [platform, database, leads, crm]
---

# Airtable

## What it is
The lead and employer record store in the vendor's proposed architecture. All leads captured conversationally are logged into Airtable, and Airtable field changes act as workflow triggers. (src: raw/Thomas (Proposal for AI-Powered Chatbot System) (1).docx §3.1 · 2026-09-01)

## How it is used in this project
- Real-time lead logging and internal task tracking. (src: raw/Thomas (Proposal for AI-Powered Chatbot System) (1).docx §3.1, §4 · 2026-09-01)
- Hot/Warm/Cold lead categorisation is stored here. (src: raw/Thomas (Proposal for AI-Powered Chatbot System) (1).docx §2 · 2026-09-01)
- Holds **employer** records specifically; candidate and helper records go to [[Manatal]], with [[n8n]] connecting the two. (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §7 · 2026-09-01)
- Eligibility outcomes are written back to Airtable by WF-09, and an Airtable field update triggers WF-11 resubmission and WF-08 status notification. (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §4, §9 · 2026-09-01)

## Known issues / conflicts
The v13.0 review pack does not name Airtable, but its database ruling bears directly on it: the chatbot "must not maintain its own isolated operational database", the proposed nine-table scope is rejected, and "there must not be a separate chatbot database that later needs to be reconciled." Leads from every channel must write into the shared [[Supabase]]-backed Ming Hwee OS schema. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §1.1, §7 · 2026-09-01)

> [!inference] Not stated in any source
> No document explicitly retires Airtable, but a lead store separate from the Ming Hwee OS schema is exactly what §7 forbids. Either Airtable becomes a view onto the shared database, or it is replaced. The corpus does not say which, and this is worth an explicit decision rather than an assumption. Unverified.

## Projects using this
- Ming Hwee Assistant chatbot — employer and lead records, pending the database realignment

## Related
[[Manatal]] · [[Supabase]] · [[n8n]] · [[Lead-qualification]] · [[Ming-Hwee-OS]] · [[vendor-scope-realignment]]
