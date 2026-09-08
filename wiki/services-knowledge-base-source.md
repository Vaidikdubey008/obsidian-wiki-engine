---
type: source
title: Services Knowledge Base (v1.0)
created: 2026-09-08
updated: 2026-09-08
review_by: 2026-12-07
status: draft
confidence: high
sensitivity: internal
sources: [raw/minghwee-services-knowledge-base.md]
source_hash: cff3a44963ea3627
retrieved: 2026-09-08
author: Growwstacks (MingHwee Services KB v1.0)
tags: [ming-hwee, service-delivery, mom, forms, fees, sop]
---

# Services Knowledge Base (v1.0)

## What this is
The operational single-source-of-truth for how Ming Hwee delivers its seven core FDW/MDW placement services in Singapore — ordered steps, the documents required, who signs each form, MOM touch-points, indicative timelines and fees. It is written to feed the service chartboard and to onboard sales (Family Care Consultant / FCC) and admin (Care Coordinator / CC) staff. (src: raw/minghwee-services-knowledge-base.md §About · 2026-09-08)

This is a **service-delivery** document, distinct from the chatbot-facing modules already in the wiki. It describes the human/agency workflow the bot's tickets hand off into, not the bot's own guardrails.

## Key claims
- Ming Hwee runs seven core services: New Hiring, Direct Hiring, Work Permit Renewal (Enable), Passport Renewal (Enable), Home Leave, Replacement, and Helper Transfer. (src: raw/minghwee-services-knowledge-base.md §Services at a Glance · 2026-09-08)
- Only New Hiring is a full end-to-end "deep flow" (source → match → MOM → embassy → arrival → handover). The other six are "ticket-capture" flows that gather details, raise a ticket and route to sales/admin, reusing building blocks from the deep flow. (src: raw/minghwee-services-knowledge-base.md §About · 2026-09-08)
- Common building blocks across services: e-authorisation via Singpass, MOM FDW e-Service submission ($35), IPA, a $5,000 security bond (insured), medical insurance min $15,000/yr, personal accident insurance min $60,000/yr, medical exam, SIP for the helper, and EOP for first-time employers. (src: raw/minghwee-services-knowledge-base.md §Services at a Glance · 2026-09-08)
- New Hiring, Direct Hiring, Replacement and (overseas) candidates route through a country-specific embassy step for the Philippines, Indonesia and Myanmar; Work Permit Renewal, Helper Transfer, and in-SG transfer candidates have no embassy step. (src: raw/minghwee-services-knowledge-base.md §1, §3, §7 · 2026-09-08)
- Stated fees: Work Permit Renewal $695; Passport Renewal PH $450 / Indo $450; Home Leave PH $400 (urgent +$40) / Indo $250. New Hiring, Direct Hiring, Replacement and Transfer are quoted as packages/agency fees rather than a fixed figure. (src: raw/minghwee-services-knowledge-base.md §Services at a Glance; §3; §4; §5 · 2026-09-08)
- The MOM FDW e-Service application is a 9-page form carrying a $35 fee; the IPA must be signed by both employer and worker and uploaded to MOM before the Work Permit is issued. (src: raw/minghwee-services-knowledge-base.md §1 Phase 2, Phase 4 · 2026-09-08)
- Work Permit Renewal has hard timing windows: MOM issues a Renewal Notification ~8 weeks before expiry; the e-authorisation link is valid 1 week only; once authorised there is a 2-week window to complete. (src: raw/minghwee-services-knowledge-base.md §3 · 2026-09-08)
- The Transfer service carries an explicit classification rule: "transfer" + maid/helper/employer, "change employer", or any mention of an existing helper / existing WP means TRANSFER, never New Hiring. (src: raw/minghwee-services-knowledge-base.md §7 · 2026-09-08)
- Appendix A is a master register of every form across the seven services, with who signs each and where it is used, plus the MOM document-retention list the agency must keep under EA licence conditions. (src: raw/minghwee-services-knowledge-base.md §Appendix A · 2026-09-08)
- The document itself carries a standing caveat: figures, fees and MOM timelines reflect current MingHwee project documents and must be re-confirmed against MOM rules and embassy availability before quoting a client. (src: raw/minghwee-services-knowledge-base.md §About NOTE · 2026-09-08)

## Pages updated / created by this source
- [[New-Hiring]] — created: the full deep-flow recruitment process
- [[Direct-Hiring]] — created: administrative-only hire of a client-sourced candidate
- [[Work-Permit-Renewal]] — created: renewing an existing helper's WP
- [[Passport-Renewal]] — created: home-country passport renewal via embassy
- [[Home-Leave]] — created: helper's return home between contracts
- [[Replacement]] — created: swapping the current helper for a different one
- [[Helper-Transfer]] — created: helper changes employer while staying in SG
- [[Forms-and-documents-register]] — created: master forms register + MOM retention list
- [[services-at-a-glance]] — created (analysis): one-screen routing across all seven services
- [[Employer-eligibility-screening]] — related: this source describes the income/EP documents the screening consumes
- [[Placement-loan]] — related: the placement fee (loan) collected at handover
- [[Ministry-of-Manpower]] — related: FDW e-Service, IPA, security bond, levy waiver touch-points

## Open questions this source raises
- Fees are stated for only four services ($695 renewal; PH/Indo passport and home-leave figures). New Hiring, Direct Hiring, Replacement and Transfer are "package"/"fee" with no figure — what are the actual amounts, and how do they reconcile with the [[Placement-loan]] figures still unfilled in Module 27?
- The document repeatedly flags that fees and MOM timelines change; none of these figures has been verified against the live MOM portal. Per AGENTS.md §0.2 they are volatile by default.
- The insurance and bond amounts ($5,000 bond; $15,000 medical; $60,000 PA) match the regulatory building blocks but are not cross-checked here against the MOM source documents in the wiki.

## Conflicts introduced
- SIP timing: this source states the Settling-In Programme window as "within 7 working days" for Direct Hiring and "within the required window" for New Hiring, while [[module-01-identity-guardrails-source]] / the helper-rights corpus describe SIP as within 3 working days of arrival. Recorded as a conflict block on [[New-Hiring]] rather than resolved here. (src: raw/minghwee-services-knowledge-base.md §1 Phase 5; §2 step 8 · 2026-09-08)
