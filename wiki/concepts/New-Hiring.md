---
type: concept
title: New Hiring
created: 2026-09-08
updated: 2026-09-08
review_by: 2027-03-08
status: draft
confidence: high
sensitivity: client-confidential
sources: [raw/minghwee-services-knowledge-base-v1.md]
tags: [services, new-hiring, deep-flow, mom, embassy, process]
---

# New Hiring

## Definition
The full end-to-end recruitment flow — the only "deep flow" service. The employer is bringing in a helper from overseas for the first time (or has no helper now and wants one); there is no existing helper and no existing Work Permit. Ming Hwee sources, matches, processes and lands the helper. Timeline 4–6 weeks including overseas processing. (src: raw/minghwee-services-knowledge-base-v1.md §1. New Hiring · 2026-09-08)

## Why it matters here
This is the reference flow every other service borrows from. [[Direct-Hiring]] is New Hiring minus sourcing/matching; [[Replacement]] is New Hiring for the incoming helper with different fee forms; the overseas branch of both reuses this embassy step. Getting this flow right defines the building blocks for the whole catalogue. See [[Service-catalogue]].

## Ownership
Run jointly by an FCC (sourcing, matching, advisory), a CC (documents, MOM, logistics) and an OP (source country). (src: raw/minghwee-services-knowledge-base-v1.md §1. New Hiring · 2026-09-08)

## The five phases
(src: raw/minghwee-services-knowledge-base-v1.md §1. New Hiring · 2026-09-08)

**Phase 1 — Enquiry, matching & confirmation (FCC-led).** Create the employer account and capture household info and requirements; the dashboard shows closest-matched candidate profiles, package fees and contract info; needs assessment and profiling; AI-assisted matching to a shortlist of 3–5 candidates with biodata packs; facilitated video/phone interviews with translation support; on confirmation, prompt for payment, which activates the process and notifies all parties; hand the package to CC.

**Phase 2 — MOM application & IPA (CC-led).** Marked **SEQUENTIAL — CRITICAL**: no step proceeds until the previous is complete. Employer sets up Singpass and a MOM employer account; employer e-authorises Ming Hwee; first-time employers complete [[EOP|the Employers' Orientation Programme]] (eop.com.sg); prepare and e-sign the employer document set and collect the candidate's passport copy, medical report and school certificate from the OP; confirm medical fitness; CC completes the 9-page FDW e-Service form, uploads documents and pays the $35 fee; track the MOM dashboard daily until IPA, then save it to CRM and email IPA + contract to the OP.

**Phase 3 — Embassy & medical (OP-led, CC-tracked).** Runs after IPA, and varies by source country:

| Country | Handling after IPA |
|---|---|
| Philippines | OP prints the contract, gets the helper's signature, submits to the embassy / DMW online (onlineservices.dmw.gov.ph); stamped contract scanned to CC; book a DOH-accredited clinic for the fit-to-fly medical and upload the cert. |
| Indonesia | Job order via the Indonesian Embassy portal (fdw.indonesianlabour.sg); on approval an EC is generated — employer signs 3 original EC copies + 1 IPA form; prepare the embassy pack (3 EC copies with company chop, IPA employer & worker copy, employer IC copy, worker passport copy); runner collects; scan the approved EC back. |
| Myanmar | Notify employer, send the IPA form for signature; send IPA to the Myanmar agent for worker signature and earliest departure date; download the Security Bond Transmission form from MOM and email it to the Myanmar agent (required for immigration clearance). |

**Phase 4 — Insurance, bond, travel & arrival (CC-led).** IPA must be signed by both employer and worker and uploaded before WP issuance; purchase FDW insurance and the $5,000 security bond before departure (e.g. via an Income/HLAS partner portal) and confirm the bond is transmitted on the MOM portal; confirm the employer's pick-up availability before the OP issues the air ticket; book flights only after written confirmation from both employer and OP/candidate, and notify the transport company of the arrival date for airport pick-up, medical and SIP; prepare the handover pack (Employment Contract, Salary Schedule, Rest-Day form, Safety Agreement form, Do's & Don'ts form).

**Phase 5 — Onboarding & follow-up.** On arrival, escort the helper for SIP, medical exam and fingerprinting and register SIP within the required window; on handover day collect the placement fee (loan) by the agreed mode (PayNow / cash / cheque) and complete the Orientation Checklist (e-signed by employer, maid & EA staff); collect the WP card, upload to CRM and close the case; call both employer and helper within 1 week of arrival (target 80% retention / min 1 year).

## Documents
Requested from the employer/client and prepared by Ming Hwee for signature — see [[Forms-and-documents-register]]. Employer-side: NRIC/IC copy, Income Tax Assessment or Declaration of Monthly Income, foreign-employer proof (EP/S Pass + passport, or company letter + tenancy agreement), care-need proof for an additional helper, and the candidate's passport/medical/school certificate via the OP. Prepared for signature: Service Agreement, Service & Fee Schedule, Agency Fee package form, Authorisation Form, Employer Particulars form, Worker's Biodata (last page), Job Offer Form, Levy GIRO form (first-time employers), Worker's Employment History (if prior SG experience). (src: raw/minghwee-services-knowledge-base-v1.md §1. New Hiring · 2026-09-08)

## Regulatory values used
$35 MOM submission fee, $5,000 security bond, medical insurance min $15,000/yr, PA insurance min $60,000/yr — all volatile, serve from [[Ming-Hwee-Portal-API]], see [[Ministry-of-Manpower]] and [[Dynamic-data-architecture]]. (src: raw/minghwee-services-knowledge-base-v1.md §1. New Hiring; §Services at a Glance · 2026-09-08)

## Gotchas
- Phase 2 is strictly sequential; a step started before the previous completes can invalidate the submission.
- Errors on the MOM form cause multi-week delays — the sibling [[Direct-Hiring]] flow notes 2–3 weeks per error.
- The $15,000/yr insurance minimum here conflicts with the SGD 60,000 minimum on [[Ministry-of-Manpower]]. Verify before quoting.
- SIP is stated as "within the required window" here but "7-day window" in [[Direct-Hiring]] and "3 working days" elsewhere in the corpus — confirm the rule.

## Related
[[Service-catalogue]] · [[Direct-Hiring]] · [[Replacement]] · [[Forms-and-documents-register]] · [[Ministry-of-Manpower]] · [[Employer-eligibility-screening]] · [[Candidate-employer-matching]] · [[Ming-Hwee-Portal-API]]

## Open questions
- Does "AI-assisted matching" here use the [[Candidate-employer-matching]] Matching Engine or a separate tool?
- Which SIP window governs?
- Is the $5,000 bond figure current and does it vary by nationality (the corpus notes "per non-Malaysian MDW")?
