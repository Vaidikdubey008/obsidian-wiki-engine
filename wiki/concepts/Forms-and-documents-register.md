---
type: concept
title: Forms and Documents Register
created: 2026-09-08
updated: 2026-09-08
review_by: 2027-03-08
status: draft
confidence: high
sensitivity: client-confidential
sources: [raw/minghwee-services-knowledge-base-v1.md]
tags: [forms, documents, register, retention, mom, compliance]
---

# Forms and Documents Register

## Definition
The master register of every form and document referenced across the seven services, each with who signs it and where it is used — the master checklist behind the service chartboard. Drawn from Appendix A of the services knowledge base. (src: raw/minghwee-services-knowledge-base-v1.md §Appendix A · 2026-09-08)

## Why it matters here
It is the single place that answers "who signs this, and for which service?" without re-reading every service page. It also carries the MOM record-retention list, which turns a missing signature or an un-retained agreement into an [[EA-licence-compliance]] exposure rather than a mere admin slip.

## Master register
(src: raw/minghwee-services-knowledge-base-v1.md §Appendix A · 2026-09-08)

| Form / Document | Signed by | Used in |
|---|---|---|
| Service Agreement (EA ↔ client) | Employer | [[New-Hiring]], [[Direct-Hiring]] |
| Service & Fee Schedule | Employer | [[New-Hiring]], [[Direct-Hiring]] |
| Agency Fee package form | Employer | [[New-Hiring]], [[Direct-Hiring]] |
| Authorisation Form (MOM work-pass transactions) | Employer (Singpass) | All except pure info requests |
| Employer Particulars form | Employer | [[New-Hiring]], [[Direct-Hiring]], [[Replacement]], [[Helper-Transfer]] |
| Worker's Biodata (last page) | Worker | [[New-Hiring]], [[Direct-Hiring]], [[Replacement]] |
| Job Offer Form | Maid & Employer | [[New-Hiring]], [[Direct-Hiring]], [[Replacement]], [[Helper-Transfer]] |
| Levy GIRO form | Employer | First-time employers ([[New-Hiring]] / [[Direct-Hiring]]) |
| Worker's Employment History | Worker | Workers with prior SG experience |
| Employment Contract (EC) | Employer & Maid | [[New-Hiring]], [[Direct-Hiring]], [[Helper-Transfer]] (fresh EC) |
| IPA form / declaration | Employer & Worker | All WP applications (upload before WP issuance) |
| Security Bond Transmission form (from MOM) | Agency → OP | Overseas hires (Myanmar / Indonesia) |
| Salary & Placement Fee Repayment Schedule | Worker & Employer | Handover pack |
| Rest-Day Agreement form | Worker & Employer | Handover pack |
| Safety Agreement form | Worker & Employer | Handover pack |
| Do's & Don'ts form | Worker | Handover pack |
| Orientation Checklist | Employer, Maid & EA staff | Post-arrival onboarding |
| Renewal Declaration form | Employer | [[Work-Permit-Renewal]] |
| Renewal Notice / Notification (from MOM) | — (MOM-issued) | [[Work-Permit-Renewal]] |
| Replacement form | Employer | [[Replacement]] |
| Replacement Services & Fees form | Employer | [[Replacement]] |
| Transfer agreement (cost-sharing) | Current & New Employer | [[Helper-Transfer]] |
| PH embassy pack: Contract, Undertaking, Annex A, OFW Info Sheet, Balik-Manggagawa / Home Leave OEC / Passport renewal form | Employer & Maid (original signature) | PH [[Home-Leave]] & [[Passport-Renewal]] (+ [[New-Hiring]] embassy) |
| Indonesia: Renewal of Employment Contract form / Home Leave / Passport form | Employer & Maid | Indonesia [[Home-Leave]], [[Passport-Renewal]], embassy |

## MOM record retention
Under EA licence conditions the agency must retain (where applicable): bio-data, Employment Contract, Employment History, MOM Authorisation Form, Indonesian Embassy Performance Bond notice, education/birth/family certificates, all payment & refund receipts, Rest-Day Agreement, Safety Agreement, Salary & Placement Fee Repayment Schedule, Service Agreement and Services & Fees Schedule. (src: raw/minghwee-services-knowledge-base-v1.md §Appendix A · 2026-09-08)

This obligation is the licence-conditions counterpart to the [[Helper-Transfer]] rule that the cost-sharing transfer agreement is retained for 1 year and furnished to MOM on request. See [[EA-licence-compliance]].

## Gotchas
- "Signed by" is specific and legally load-bearing — several forms need BOTH worker and employer, and the PH embassy pack needs ORIGINAL (wet) signatures, not e-signatures.
- The handover pack is four separate worker/employer-signed forms; missing one is a retention gap, not just an onboarding omission.
- The register lists forms, not the volatile figures inside them — fees, bond and insurance amounts still come from [[Ministry-of-Manpower]] / [[Ming-Hwee-Portal-API]].

## Related
[[Service-catalogue]] · [[New-Hiring]] · [[Direct-Hiring]] · [[Work-Permit-Renewal]] · [[Passport-Renewal]] · [[Home-Leave]] · [[Replacement]] · [[Helper-Transfer]] · [[EA-licence-compliance]] · [[Ministry-of-Manpower]] · [[Sensitive-data-boundary]]

## Open questions
- What is the retention period for each document class (the source gives 1 year only for the transfer agreement)?
- Which of these may be collected over WhatsApp vs the secure portal? See [[Sensitive-data-boundary]].
