---
type: concept
title: Employer Eligibility Screening
created: 2026-09-01
updated: 2026-09-08
review_by: 2026-12-01
status: contested
confidence: medium
sensitivity: client-confidential
sources: ["raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx", "raw/comprehensive-hr-agency-knowledge-base (1).docx", "raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx", raw/minghwee-services-knowledge-base-v1.md]
tags: [eligibility, mom, core-logic, workflows]
---

# Employer Eligibility Screening

## Definition
The seven-criteria MOM check that determines whether a prospective employer may hire a migrant domestic worker. The clarification review calls it "the core business logic of Ming Hwee" and flags its absence from the vendor specification as a critical blocker. (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §4 · 2026-09-01)

## Why it matters here
Every downstream flow depends on it. An ineligible employer who is nurtured, matched and booked has consumed consultant time and will fail at MOM submission. Eligibility also carries 40% of the lead score — see [[Lead-qualification]].

It is not only a new-hire gate. A [[Helper-Transfer]] runs a fresh eligibility check against the **new** employer from scratch — a transfer is not exempt because the helper is already in Singapore. The services knowledge base lists "new employer eligibility" as a mandatory step in the transfer flow. (src: raw/minghwee-services-knowledge-base-v1.md §7. Helper Transfer · 2026-09-08)

## The seven criteria
(src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §4 · 2026-09-01)

1. Age
2. Bankrupt status
3. Mental capacity
4. Income
5. Care need
6. Accommodation
7. EOP completion

The criteria are named but **no thresholds are given** in that document. Values appear only in the older knowledge base:

| Criterion | Value as recorded | Source |
|---|---|---|
| Age | 21 or older | (src: raw/comprehensive-hr-agency-knowledge-base (1).docx §4.1) |
| Legal status | Citizen, PR, or eligible work pass holder | (src: raw/comprehensive-hr-agency-knowledge-base (1).docx §4.1) |
| Income (EP holders) | Salary at or above SGD 12,000 | (src: raw/comprehensive-hr-agency-knowledge-base (1).docx §4.1) |
| Record | No bankruptcy or serious criminal convictions | (src: raw/comprehensive-hr-agency-knowledge-base (1).docx §4.1) |
| Accommodation | Adequate for a live-in worker | (src: raw/comprehensive-hr-agency-knowledge-base (1).docx §4.1) |

These are volatile regulatory thresholds and must be served from [[Ming-Hwee-Portal-API]], not quoted from the corpus — see [[Dynamic-data-architecture]]. The `/api/v1/regulatory` endpoint is specified to carry age and concession thresholds for exactly this reason.

## MDW-side eligibility
Female only; aged 23 to under 50 at first application, relaxable for experienced workers; minimum 8 years formal education; medical fitness; clean criminal record; negative pregnancy test. Source countries listed are the Philippines, Indonesia and Myanmar, with Bangladesh, India and Sri Lanka named as other approved countries. (src: raw/comprehensive-hr-agency-knowledge-base (1).docx §4.2 · 2026-09-01)

## Implementation
Four new workflows were mandated to carry eligibility, all previously absent. See [[Workflow-inventory]]. (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §4 · 2026-09-01)

| Workflow | Trigger | Actions |
|---|---|---|
| WF-09 Eligibility Calculator | After the chatbot collects data | Run the 7-criteria check, determine outcome, update Airtable |
| WF-10 Document Upload | File received via Respond.io | Route to OCR, extract data |
| WF-11 Resubmission | Airtable field updated | Re-run the check, notify sales if ELIGIBLE |
| WF-12 Email Dispatcher | Outcome determined | Select SendGrid template, personalise, send |

Eligibility is confirmed as in scope for the chatbot: "we are taking elegibility unders chatbot only." (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §Q2 · 2026-09-01)

Sensitive intake documents — income documents, payslips, NRIC — must **not** be collected over public WhatsApp. They route to the secure Employer Portal. See [[Sensitive-data-boundary]]. This constrains how much of the eligibility check the chatbot can actually complete in-channel. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §9 · 2026-09-01)

> [!conflict] OPEN — OCR platform for document processing
> - **Claim A:** WF-10 must use **Google Document AI** for OCR, called from an [[n8n]] HTTP Request node. (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §OCR · 2026-09-01)
> - **Claim B:** "OCR PLatform will be google gemini." (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §Q9 · 2026-09-01)
> - **Assessment:** Both statements are in the same document, and they name different products with different interfaces, pricing and accuracy characteristics for structured document extraction. Claim A is the reviewer's requirement; Claim B is Ming Hwee's answer, and Ming Hwee's comments override the reviewer elsewhere in this document. But a general multimodal model and a purpose-built document-extraction service are not interchangeable for NRIC and payslip parsing, and it is not clear the distinction was intended rather than a loose reference to "the Google one."
> - **Next step:** Confirm with Ming Hwee which product, and record the decision. This has cost and accuracy consequences for every eligibility submission.
> - **Status:** open

## Gotchas
- The seven criteria are named without thresholds anywhere in this corpus. A build cannot proceed from the criteria list alone.
- Bankruptcy and mental capacity are not self-declarable in any reliable way, and no document explains how they are verified.
- The employer eligibility figures in the knowledge base carry a Sep 2025 date with 2024-labelled neighbours — treat every number on this page as needing portal verification before use.
- A transfer re-runs eligibility on the new employer; do not carry the previous employer's status forward. See [[Helper-Transfer]].

## Related
[[Workflow-inventory]] · [[Lead-qualification]] · [[Ming-Hwee-Portal-API]] · [[Dynamic-data-architecture]] · [[Sensitive-data-boundary]] · [[n8n]] · [[Ministry-of-Manpower]] · [[Candidate-employer-matching]] · [[Helper-Transfer]] · [[Service-catalogue]]

## Open questions
- What are the actual thresholds for each of the seven criteria?
- How are bankruptcy status and mental capacity verified?
- How much of the check can complete over WhatsApp before the portal handoff is required?
