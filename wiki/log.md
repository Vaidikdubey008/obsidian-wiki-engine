---
type: moc
title: Change log
created: 2026-09-01
updated: 2026-09-08
review_by: 2027-09-01
status: stable
confidence: high
sensitivity: internal
sources: []
tags: [log]
---

# Change log

Append only. Newest first. One entry per ingest or lint run.

## 2026-09-08 — Ingest of Services Knowledge Base v1.0 (1 source)

**Source ingested:** 1 new file in `raw/`

| File | Hash (prefix) |
|---|---|
| minghwee-services-knowledge-base.md | cff3a449 |

Hash checked against all existing source pages before ingest. No duplicate found. This is the MingHwee Services Knowledge Base v1.0 (Growwstacks) — the operational service-delivery document covering the seven core FDW/MDW placement services. In scope per AGENTS.md §0 (service delivery for the Ming Hwee project).

**Delivered across two pull requests:**
- **PR #1** merged the raw file (`raw/minghwee-services-knowledge-base.md`) only — the wiki pages were not included in that merge.
- **PR #2** (this entry) adds the ten wiki pages plus the index, log and MOC updates, completing the ingest so the raw source is no longer orphaned.

**Pages created:** 10
- 1 source summary: services-knowledge-base-source
- 8 concept pages: New-Hiring, Direct-Hiring, Work-Permit-Renewal, Passport-Renewal, Home-Leave, Replacement, Helper-Transfer, Forms-and-documents-register
- 1 analysis page: services-at-a-glance

**Pages updated:** index.md (routing rows for the seven services + forms register; source-documents row; health counts; open-conflicts table; source-summary list), concepts-moc (new "Service delivery" section), analyses-moc (services-at-a-glance + a suggested fee-verification analysis).

**Conflicts opened:** 1
1. SIP registration window — 3 working days of arrival (Module 27 / helper-rights corpus) vs a 7-day window / "required window" (Services KB, Direct Hiring and New Hiring) — on [[New-Hiring]]. Left open; needs verification against the MOM portal.

**Conflicts resolved:** 0

**Key findings:**
- The Services KB is a service-delivery layer distinct from the chatbot guardrail modules already in the wiki — it describes the human/agency workflow the bot's tickets hand off into.
- Fees are stated for only four services (Work Permit Renewal $695; Passport Renewal PH/Indo $450; Home Leave PH $400 / Indo $250). New Hiring, Direct Hiring, Replacement and Transfer are quoted as "package"/"fee" with no figure — flagged as an open question and a suggested next analysis.
- All stated fees, the $35 MOM submission fee, and MOM timelines are volatile by default (AGENTS.md §0.2) and were recorded with source and date, marked as requiring verification against the live MOM portal before quoting.
- Passport-related handling (PH original passport for renewal / home leave) was cross-linked to [[Passport-confiscation-protocol]] so a legitimate embassy hold is not confused with confiscation.

**Notes on method:**
- The `.docx` was extracted to markdown and a clean canonical raw file authored for `raw/`. Nothing else under `raw/` was modified.
- Per AGENTS.md §7 the work was done on ingest branches (`ingest/services-knowledge-base`, then `ingest/services-kb-wiki-pages`) for human review, not committed directly to `main` by the ingest run.
- No credentials, keys, tokens or personal data were written.

## 2026-09-01 — Initial ingest of Ming Hwee Assistant project (11 sources)

**Sources ingested:** 11 of 12 files in `raw/`

| File | Hash (prefix) |
|---|---|
| START-HERE-VENDOR-BRIEF.md | df8f1c23 |
| 01-chatbot-identity-guardrails.md | 340e4e15 |
| 27-helper-rights-simple-english.md | 99408802 |
| 48-version-control.md | 3d2f8405 |
| emergency-response-crisis-protocols (1).docx | 15d009da |
| comprehensive-hr-agency-knowledge-base (1).docx | 307a84b4 |
| Thomas (Proposal for AI-Powered Chatbot System) (1).docx | f6703d7c |
| MING HWEE AGENCY - chatbot requriments and clarification (1).docx | c84893f1 |
| Ming_Hwee_OS_..._Vendor_Review_Pack_v13_0 (1).docx | 52b31868 |
| 20250819 - MOM guidelines-for-eas-placing-fdws (1).docx | 2462d155 |
| 20250819 - MOM-EA-licence-conditions (1).docx | 0027f77c |

All eleven hashes checked for duplicates before ingest. No duplicates found.

