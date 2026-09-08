---
type: entity
title: Respond.io
created: 2026-09-01
updated: 2026-09-01
review_by: 2026-12-01
status: draft
confidence: high
sensitivity: internal
sources: ["raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx", "raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx"]
tags: [platform, messaging, gateway, whatsapp]
---

# Respond.io

## What it is
The conversation gateway and unified messaging workspace for the chatbot. It handles WhatsApp entry, agent assignment, and human handoff. Ming Hwee confirmed the choice directly: "We planned Respond.IO." (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §3, §Q3 · 2026-09-01)

It sits at Layer 2 of the [[Ming-Hwee-OS]] architecture — the gateway, explicitly "not master system." (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §3, §5 · 2026-09-01)

## What it replaced
Respond.io replaces [[XCally]] for all communication functions. (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §3 · 2026-09-01)

| Function | Was (XCally) | Now (Respond.io) |
|---|---|---|
| WF-06 routing target | XCally agent queue | Respond.io agent queue, native assignment rules |
| Handoff mechanism | Tag and route to XCally | Workflow: assign to team/agent plus lifecycle update |
| Context packet delivery | Attached to XCally ticket | Visible in the Respond.io unified thread |
| Agent availability check | XCally queue status | Respond.io agent online/offline status API |

## Limits and quotas
| Limit | Value | Source | Verified |
|---|---|---|---|
| File upload size | 20MB | (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §OCR) | 2026-09-01 |
| Email broadcasting | Not supported — requires SendGrid via [[n8n]] | (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §6) | 2026-09-01 |

## Integration notes
- Retained from the vendor proposal as the channel gateway, but must write to the shared Ming Hwee OS backend rather than its own store. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §3 · 2026-09-01)
- HMAC validation and idempotency on inbound webhooks are marked "mandatory non-negotiable", and the webhook must return 200 quickly with business logic kept out of the endpoint to prevent duplicate processing from gateway retries. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §3 · 2026-09-01)
- Public WhatsApp through this gateway must not carry NRIC/FIN, passport numbers, income documents or signed MOM forms — see [[Sensitive-data-boundary]]. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §9 · 2026-09-01)
- An earlier reviewer proposal to let Respond.io answer simple FAQs directly (under 5 seconds) while a custom pipeline handled complex logic was not taken up; Ming Hwee answered with a flat 15-second latency expectation. (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §Q4 · 2026-09-01)

## Known issues / conflicts
Respond.io's inability to broadcast email is what pulls SendGrid and [[n8n]] into the stack, adding a second delivery path that must be kept consistent with in-thread messaging.

## Projects using this
- Ming Hwee Assistant chatbot — WhatsApp gateway and [[Human-handoff]] target

## Related
[[Ming-Hwee-OS]] · [[XCally]] · [[n8n]] · [[Human-handoff]] · [[Workflow-inventory]] · [[Sensitive-data-boundary]]
