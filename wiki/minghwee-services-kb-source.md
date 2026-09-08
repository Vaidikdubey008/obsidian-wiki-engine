---
type: source
title: MingHwee Services Knowledge Base v1.0
created: 2026-09-08
updated: 2026-09-08
review_by: 2026-12-07
status: draft
confidence: high
sensitivity: client-confidential
sources: [raw/minghwee-services-knowledge-base-v1.md]
source_hash: 9ec2b3f6a2a3923f
retrieved: 2026-09-08
author: Growwstacks (Version 1.0)
tags: [services, process, forms, documents, chartboard, mdw, mom, fees]
---

# MingHwee Services Knowledge Base v1.0

## What this is
A Growwstacks-authored operational playbook for how [[Ming-Hwee-Agency]] delivers its seven core FDW services in Singapore: the ordered steps, every document required, who signs each form, MOM touch-points, indicative timelines and fees. It is written to feed the "service chartboard" and to onboard sales (Family Care Consultant, FCC) and admin (Care Coordinator, CC) staff. Each service is presented as a Quick Reference card followed by a Full Process, with nationality variations for the Philippines, Indonesia and Myanmar. (src: raw/minghwee-services-knowledge-base-v1.md §About This Knowledge Base · 2026-09-08)

It is a committed markdown extraction of the original `MingHwee_Services_Knowledge_Base.docx`; the two-column document-checklist tables were compacted to single rows for Obsidian rendering, content preserved.

## Key claims
- Ming Hwee runs seven core services: New Hiring, Direct Hiring, Work Permit Renewal (Enable), Passport Renewal (Enable), Home Leave, Replacement and Helper Transfer. (src: raw/minghwee-services-knowledge-base-v1.md §Services at a Glance · 2026-09-08)
- Services run in one of two modes: New Hiring is the "deep flow" (full end-to-end recruitment); the other six are "ticket-capture" — capture details, raise a ticket, route to sales/admin — reusing building blocks from the deep flow. (src: raw/minghwee-services-knowledge-base-v1.md §Two ways a service runs · 2026-09-08)
- Common building blocks across services: e-authorisation via Singpass, MOM FDW e-Service submission ($35), IPA, security bond $5,000 (insured), medical insurance min $15,000/yr, personal accident insurance min $60,000/yr, medical exam, SIP (helper) and EOP (first-time employers). (src: raw/minghwee-services-knowledge-base-v1.md §Services at a Glance · 2026-09-08)
- New Hiring runs in five phases: enquiry/matching/confirmation (FCC-led), MOM application & IPA (CC-led, strictly sequential), embassy & medical (OP-led, CC-tracked), insurance/bond/travel/arrival, and onboarding/follow-up; timeline 4–6 weeks. (src: raw/minghwee-services-knowledge-base-v1.md §1. New Hiring · 2026-09-08)
- The New Hiring MOM phase is marked SEQUENTIAL — CRITICAL: no step proceeds until the previous one is complete, and the FDW e-Service form is nine pages. (src: raw/minghwee-services-knowledge-base-v1.md §1. New Hiring · 2026-09-08)
- Direct Hiring mirrors New Hiring administratively but with no sourcing, matching or interviews; timeline 2–3 weeks (transfer) or 4–6 weeks (overseas). (src: raw/minghwee-services-knowledge-base-v1.md §2. Direct Hiring · 2026-09-08)
- Work Permit Renewal fee is quoted at $695; timeline 1 week quoted / ~3 days actual; MOM issues a Renewal Notification ~8 weeks before expiry and it is essential to apply; the e-authorisation link is valid 1 week, then a 2-week window to complete. (src: raw/minghwee-services-knowledge-base-v1.md §3. Work Permit Renewal · 2026-09-08)
- Passport Renewal is handled through the home-country embassy; PH $450 (~2 months ahead), Indo $450 (check runner for appointment dates). (src: raw/minghwee-services-knowledge-base-v1.md §4. Passport Renewal · 2026-09-08)
- Home Leave includes an automatic levy waiver for the leave period and a deferred 6-monthly medical; PH $400 / 4 weeks (urgent +$40), Indo $250 / 2 weeks; embassy endorsement typically ~10 working days. (src: raw/minghwee-services-knowledge-base-v1.md §5. Home Leave · 2026-09-08)
- Replacement mirrors New Hiring for the incoming candidate but the employer signs a Replacement form and a Replacement Services & Fees form instead of the full new-hire fee schedule. (src: raw/minghwee-services-knowledge-base-v1.md §6. Replacement · 2026-09-08)
- Helper Transfer moves an existing helper on a valid WP to a new employer with no embassy or travel step; timeline 1–2 weeks; the document carries a hard CLASSIFICATION RULE that any mention of "transfer" / "change employer" / an existing WP means TRANSFER, never New Hiring. (src: raw/minghwee-services-knowledge-base-v1.md §7. Helper Transfer · 2026-09-08)
- Appendix A is a master register of every form across the seven services, each with who signs it and where it is used, and closes with the MOM record-retention list under EA licence conditions. (src: raw/minghwee-services-knowledge-base-v1.md §Appendix A · 2026-09-08)

