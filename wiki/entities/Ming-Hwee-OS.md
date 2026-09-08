---
type: entity
title: Ming Hwee OS
created: 2026-09-01
updated: 2026-09-01
review_by: 2026-12-01
status: draft
confidence: high
sensitivity: client-confidential
sources: ["raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx"]
tags: [platform, architecture, ming-hwee-os]
---

# Ming Hwee OS

## What it is
The business operating system that [[Ming-Hwee-Agency]] is building, of which the chatbot is one conversational interface. The core decision of the v13.0 review pack: "Proceed with conversational AI, but do not let the chatbot become the master operating system." (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §1 · 2026-09-01)

This reframe exists to protect the agency from channel lock-in, vendor lock-in, and fragmented data. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §2 · 2026-09-01)

## Six-layer architecture
Layered so any channel talks to the same backend, rather than each assistant becoming a separate product with separate logic. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §5 · 2026-09-01)

| Layer | Purpose | Examples |
|---|---|---|
| 1. Channels | Where users interact | WhatsApp, website chat, Employer Portal, Helper Portal, Sales Consultant PWA |
| 2. Conversation Gateway | Receives, validates, routes | [[Respond.io]], webhook, HMAC, idempotency, rate limiting |
| 3. Conversation Orchestrator | Identity, role, state, intent, next safe action | Session state, journey state, [[Human-handoff]] |
| 4. Approved Tools | The only way AI reads or writes business data | create_lead, create_support_case, get_match_summary |
| 5. Ming Hwee OS Core | Single source of truth and workflow engines | [[Supabase]], Pipeline Engine, Matching Engine, Knowledge Engine |
| 6. Governance | Safety, privacy, audit, improvement | Permissions, audit logs, content approvals, QA tests |

**Architecture principle:** "The AI never directly accesses the database. The AI calls approved tools." Each tool checks role, permission, channel, case state and approval requirements before acting. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §5 · 2026-09-01)

## Channel boundaries
Each channel has an explicit do-not-use-for. See [[Sensitive-data-boundary]] for the data-type view of the same rule. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §6 · 2026-09-01)

| Channel | Best use | Do not use for |
|---|---|---|
| Public WhatsApp | Lead capture, FAQs, booking, reminders, support intake | Sensitive MOM intake, NRIC/FIN, income data, final legal confirmations |
| Website Visual Journey | Structured lead capture and employer requirements | Post-selection MOM compliance data |
| Employer Portal | Secure MOM intake, documents, payment, e-signing | Casual public browsing |
| Sales Consultant PWA | Lead ownership, calls, matching, pipeline, handover | Admin-only back-office processing |
| Admin Portal | Document verification, MOM processing, insurance, bond, logistics | Sales scripts or public education |
| Helper Portal | Profile, documents, Academy, support, training | Employer-sensitive details or internal staff notes |

## Shared data model
The chatbot vendor's proposed nine production tables were rejected as insufficient. The shared schema spans nine entity groups: identity and access; sales and cases; employer and helper data; documents and signing; payments and finance; workflow and productivity; support and risk; knowledge and Academy; and governance. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §7 · 2026-09-01)

**Non-negotiable:** "There must not be a separate chatbot database that later needs to be reconciled." WhatsApp, website, consultant and service-request leads all write into the same lead/case structure. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §7 · 2026-09-01)

## Integration notes
- Ten tool families are defined with per-family approval guardrails; high-impact actions require staff approval rather than AI judgement. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §8 · 2026-09-01)
- The Matching Engine is deterministic and replaces the vendor's [[Manatal]] dependency — see [[Candidate-employer-matching]]. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §11 · 2026-09-01)
- The Knowledge Engine is the approved-content layer with visibility controls and governance, replacing an FAQ cache. Its relationship to the RAG corpus described in the vendor brief is not stated anywhere. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §2 · 2026-09-01)

## Known issues / conflicts
The v13.0 pack is explicitly "not a signed commercial contract," and its commercial and data-protection clauses still require legal review before signature. Everything on this page is therefore direction, not contracted scope. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §Document Control · 2026-09-01)

## Projects using this
- Ming Hwee Assistant chatbot — the conversational AI layer described throughout this wiki

## Related
[[Ming-Hwee-Agency]] · [[Respond.io]] · [[Supabase]] · [[Sensitive-data-boundary]] · [[Candidate-employer-matching]] · [[Human-handoff]] · [[vendor-scope-realignment]]
