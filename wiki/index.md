---
type: moc
title: Index
created: 2026-09-01
updated: 2026-09-01
review_by: 2026-12-01
status: stable
confidence: high
sensitivity: internal
sources: []
tags: [moc]
---

# Index

**Agents: read this file first on every task. It is a routing table, not a reading list.**
Pick the smallest set of pages that answers the question. Maximum 7.

## Scope
This wiki covers: the **Ming Hwee Assistant** chatbot project — a 24/7 web chatbot for a Singapore employment agency serving both employers hiring a migrant domestic worker (MDW) and the helpers themselves. It covers the vendor proposal and its two revisions, the chatbot's guardrails and safeguarding protocols, helper rights content, and the MOM regulatory framework the system must comply with.

It deliberately does NOT cover: other GrowwStacks client projects; general chatbot or LLM engineering practice; Singapore immigration or employment law beyond what the ingested MOM documents state.

## Maps of Content
- [[concepts-moc]]
- [[entities-moc]]
- [[analyses-moc]]

## Answer routing
| If the question is about… | Start at |
|---|---|
| The project overall, the client, KB versions, governance | [[Ming-Hwee-Agency]] |
| Platform architecture, layers, channels, shared database | [[Ming-Hwee-OS]] |
| What the bot must never do; the fourteen rules | [[Chatbot-guardrails]] |
| Assault, confinement, self-harm, medical emergency, 999/995 | [[Crisis-escalation]] |
| Where a helper is told to go for a non-emergency problem | [[Agency-first-support]] |
| A helper's passport being withheld | [[Passport-confiscation-protocol]] |
| Fees, levies, thresholds — why the bot must not know them | [[Dynamic-data-architecture]] |
| The portal endpoints, admin panel, staleness rules | [[Ming-Hwee-Portal-API]] |
| Which numbers may be hardcoded | [[Safety-allowlist]] |
| Helper entitlements: salary, food, room, phone, passport | [[Helper-rights]] |
| Rest days and the weekly-vs-monthly rules | [[Rest-day-entitlement]] |
| Salary deductions repaying a source-country agency | [[Placement-loan]] |
| Whether an employer may legally hire; the 7 MOM criteria | [[Employer-eligibility-screening]] |
| Lead capture, scoring, nurture, Hot/Warm/Cold | [[Lead-qualification]] |
| Which helper profiles reach an employer, and fairness rules | [[Candidate-employer-matching]] |
| Escalation to a person, time-to-human, approval gates | [[Human-handoff]] |
| The sixteen backend workflows and their status | [[Workflow-inventory]] |
| What may be collected over WhatsApp vs the secure portal | [[Sensitive-data-boundary]] |
| Licence conditions, advertising rules, agency obligations | [[EA-licence-compliance]] |
| Reading levels, Burmese, translated crisis scripts | [[Multi-language-support]] |
| MOM as regulator; levy, bond, permit fees | [[Ministry-of-Manpower]] |
| WhatsApp gateway, handoff routing | [[Respond.io]] |
| Workflow orchestration, OCR and email plumbing | [[n8n]] |
| What blocks launch and who owns each item | [[launch-blockers]] |
| What changed between vendor documents; what is current | [[vendor-scope-realignment]] |
| What documentation is missing | [[documentation-completeness-check]] |