> [!inference] Not stated in any source
> This document is operational (how staff run each service) rather than chatbot-facing. It describes the human FCC/CC workflow the chatbot's ticket-capture flows are meant to feed. It maps closely onto the ticket-capture and human-handoff design in the chatbot corpus but does not itself reference the chatbot, guardrails or the portal. The relationship is implied by shared vocabulary (ticket-capture, e-authorisation, eligibility), not stated. Unverified.

## Pages updated by this source
- [[Service-catalogue]] — created: the seven services, routing table, deep-flow vs ticket-capture
- [[New-Hiring]] — created: the five-phase deep flow
- [[Direct-Hiring]] — created
- [[Work-Permit-Renewal]] — created
- [[Passport-Renewal]] — created
- [[Home-Leave]] — created
- [[Replacement]] — created
- [[Helper-Transfer]] — created
- [[Forms-and-documents-register]] — created: Appendix A master register + MOM retention list
- [[Ming-Hwee-Agency]] — added the services this agency actually delivers, and a link to the catalogue
- [[Employer-eligibility-screening]] — the Transfer flow requires a fresh new-employer eligibility check; cross-linked
- [[Ministry-of-Manpower]] — new independent statements of bond, insurance, levy-waiver and $35 fee; conflict opened on the insurance minimum

## Open questions this source raises
- Insurance minimum: this document states medical insurance min $15,000/yr, but the vendor brief records the medical insurance minimum as SGD 60,000 since 1 July 2023. Which is current? (Conflict opened on [[Ministry-of-Manpower]].)
- The $695 renewal fee, $450 passport fees and $400/$250 home-leave fees are Ming Hwee service fees, not government fees. Are they current, and do they include or exclude the government/embassy charges and insurance?
- The document says SIP must be registered "within the required window" (New Hiring) but "within the required 7-day window" (Direct Hiring), while other corpus material says SIP is within 3 working days of arrival. Which window governs?
- Are Myanmar passport renewal and home leave out of scope, or simply not documented? Only PH and Indonesia appear for those two services.
- Does the "AI-assisted matching" in New Hiring Phase 1 refer to the [[Candidate-employer-matching]] Matching Engine, or a separate tool?

## Conflicts introduced
- Medical insurance minimum: $15,000/yr here vs SGD 60,000 (since 1 Jul 2023) in the vendor brief. See conflict block on [[Ministry-of-Manpower]].
- SIP registration window: "3 working days of arrival" (corpus) vs "7-day window" (this document, Direct Hiring). See [[Service-catalogue]] open questions; not yet escalated to a formal block pending confirmation of which is the MOM rule.
