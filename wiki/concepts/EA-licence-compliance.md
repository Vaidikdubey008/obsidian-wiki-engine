---
type: concept
title: EA Licence Compliance
created: 2026-09-01
updated: 2026-09-01
review_by: 2026-12-01
status: stable
confidence: high
sensitivity: public
sources: ["raw/20250819 - MOM-EA-licence-conditions (1).docx", "raw/20250819 - MOM guidelines-for-eas-placing-fdws (1).docx", "raw/comprehensive-hr-agency-knowledge-base (1).docx"]
tags: [regulatory, licence, compliance, mom]
---

# EA Licence Compliance

## Definition
The obligations binding [[Ming-Hwee-Agency]] as a licensed employment agency under the Employment Agencies Act (Cap 92), its Rules, the licence conditions, and MOM's EA alerts. (src: raw/20250819 - MOM-EA-licence-conditions (1).docx §Condition 2 · 2026-09-01)

## Why it matters here
This is the layer that turns chatbot quality problems into regulatory ones. A breach of the Guidelines "constitutes an action detrimental to the interest of the EA's client and may result in the imposition of demerit points and the suspension or revocation of the EA's licence." (src: raw/20250819 - MOM guidelines-for-eas-placing-fdws (1).docx §Introduction · 2026-09-01)

Critically, MOM's named example of prohibited misleading of clients is "wrong advice on MOM's regulations to employers and FDWs." A hallucinating chatbot is not merely inaccurate — it is the agency giving wrong regulatory advice, which is the conduct the guidelines prohibit. This is the regulatory foundation under [[Dynamic-data-architecture]] and Guardrail 14.

## Obligations that touch the chatbot directly

| Obligation | Detail | Source |
|---|---|---|
| Accurate information | Must not mislead or provide inaccurate information to clients | (src: raw/20250819 - MOM guidelines-for-eas-placing-fdws (1).docx §General duty) |
| Fee transparency | Must not misrepresent MOM-required fees; must provide a written breakdown of each | (src: raw/20250819 - MOM-EA-licence-conditions (1).docx §Condition 8) |
| Both parties are clients | "Clients" means employers **and** FDWs | (src: raw/20250819 - MOM guidelines-for-eas-placing-fdws (1).docx §Introduction) |
| Remain contactable | Provide contact details and render help promptly for at least the work permit duration | (src: raw/20250819 - MOM guidelines-for-eas-placing-fdws (1).docx §Ongoing Duties to FDW) |
| Language | Convey information in the language the client understands | (src: raw/20250819 - MOM guidelines-for-eas-placing-fdws (1).docx §Signing of documents) |
| No passport advice | Must not advise employers to keep the FDW's passport | (src: raw/20250819 - MOM guidelines-for-eas-placing-fdws (1).docx §Ongoing Duties to employer) |
| No rest-day discouragement | Must not advise or encourage employers to withhold rest days | (src: raw/20250819 - MOM guidelines-for-eas-placing-fdws (1).docx §Ongoing Duties to employer) |
| Confidentiality | No disclosure of client information without written consent | (src: raw/20250819 - MOM-EA-licence-conditions (1).docx §Condition 5(a)) |
| FDW disclosure limits | No public disclosure of FDW information or photographs on any platform, consent notwithstanding | (src: raw/20250819 - MOM-EA-licence-conditions (1).docx §Condition 17) |
| Employment history | Furnish unaltered WPOL printout to the employer, retain acknowledgement, disclose to nobody else | (src: raw/20250819 - MOM-EA-licence-conditions (1).docx §Condition 13) |

Several map one-to-one onto [[Chatbot-guardrails]]: Guardrail 8 (no non-compliant advice) restates the passport and rest-day prohibitions; Guardrail 5 and 10 restate Condition 5; Guardrail 2 sits against Condition 8's transparency duty.

## Advertising rules
Relevant because a sales chatbot is advertising. (src: raw/20250819 - MOM guidelines-for-eas-placing-fdws (1).docx §Advertising Practices · 2026-09-01)

**Prohibited:** mention of fees, salaries or loan amounts; merchandise-like terms such as "free replacement" or "fast delivery"; subjective traits such as "obedient", "compliant", "smart", "hard working"; anything casting FDWs in an undignified light.

**Acceptable:** placement volume, transfer or retention rates, types of training provided, and verifiable facts.

A bot describing a candidate as "hard working" is a licence-conditions breach, not a tone problem. This constrains how [[Candidate-employer-matching]] output may be phrased.

## Duties the chatbot does not cover
These are agency obligations with no system assigned in this corpus.

- Runaway helper: inform the employer immediately and MOM by the next working day; refer salary non-payment to MOM and abuse allegations to the police immediately or by the next working day; mediate relationship issues within 7 calendar days; provide accommodation if needed. (src: raw/20250819 - MOM guidelines-for-eas-placing-fdws (1).docx §General duty to clients · 2026-09-01)
- Report known breaches of four Acts to MOM. (src: raw/20250819 - MOM-EA-licence-conditions (1).docx §Condition 6A · 2026-09-01)
- Post-placement checks with every matched FDW and her employer, at least once within three months of deployment, by phone, video call or house visit. Records retained two years; three failed attempts reported to MOM within a week. (src: raw/20250819 - MOM-EA-licence-conditions (1).docx §Conditions 19–19D · 2026-09-01)
- Bear accommodation, food and medical costs for any FDW brought in before deployment. (src: raw/20250819 - MOM-EA-licence-conditions (1).docx §Condition 12 · 2026-09-01)
- Bear full repatriation cost where no permit is issued, and never repatriate in a way that frustrates a statutory salary or injury claim. (src: raw/20250819 - MOM-EA-licence-conditions (1).docx §Conditions 11, 11A · 2026-09-01)

## Gotchas
- **The post-placement survey gap.** The vendor proposal's automated satisfaction surveys at day 7, 30 and 90 are none of "phone, video call or house visit", and Condition 19 requires the check be performed by employment agency personnel. Automated surveys do not appear to discharge Condition 19. (src: raw/Thomas (Proposal for AI-Powered Chatbot System) (1).docx §5; raw/20250819 - MOM-EA-licence-conditions (1).docx §Conditions 19, 19A · 2026-09-01)
- Agency fees to the employer are capped at one month's salary per year of service to a maximum of two months, with upfront collection before placement prohibited. (src: raw/comprehensive-hr-agency-knowledge-base (1).docx §6.1 · 2026-09-01)
- Annexes A through H define the actual standards for verification, accommodation, IPA timing, biodata and check records. **None are present in this corpus.**
- Which licence category Ming Hwee holds is not stated anywhere, and some obligations differ by category.

## Related
[[Ministry-of-Manpower]] · [[Ming-Hwee-Agency]] · [[Chatbot-guardrails]] · [[Sensitive-data-boundary]] · [[Candidate-employer-matching]] · [[Rest-day-entitlement]] · [[Passport-confiscation-protocol]] · [[Helper-rights]] · [[Agency-first-support]]

## Open questions
- Do the automated day 7/30/90 surveys satisfy Condition 19, or is a separate human check still required?
- Which licence category does Ming Hwee hold?
- Which system owns the runaway-helper protocol and the breach-reporting duty?
