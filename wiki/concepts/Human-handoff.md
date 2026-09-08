---
type: concept
title: Human Handoff
created: 2026-09-01
updated: 2026-09-01
review_by: 2026-12-01
status: draft
confidence: high
sensitivity: client-confidential
sources: [raw/START-HERE-VENDOR-BRIEF.md, raw/01-chatbot-identity-guardrails.md, "raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx", "raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx", "raw/Thomas (Proposal for AI-Powered Chatbot System) (1).docx"]
tags: [escalation, handoff, operations, kpi]
---

# Human Handoff

## Definition
The transition from assistant to a named human, with context. It is the terminal step of [[Agency-first-support]], the required outcome of [[Crisis-escalation]], and the fallback whenever the bot cannot or should not answer. (src: raw/01-chatbot-identity-guardrails.md §1.5 · 2026-09-01)

## Why it matters here
The handoff is where the system's promise is either kept or broken. The brief is blunt: "A system that emits a warm safety script in 8 seconds and then leaves someone waiting until Monday has failed, and every other KPI will still show green." (src: raw/START-HERE-VENDOR-BRIEF.md §7 · 2026-09-01)

## Triggers
| Trigger | Source |
|---|---|
| Any helper concern, after the concern is taken fully | (src: raw/01-chatbot-identity-guardrails.md §1.5) |
| Crisis classification — assault, confinement, threats, medical, self-harm | (src: raw/START-HERE-VENDOR-BRIEF.md §6) |
| Portal API unreachable and a fee or regulatory question is asked | (src: raw/01-chatbot-identity-guardrails.md §1.4) |
| Placement loan questions, until the figures are supplied | (src: raw/27-helper-rights-simple-english.md §27.1a) |
| AI fails to understand a request twice | (src: raw/Thomas (Proposal for AI-Powered Chatbot System) (1).docx §5) |
| User is angry or frustrated — acknowledge, summarise, offer handoff | (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §10) |
| High-impact action requiring staff approval | (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §1.1) |

## Mechanism
Routing goes through [[Respond.io]] using native assignment rules, with the context packet visible in the unified thread and agent availability read from the online/offline status API. This replaced the [[XCally]] queue design. (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §3 · 2026-09-01)

A structured handoff summary must be generated on **every** escalation. (src: raw/01-chatbot-identity-guardrails.md §1.3; raw/START-HERE-VENDOR-BRIEF.md §8 · 2026-09-01)

In crisis conversations the bot stays in the conversation until human handoff is acknowledged — it does not hand off and exit. (src: raw/START-HERE-VENDOR-BRIEF.md §8 · 2026-09-01)

## Time-to-human
The defining metric, measured from escalation trigger to the first message from a **named human**. Auto-acknowledgements do not stop the clock. Crisis under 15 minutes 24/7; urgent under 4h in-hours and under 12h out-of-hours; routine under 24h. Reported by hour of day and day of week. Full detail and the open conflict on the crisis target are on [[Crisis-escalation]]. (src: raw/START-HERE-VENDOR-BRIEF.md §7 · 2026-09-01)

Instrumentation must be built **with** the bot in Phase 4, not retrofitted: "Retrofitting timing instrumentation is painful and it is the metric that matters most." (src: raw/START-HERE-VENDOR-BRIEF.md §3, §7 · 2026-09-01)

## Approval gates
The AI does not take high-impact actions on its own. Each tool family carries its own guardrail. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §8 · 2026-09-01)

- Only low-risk contact fields may be updated without staff review
- Candidates are not sent to employers without consultant approval
- Payment amounts are quoted only from an approved invoice record
- Refunds are never promised; a structured case is routed for approval
- Sensitive uploads go through the secure portal, not raw WhatsApp

## Gotchas
- **The out-of-hours rota does not exist.** Office hours are Mon–Fri 9:30–18:30 and Sat 10:30–16:30, and the system promises a distressed helper a human far faster than that. This is launch blocker #1: "Either staff it or change the promise — but do not ship the promise unstaffed." (src: raw/START-HERE-VENDOR-BRIEF.md §4 · 2026-09-01)
- Helper CSAT must be reported separately from employer CSAT, because "blended CSAT is dominated by employers and says nothing about helpers." (src: raw/START-HERE-VENDOR-BRIEF.md §7 · 2026-09-01)
- Guardrail 6 forbids naming Ming Hwee staff to users, while the metric depends on a *named* human responding. The reconciliation is not documented — see [[Chatbot-guardrails]].
- The emergency protocols specify multi-channel operator alerting (SMS, email, push, dashboard) but the operators and their rota are undefined. (src: raw/emergency-response-crisis-protocols (1).docx §Human Operator Alert System · 2026-09-01)

## Related
[[Crisis-escalation]] · [[Agency-first-support]] · [[Respond.io]] · [[XCally]] · [[Workflow-inventory]] · [[Chatbot-guardrails]] · [[launch-blockers]] · [[Lead-qualification]]

## Open questions
- Who is on the out-of-hours rota and what pages them?
- How does a "named human" satisfy Guardrail 6's prohibition on naming staff?
