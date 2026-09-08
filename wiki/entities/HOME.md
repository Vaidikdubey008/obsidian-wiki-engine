---
type: entity
title: HOME
created: 2026-09-01
updated: 2026-09-01
review_by: 2026-12-01
status: contested
confidence: medium
sensitivity: public
sources: ["raw/emergency-response-crisis-protocols (1).docx"]
tags: [ngo, crisis-support, shelter, external-referral]
---

# HOME

## What it is
The Humanitarian Organisation for Migration Economics, a Singapore NGO providing crisis support to migrant workers. It appears in the emergency protocols document as a primary crisis contact for helpers. (src: raw/emergency-response-crisis-protocols (1).docx §Crisis Intervention Hotlines · 2026-09-01)

## Contact and services
| Attribute | Value | Source |
|---|---|---|
| Number | +65 9787 3122 (WhatsApp available) | (src: raw/emergency-response-crisis-protocols (1).docx §Crisis Intervention Hotlines) |
| Availability | 24/7 | (src: raw/emergency-response-crisis-protocols (1).docx §Crisis Intervention Hotlines) |
| Languages | English, Indonesian, Filipino, Tamil, Hindi | (src: raw/emergency-response-crisis-protocols (1).docx §Crisis Intervention Hotlines) |
| Services | Crisis shelter, legal aid, emergency support | (src: raw/emergency-response-crisis-protocols (1).docx §Crisis Intervention Hotlines) |

HOME appears in the translated crisis scripts for Tagalog, Indonesian and Burmese, and in the physical-abuse test scenario's required contacts alongside police and MOM. (src: raw/emergency-response-crisis-protocols (1).docx §Language-Specific Emergency Responses, §Critical Path Testing · 2026-09-01)

## Known issues / conflicts
HOME is the sharpest instance of the corpus-wide routing disagreement. The emergency protocols hand a helper HOME's number directly; Modules 01 and 27 say the bot does not refer helpers to external welfare organisations for matters Ming Hwee handles, and the v13.0 pack says the assistant should "not direct to external authorities by default" for normal concerns. (src: raw/01-chatbot-identity-guardrails.md §1.5; raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §10 · 2026-09-01)

The full conflict, including where the two positions genuinely agree, is recorded on [[Agency-first-support]].

Note that HOME is **not** on the [[Safety-allowlist]], so under Guardrail 14 its number may not be hardcoded and would have to come from `/api/v1/partners` — which means a portal outage removes it. Whether that is intended is not stated in any source. (src: raw/01-chatbot-identity-guardrails.md §1.4 · 2026-09-01)

## Projects using this
- Ming Hwee Assistant chatbot — crisis contact in the emergency protocols, pending resolution of the routing conflict

## Related
[[Agency-first-support]] · [[Crisis-escalation]] · [[Safety-allowlist]] · [[Ministry-of-Manpower]] · [[Helper-rights]]