## Source documents
| Source | File | Hash (prefix) |
|---|---|---|
| Vendor build brief (KB v1.3.0) | raw/START-HERE-VENDOR-BRIEF.md | df8f1c23 |
| Module 01 — Identity & Guardrails | raw/01-chatbot-identity-guardrails.md | 340e4e15 |
| Module 27 — Helper Rights (Simple English) | raw/27-helper-rights-simple-english.md | 99408802 |
| Module 48 — Version Control | raw/48-version-control.md | 3d2f8405 |
| Emergency Response & Crisis Protocols | raw/emergency-response-crisis-protocols (1).docx | 15d009da |
| Comprehensive HR Agency Knowledge Base | raw/comprehensive-hr-agency-knowledge-base (1).docx | 307a84b4 |
| Vendor proposal — AI-Powered Chatbot System | raw/Thomas (Proposal for AI-Powered Chatbot System) (1).docx | f6703d7c |
| Requirements & clarification (11 Mar 2026) | raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx | c84893f1 |
| Ming Hwee OS Vendor Review Pack v13.0 | raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx | 52b31868 |
| MOM — Guidelines for EAs placing FDWs | raw/20250819 - MOM guidelines-for-eas-placing-fdws (1).docx | 2462d155 |
| MOM — EA Licence Conditions | raw/20250819 - MOM-EA-licence-conditions (1).docx | 0027f77c |

**Excluded from ingest:** `Kirti_Lapidary_Technical_Feasibility_Assessment.docx` (hash 5ffd96d4) — an unrelated client project, present in `raw/` at the time of ingest and deliberately skipped. It has since been removed from `raw/` by someone other than the ingest run. See [[documentation-completeness-check]] and `log.md`.

## Health
| Metric | Value | As of |
|---|---|---|
| Wiki pages | 48 | 2026-09-01 |
| Sources ingested | 11 (all files now in raw/) | 2026-09-01 |
| Open conflicts | 9 | 2026-09-01 |
| Resolved conflicts | 1 | 2026-09-01 |
| Orphan pages | 0 | 2026-09-01 |
| Dead links | 0 | 2026-09-01 |
| Facts past review_by | 0 | 2026-09-01 |

## Open conflicts at a glance
| Conflict | Page | Why it matters |
|---|---|---|
| Emergency response latency: under 1s vs 15s minimum | [[Crisis-escalation]] | A helper in danger could wait 15 seconds for a 999 instruction |
| Non-emergency routing: agency-first vs external referral | [[Agency-first-support]] | Determines what an unpaid-salary case is told to do |
| Crisis time-to-human: 5 minutes vs 15 minutes | [[Crisis-escalation]] | The bot may promise faster than the KPI requires |
| Hardcoded regulatory figures inside the RAG corpus | [[Dynamic-data-architecture]] | Guardrail 14 can be satisfied and still emit a stale levy |
| Elderly levy concession age: 67 vs unverified | [[Ministry-of-Manpower]] | Launch blocker 5 |
| Levy concession: does PR qualify? | [[Ministry-of-Manpower]] | Launch blocker 4; SGD 240/month |
| OCR platform: Document AI vs Gemini | [[Employer-eligibility-screening]] | Different cost and accuracy for every submission |
| Is multilingual support in scope? | [[Multi-language-support]] | A literal reading ships a bot that misses "dipukul" |
| KB version: v1.3.0 vs v1.2.0 | [[Ming-Hwee-Agency]] | Module 48 is where conflict resolutions are meant to be recorded |
| **Resolved:** matching source system | [[Candidate-employer-matching]] | Matching Engine supersedes Manatal |

## Source summary pages
- [[start-here-vendor-brief-source]] — the entry-point brief: blockers, acceptance criteria, the safety carve-out
- [[module-01-identity-guardrails-source]] — identity, tone, the fourteen guardrails, routing principle
- [[module-27-helper-rights-source]] — helper rights at Grade 6 reading level
- [[module-48-version-control-source]] — KB versioning and the v1.2.0 refactor record
- [[emergency-crisis-protocols-source]] — life-critical safeguarding module, undated and unattributed
- [[hr-agency-knowledge-base-source]] — the broadest RAG corpus document, with stale-figure risk
- [[thomas-chatbot-proposal-source]] — the original vendor proposal, largely superseded
- [[minghwee-requirements-clarification-source]] — client decisions and the eligibility blocker
- [[minghwee-os-vendor-review-pack-v13-source]] — the current architecture direction
- [[mom-ea-guidelines-fdw-source]] — MOM conduct guidelines for agencies placing FDWs
- [[mom-ea-licence-conditions-source]] — the full licence conditions
