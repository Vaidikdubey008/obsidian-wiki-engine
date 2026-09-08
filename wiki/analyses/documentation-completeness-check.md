---
type: analysis
title: What documentation is missing from this corpus?
created: 2026-09-01
updated: 2026-09-01
review_by: 2026-10-01
status: stable
confidence: high
sensitivity: internal
sources: [raw/START-HERE-VENDOR-BRIEF.md, raw/48-version-control.md, "raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx", "raw/20250819 - MOM-EA-licence-conditions (1).docx"]
pages_used: [Ming-Hwee-Portal-API, Dynamic-data-architecture, Crisis-escalation, EA-licence-compliance, Multi-language-support]
tags: [analysis, gaps, documentation, coverage]
---

# What documentation is missing from this corpus?

## Question
The ingested documents reference many others. What is referenced but absent, and which absences actually matter?

## Short answer
Eleven documents were ingested. The knowledge base they belong to has **59 modules; three are present**. The vendor brief mandates a nine-document reading order and four of those documents do not exist here. The most consequential absences are the Portal API specification and Module 58 — the two documents that define the architecture on which every regulatory answer depends — followed by the MOM licence-condition annexes, which contain the actual standards the conditions refer to.

## Reasoning

### The mandated reading order
The brief sets a required reading order before opening anything else. (src: raw/START-HERE-VENDOR-BRIEF.md §2 · 2026-09-01)

| # | Document | Present? |
|---|---|---|
| 1 | START-HERE-VENDOR-BRIEF.md | Yes |
| 2 | INDEPENDENT-AUDIT-2026-07.md | **No** |
| 3 | TECH-ARCHITECTURE-RECOMMENDATION.md | **No** |
| 4 | PORTAL-API-SPECIFICATION.md | **No** |
| 5 | 58-dynamic-data-architecture.md | **No** |
| 6 | 01-chatbot-identity-guardrails.md | Yes |
| 7 | 49-intent-and-entity-schema.md | **No** |
| 8 | 47-kpi-framework.md | **No** |
| 9 | Everything else (RAG corpus) | Partially — Modules 27 and 48 only |

Six of nine are missing, including three of the four the brief ranks above the guardrails module.

### The KB module set
Module 48 records 59 modules (00–58) totalling roughly 17,500 lines. Present: **01, 27, 48**. That is 3 of 59, or about 5%. (src: raw/48-version-control.md §48.1 · 2026-09-01)

Modules referenced by name in the ingested documents but absent include 03 (language switching), 19 (pricing), 21, 22, 26, 30, 32, 34 (helper crisis handling), 36, 40 (handoff brief), 41 (pricing Q&A), 42, 43–45 (sample conversations), 46 (regulatory sources, incl. 46.10 the sync process), 47 (KPI framework, incl. 47.2a time-to-human), 49, 51 (messy input), 54 (adversarial suite), 55 (degraded mode), 56, and 58.

### What each absence costs

**Highest impact — the answers cannot be verified without these:**

- **PORTAL-API-SPECIFICATION.md and Module 58.** [[Ming-Hwee-Portal-API]] and [[Dynamic-data-architecture]] are reconstructed here from three secondary descriptions. The endpoint list is known; request and response schemas, error semantics, caching behaviour and the staleness contract are not. These are also the two documents that carried the 15,000 seeding-trap value, so their current state is directly relevant.
- **Module 34.** Carries the 5-minute crisis promise that conflicts with the brief's 15-minute target, and the helper crisis handling the guardrails module defers to. The conflict on [[Crisis-escalation]] cannot be resolved without it.
- **Module 47 / 47.2a.** The KPI framework, including the time-to-human definition. The brief summarises it; the instrumentation spec is absent.
- **Modules 22 and 34.** Both defer to the canonical passport protocol and cannot be checked for variant wording — the exact failure the single-source rule exists to prevent.
- **MOM licence-condition Annexes A–H.** Referenced throughout the licence conditions and containing the actual standards for verification checks, accommodation, IPA timing, biodata forms, service agreements, and post-placement check records. See [[EA-licence-compliance]]. The conditions without the annexes state obligations without their content.

**Moderate impact:**

- **INDEPENDENT-AUDIT-2026-07.md.** The brief ranks it second and calls it "what was wrong and why — the failure modes to design against." The two regulatory errors it found are described but not enumerated.
- **Modules 54 and 51.** Adversarial and messy-input suites are acceptance criteria. Without them the criteria cannot be tested.
- **Module 55.** Degraded mode per dependency, including the portal-down behaviour that is an acceptance criterion.
- **Module 46.10.** The quarterly sync process, including step 3a which governs safety-allowlist re-verification.
- **The eight documents referenced by the v13.0 pack** — SOW, Sales Consultant App Brief, Candidate-Employer Matching Brief, Hiring Pipelines by Nationality, manual service workflows, Knowledge Engine Pack. Match bands and confidence definitions live in the Matching Brief.

**Low impact for this wiki's purposes:** Modules 43–45 (sample conversations) are explicitly AI-generated and are behavioural specification rather than fact.

### A note on what "missing" means here
These documents are not lost — they exist in the Ming Hwee KB package. They are absent from `raw/`, which means this wiki cannot cite them and the chatbot built from this corpus would not retrieve them. The distinction matters for the RAG pipeline: a corpus that is 5% of the knowledge base will answer confidently from the 5% it has.

### The undated, unattributed documents
Two ingested documents carry no author and no clear place in the module numbering: the emergency response protocols and the comprehensive HR agency knowledge base. Both are substantive — one is life-critical, the other is the broadest corpus document — and neither can be version-checked. The HR knowledge base additionally hardcodes regulatory figures that conflict with the current data architecture; see the open conflict on [[Dynamic-data-architecture]].

## Trade-offs

| Option | Pros | Cons | Best when |
|---|---|---|---|
| Request the full 59-module package before proceeding | Removes most gaps at once; the package exists | Delay; 59 modules is a large ingest | The wiki is meant to be authoritative for the build |
| Ingest the five highest-impact documents only | Fast; closes the conflicts that are actually open | Leaves the RAG corpus thin | The goal is resolving current conflicts |
| Proceed as-is, flagging gaps | Already done; every page names what it cannot support | The chatbot answers from 5% of its knowledge base | This wiki is a project-tracking aid, not the RAG corpus |

## Confidence and gaps
High confidence. The module count is stated directly, the reading order is enumerated, and absence is verifiable by listing `raw/`. What cannot be established is whether the missing documents would resolve the open conflicts or add new ones — the version conflict on [[Ming-Hwee-Agency]] suggests the package is not internally consistent either.

One document in `raw/` was deliberately **not** ingested: a technical feasibility assessment for an unrelated client project in a different industry. It is recorded in `log.md` as an out-of-scope exclusion.

## Pages this drew on
[[Ming-Hwee-Portal-API]] · [[Dynamic-data-architecture]] · [[Crisis-escalation]] · [[EA-licence-compliance]] · [[Multi-language-support]] · [[Ming-Hwee-Agency]] · [[Passport-confiscation-protocol]] · [[Candidate-employer-matching]]
