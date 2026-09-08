---
type: concept
title: Service Catalogue
created: 2026-09-08
updated: 2026-09-08
review_by: 2027-03-08
status: draft
confidence: high
sensitivity: client-confidential
sources: [raw/minghwee-services-knowledge-base-v1.md]
tags: [services, routing, process, chartboard, mdw]
---

# Service Catalogue

## Definition
The seven core services [[Ming-Hwee-Agency]] delivers for Singapore FDW placement, and the rule that decides how each is run. New Hiring is the "deep flow" — the full end-to-end recruitment. The other six are "ticket-capture": collect the required details, raise a ticket, and route to sales/admin, reusing building blocks from the deep flow (e-authorisation, MOM submission, insurance & bond, arrival). (src: raw/minghwee-services-knowledge-base-v1.md §Two ways a service runs · 2026-09-08)

## Why it matters here
This is the routing layer for the whole engagement. Getting the service classification right decides which flow runs, which forms are prepared, whether an embassy step exists, and what timeline and fee to quote. Misclassifying a transfer as a new hire — the one error the source calls out explicitly — sends a helper who is already in Singapore through overseas recruitment. See [[Helper-Transfer]].

## The seven services
(src: raw/minghwee-services-knowledge-base-v1.md §Services at a Glance · 2026-09-08)

| # | Service | Applies when | Helper in SG? | Embassy? | Indicative time | Fee (from) |
|---|---|---|---|---|---|---|
| 1 | [[New-Hiring]] | First-time overseas hire; no existing helper | No | Yes | 4–6 weeks | Package |
| 2 | [[Direct-Hiring]] | Employer already has a specific candidate | Transfer: yes / Overseas: no | Overseas only | 2–3 wk (transfer) · 4–6 wk (overseas) | Lower than full |
| 3 | [[Work-Permit-Renewal]] | Existing helper, WP expiring | Yes | No | 1 wk (~3 days actual) | $695 |
| 4 | [[Passport-Renewal]] | Helper's passport expiring | Yes | Yes (PH) | PH: 2 months ahead · Indo: check runner | PH $450 · Indo $450 |
| 5 | [[Home-Leave]] | Helper returning home between contracts | Yes | Yes (PH) | PH: 4 wk · Indo: 2 wk | PH $400 · Indo $250 |
| 6 | [[Replacement]] | Swap current helper for a different one | New one: no (overseas) | Yes | ~4–6 weeks | Replacement fee |
| 7 | [[Helper-Transfer]] | Existing helper moves to a new employer, stays in SG | Yes | No | 1–2 weeks | Transfer fee |

Fees shown are Ming Hwee **service** fees from the source document, not government charges, and are volatile — see Gotchas.

## Deep flow vs ticket-capture
- **Deep flow** — [[New-Hiring]] only. Sourcing, matching, MOM submission, embassy, arrival and handover, run by an FCC (sourcing/matching/advisory) with a CC (documents/MOM/logistics) and an OP (source-country agency). (src: raw/minghwee-services-knowledge-base-v1.md §Two ways a service runs; §1. New Hiring · 2026-09-08)
- **Ticket-capture** — the other six. Capture the required fields, raise a service-specific ticket, hand to sales/admin. [[Direct-Hiring]], [[Replacement]] and [[Helper-Transfer]] then run a recruitment/processing flow; [[Work-Permit-Renewal]], [[Passport-Renewal]] and [[Home-Leave]] are shorter administrative flows. (src: raw/minghwee-services-knowledge-base-v1.md §Two ways a service runs · 2026-09-08)

> [!inference] Not stated in this source
> The ticket-capture pattern here is the human-side counterpart of the chatbot's ticket-capture and [[Human-handoff]] design. This operational document feeds those flows but does not itself reference the chatbot. Unverified.

## Common building blocks
Shared across services, in varying combinations: e-authorisation (Singpass); MOM FDW e-Service submission ($35); IPA; security bond $5,000 (insured); medical insurance min $15,000/yr; personal accident insurance min $60,000/yr; medical exam; SIP (helper); EOP (first-time employers). (src: raw/minghwee-services-knowledge-base-v1.md §Services at a Glance · 2026-09-08)

These regulatory values must be served from [[Ming-Hwee-Portal-API]] at runtime, not quoted from this document — see [[Dynamic-data-architecture]] and [[Ministry-of-Manpower]].

## Roles
| Code | Role | Responsibility | Source |
|---|---|---|---|
| FCC | Family Care Consultant | Sales/recruiter — client-facing, matching, advisory | (src: …-v1.md §Key parties · 2026-09-08) |
| CC | Care Coordinator | Admin — documents, MOM submission, scheduling, logistics | (src: …-v1.md §Key parties · 2026-09-08) |
| OP | Overseas Partner / Partnering Agent | Source-country agency | (src: …-v1.md §Key parties · 2026-09-08) |

## Gotchas
- Every fee and figure on this page is volatile per AGENTS.md §0.2 and must be verified against the portal/MOM before quoting. Fees here are Ming Hwee service fees and do not clearly state whether government or embassy charges are included.
- The $15,000/yr medical insurance minimum stated here conflicts with the SGD 60,000 minimum (since 1 July 2023) recorded on [[Ministry-of-Manpower]] — do not quote either without verification.
- SIP timing is stated inconsistently across the corpus (3 working days of arrival vs a 7-day window). Confirm the MOM rule before building a deadline on it.
- "Transfer" language always means [[Helper-Transfer]], never [[New-Hiring]] — the source makes this a hard rule.

## Related
[[Ming-Hwee-Agency]] · [[New-Hiring]] · [[Direct-Hiring]] · [[Work-Permit-Renewal]] · [[Passport-Renewal]] · [[Home-Leave]] · [[Replacement]] · [[Helper-Transfer]] · [[Forms-and-documents-register]] · [[Ministry-of-Manpower]] · [[Employer-eligibility-screening]]

## Open questions
- Are the service fees current, and do they include government/embassy charges and insurance?
- Which SIP window is correct — 3 working days or 7 days?
- Are Myanmar passport renewal and home leave in scope? Only PH and Indonesia are documented for those.
