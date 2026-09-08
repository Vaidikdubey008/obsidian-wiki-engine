---
type: concept
title: Sensitive Data Boundary
created: 2026-09-01
updated: 2026-09-01
review_by: 2026-12-01
status: stable
confidence: high
sensitivity: client-confidential
sources: ["raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx", raw/01-chatbot-identity-guardrails.md, "raw/20250819 - MOM-EA-licence-conditions (1).docx", raw/START-HERE-VENDOR-BRIEF.md]
tags: [pdpa, privacy, data-protection, channels]
---

# Sensitive Data Boundary

## Definition
The line between what may be collected over public WhatsApp and what must be collected inside the secure Employer Portal. Described as "one of the most important product corrections" in the v13.0 review. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §9 · 2026-09-01)

## Why it matters here
The default chatbot instinct is to collect everything conversationally, because that is the product's whole appeal. For NRIC numbers, payslips and signed MOM forms that instinct creates PDPA, security and trust exposure — and the licence conditions add a disclosure duty on top.

## The boundary
(src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §9 · 2026-09-01)

| Data type | Allowed in WhatsApp? | Correct destination |
|---|---|---|
| Name, contact number, email, service intent | Yes | Lead record in Ming Hwee OS |
| Household needs, children/elderly needs, timeline, nationality preference | Yes | Employer requirements and matching intake |
| General budget range | Yes, as a range or "not sure" | Lead qualification |
| NRIC / FIN, date of birth, passport number | **No**, except staff-assisted exceptional case | Secure Employer Portal MOM intake |
| Income documents, tax assessment, payslips | **No** | Secure Employer Portal document upload |
| Signed declarations and MOM forms | **No** | Employer Portal / e-signing system |
| Payment amount and invoice status | Only from the approved payment system | Payment engine / accounting integration |
| Complaint or support description | Yes | Support case with severity and audit trail |
| Emergency / safety red flags | Yes, but escalate immediately | Red-flag workflow and [[Human-handoff]] |

**Sequencing rule:** sensitive MOM data is collected only after the employer has selected a helper, made the required payment or deposit, and entered the secure Employer Portal journey. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §9 · 2026-09-01)

## The guardrail view
Guardrail 10 states the same rule from the bot's side: it never asks for NRIC/FIN, passport numbers, bank details, card information, or full home address — general area is acceptable for context. When such data is needed, it routes to secure channels. (src: raw/01-chatbot-identity-guardrails.md §1.4 · 2026-09-01)

Acceptance criterion: PII redaction must ensure NRIC, FIN, passport and card numbers are **never stored** from chat. Note that this is stronger than "never asked" — a user may volunteer them unprompted, and the redaction must still hold. (src: raw/START-HERE-VENDOR-BRIEF.md §8 · 2026-09-01)

## Regulatory basis
- Client information must not be divulged without written consent, except where required for investigations under any law or by the Commissioner. (src: raw/20250819 - MOM-EA-licence-conditions (1).docx §Condition 5(a) · 2026-09-01)
- FDW information and photographs must not be publicly disclosed on any platform; restricted-access delivery to a specifically requesting employer is the exception. See [[Candidate-employer-matching]]. (src: raw/20250819 - MOM-EA-licence-conditions (1).docx §Condition 17 · 2026-09-01)
- Work pass application documents must be retained for a minimum of 3 years; post-placement check records for 2 years. (src: raw/20250819 - MOM-EA-licence-conditions (1).docx §Condition 5(c), §Condition 19B · 2026-09-01)

Guardrail 6 extends the boundary to Ming Hwee's own information: no runner or transport company names, no overseas partner names, no insurance portal credentials, no internal system URLs, and no named staff. (src: raw/01-chatbot-identity-guardrails.md §1.4 · 2026-09-01)

## Gotchas
- A helper in distress may send exactly the data the bot must not store — a passport photo, an address — as evidence. The redaction requirement applies regardless of why it arrived, and the crisis path must not fail because of it. Nothing in the corpus addresses this interaction.
- [[Respond.io]] supports uploads to 20MB, so the channel will happily accept a payslip PDF. The boundary is a build decision, not a platform limitation. (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §OCR · 2026-09-01)
- The document OCR pipeline (WF-10) processes NRIC images and payslips — which by this boundary should never have arrived over WhatsApp. WF-10's input channel needs to be the portal, not the chat. See [[Employer-eligibility-screening]].
- No data-residency or retention policy for [[Supabase]] appears anywhere in this corpus, despite the schema including retention records.

## Related
[[Chatbot-guardrails]] · [[Ming-Hwee-OS]] · [[Employer-eligibility-screening]] · [[Candidate-employer-matching]] · [[EA-licence-compliance]] · [[Supabase]] · [[Respond.io]] · [[Human-handoff]]

## Open questions
- What happens when a user volunteers prohibited data mid-crisis?
- Where does WF-10 actually receive documents from, given this boundary?
- What is the data residency and retention policy?
