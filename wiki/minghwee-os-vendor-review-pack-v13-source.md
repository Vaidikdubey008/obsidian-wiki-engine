---
type: source
title: Ming Hwee OS — Conversational AI Integration & Chatbot Vendor Review Pack v13.0
created: 2026-09-01
updated: 2026-09-01
review_by: 2026-11-30
status: stable
confidence: high
sensitivity: client-confidential
sources: ["raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx"]
source_hash: 52b318682af382bf
retrieved: 2026-09-01
author: Ming Hwee OS product planning (June 2026)
tags: [ming-hwee-os, architecture, vendor-review, data-boundary, strategy]
---

# Ming Hwee OS — Vendor Review Pack v13.0

## What this is
The June 2026 strategic reframe of the chatbot project. It repositions the chatbot as one conversational layer inside a larger platform called Ming Hwee OS, reviews the vendor proposal component by component into keep/change tables, and sets the architecture, database, tool, channel and data-boundary rules the vendor must build to. It is the most recent architecture document in the corpus and supersedes much of the original proposal.

## Key claims
- Core decision: "Proceed with conversational AI, but do not let the chatbot become the master operating system." Ming Hwee OS is the operating system; WhatsApp is one channel into it. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §1 · 2026-09-01)
- The chatbot must not maintain its own isolated operational database; all lead, case, employer, helper, document, task, payment, support and workflow data lives in the shared Ming Hwee OS database. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §1.1 · 2026-09-01)
- The document status is "vendor review and implementation alignment document. Not a signed commercial contract," and commercial and data-protection clauses still require legal review before signature. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §Document Control · 2026-09-01)
- Eight vendor components are explicitly kept: the Respond.io gateway, the FastAPI webhook, HMAC validation and idempotency, fast 200 responses, Redis and Celery queues, the write-every-answer-before-asking-the-next principle, tool-calling architecture, human tone rules, parallel run, and CSAT/lifecycle reminders. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §3 · 2026-09-01)
- HMAC validation and idempotency are marked "mandatory non-negotiable." (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §3 · 2026-09-01)
- Eight items must change before acceptance, including the operating-system framing, the nine-table database scope, the Manatal dependency, the Breeze Doc e-signing assumption, sensitive documents over WhatsApp, the RAG/Knowledge Base exclusion, overly broad AI actions, and the silence-equals-acceptance clause. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §4 · 2026-09-01)
- "Silence equals acceptance" must be replaced by explicit written acceptance, because otherwise Ming Hwee may unintentionally accept incomplete deliverables. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §4 · 2026-09-01)
- The revised architecture is six layers: channels, conversation gateway, conversation orchestrator, approved tools, Ming Hwee OS core, and governance. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §5 · 2026-09-01)
- Architecture principle: "The AI never directly accesses the database. The AI calls approved tools." Each tool checks role, permission, channel, case state and approval requirements before acting. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §5 · 2026-09-01)
- Seven channels are defined with explicit do-not-use-for boundaries, spanning public WhatsApp, website visual journey, Employer Portal, Sales Consultant PWA, Admin Portal, Helper Portal and website assistant. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §6 · 2026-09-01)
- The nine-table chatbot schema is rejected in favour of a shared schema spanning nine entity groups from identity and access through to governance and audit. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §7 · 2026-09-01)
- Non-negotiable: "There must not be a separate chatbot database that later needs to be reconciled." (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §7 · 2026-09-01)
- Ten tool families are defined with per-family approval guardrails, covering contact, lead, journey, matching, appointment, payment, document, support, knowledge and lifecycle tools. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §8 · 2026-09-01)
- The sensitive data boundary permits name, contact, service intent, household needs and general budget range over public WhatsApp, and excludes NRIC/FIN, date of birth, passport number, income documents, payslips, and signed MOM forms, which route to the secure Employer Portal. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §9 · 2026-09-01)
- Sensitive MOM data is collected only after the employer has selected a helper and made the required payment or deposit. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §9 · 2026-09-01)
- The agency-first support policy is to be embedded in the system prompt, covering normal employment issues, complaints, salary clarification, rest-day questions, transfer requests and non-emergency disputes, with the emergency exception kept separate. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §10 · 2026-09-01)
- For normal concerns the assistant must "not direct to external authorities by default." (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §10 · 2026-09-01)
- Matching: the AI may extract free-text requirements but must not assign candidate match scores. Scoring is deterministic in the Matching Engine, consultants see bands and reasons rather than a percentage, and no biodata may reach an employer without consultant approval. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §11 · 2026-09-01)
- Fairness rules for matching: salary is a negotiable flag rather than a rank penalty, and nationality and religion must not be scored as quality factors. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §11 · 2026-09-01)
- Multilingual support is accepted as excluded from MVP only, and must remain on the roadmap. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §4 · 2026-09-01)
- Knowledge Engine integration must be in the roadmap and preferably in an early controlled rollout, because excluding RAG risks AI answers drifting or relying on static prompt memory. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §4 · 2026-09-01)

## Pages updated by this source
- [[Ming-Hwee-OS]] — the platform, layers, channels and schema
- [[Sensitive-data-boundary]] — the full allowed/not-allowed table
- [[Agency-first-support]] — the system-prompt policy and behaviour table
- [[Candidate-employer-matching]] — deterministic scoring and fairness rules
- [[Manatal]] — replaced by the Matching Engine
- [[Respond.io]] — retained as gateway, not master system
- [[Supabase]] — the shared data store
- [[Human-handoff]] — approval gates on high-impact actions
- [[Chatbot-guardrails]] — the tools-not-database principle
- [[vendor-scope-realignment]] — the keep/change record

## Open questions this source raises
- Which e-sign provider will the swappable two-track approach actually use? Only the adapter pattern is specified.
- The pack references eight upstream documents (SOW, Sales Consultant App Brief, Matching Brief, Hiring Pipelines by Nationality, manual service workflows, Knowledge Engine Pack) that are not present in this corpus.
- How does the Ming Hwee OS Knowledge Engine relate to the RAG corpus described in the vendor brief? They may be the same thing under two names, or two systems.
- If multilingual is excluded from MVP, and the crisis protocols require five-language detection, is safeguarding exempt from that exclusion? Not stated.

## Conflicts introduced
- Replaces Manatal with the Ming Hwee OS Matching Engine, contradicting the March 2026 clarification. See conflict block on [[Candidate-employer-matching]].
- Rejects the nine-table chatbot-owned database proposed by the vendor. See conflict block on [[vendor-scope-realignment]].
- Its multilingual-excluded-from-MVP position sits against the crisis protocols' five-language requirement. See [[Multi-language-support]].