**Deliberately not ingested:** 1
- `Kirti_Lapidary_Technical_Feasibility_Assessment.docx` (hash 5ffd96d4) — a technical feasibility assessment for an unrelated client: Shopify to Alibaba.com B2B product listing automation for a jewellery exporter. No overlap with the Ming Hwee MDW chatbot. Excluded on the operator's instruction to keep it out of scope and record the decision. Nothing under `raw/` was modified by this ingest run.
- **Subsequent change, not made by this run:** the file was later removed from `raw/` by someone else; `raw/` now holds 11 files. Recorded here so the exclusion decision and the disappearance are not confused with each other.

**Pages created:** 48
- 11 source summary pages
- 12 entity pages: Ming-Hwee-Agency, Ming-Hwee-OS, Ministry-of-Manpower, Ming-Hwee-Portal-API, Respond.io, n8n, Supabase, Airtable, Cal.com, Manatal, XCally, HOME
- 17 concept pages: Chatbot-guardrails, Crisis-escalation, Agency-first-support, Dynamic-data-architecture, Safety-allowlist, Passport-confiscation-protocol, Helper-rights, Rest-day-entitlement, Placement-loan, Employer-eligibility-screening, Lead-qualification, Human-handoff, Candidate-employer-matching, Sensitive-data-boundary, Workflow-inventory, EA-licence-compliance, Multi-language-support
- 3 analysis pages: launch-blockers, vendor-scope-realignment, documentation-completeness-check
- 3 Map of Content pages
- index.md and log.md

**Prior wiki removed:** the previous Oakland Creek wiki (23 pages, 6 sources) was deleted in full at the operator's instruction before this ingest. Folder structure retained. A copy was taken to the session scratchpad first, as this project is not under version control.

**Conflicts opened:** 9
1. Current KB version — v1.3.0 per the brief vs v1.2.0 per Module 48 — on [[Ming-Hwee-Agency]]
2. Emergency response latency — under 1 second vs a 15-second minimum — on [[Crisis-escalation]]
3. Crisis time-to-human — 5 minutes vs 15 minutes, both in the same document — on [[Crisis-escalation]]
4. Non-emergency routing — agency-first vs external referral for Level 2 categories — on [[Agency-first-support]]
5. Hardcoded regulatory figures inside the RAG corpus vs Guardrail 14 — on [[Dynamic-data-architecture]]
6. Elderly levy concession age — 67 stated as fact vs flagged unverified — on [[Ministry-of-Manpower]]
7. Levy concession and citizenship — silent vs open question — on [[Ministry-of-Manpower]]
8. OCR platform — Google Document AI vs Google Gemini, same document — on [[Employer-eligibility-screening]]
9. Multilingual support scope — "excluded absolutely" from MVP vs five-language crisis detection mandated as life-critical — on [[Multi-language-support]]

**Conflicts resolved:** 1
- Matching source system — Manatal vs the Ming Hwee OS Matching Engine. Resolved in favour of the Matching Engine on recency (Jun 2026 supersedes Mar 2026), on the document's explicit purpose of correcting the earlier position, and because it removes a Licence Condition 17 exposure. On [[Candidate-employer-matching]].

**Key findings:**
- All six named launch blockers belong to Ming Hwee, not the vendor. None is a developer task. See [[launch-blockers]].
- Only 3 of the knowledge base's 59 modules are present in `raw/`, and 6 of the 9 documents in the brief's mandated reading order are missing — including the Portal API specification and Module 58, on which every regulatory answer depends. See [[documentation-completeness-check]].
- The knowledge base has never been reviewed by a Singapore employment lawyer, a migrant-worker NGO, or a Ming Hwee staff member with case experience.
- Two documents (emergency protocols, HR agency knowledge base) are undated and unattributed, and cannot be version-checked.
- Burmese is unsupported for general conversation despite Myanmar being one of three source countries, though Burmese crisis scripts do exist.
- The out-of-hours crisis rota does not exist, so the system's fastest promise is its least staffed.

**Notes on method:**
- Seven `.docx` sources required text extraction (no `python-docx` in the environment); a zip/XML extractor was used, with output written to the session scratchpad. `raw/` was not modified.
- Emergency and safety telephone numbers (999, 995, 1800-255-0000, 1800-339-5505) are recorded in the wiki. These are public organisational safety numbers and form the documented Safety Allowlist, not personal contact details under AGENTS.md §2.7. No credentials, keys, tokens or personal data were written. Individuals named in source documents are referenced by role rather than name where the wiki did not require them.

## 2026-09-01 — Wiki reset for new project

Previous wiki (Oakland Creek, 23 pages, 6 sources) deleted in full. Folder structure retained. 12 new source documents placed in `raw/` awaiting ingest.

**Sources ingested:** 0
**Pages created:** 2 (index.md, log.md — blank scaffold)
**Conflicts opened:** 0
