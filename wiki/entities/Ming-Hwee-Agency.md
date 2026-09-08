---
type: entity
title: Ming Hwee Agency
created: 2026-09-01
updated: 2026-09-08
review_by: 2026-12-01
status: contested
confidence: high
sensitivity: client-confidential
sources: [raw/START-HERE-VENDOR-BRIEF.md, raw/01-chatbot-identity-guardrails.md, raw/48-version-control.md, "raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx", raw/minghwee-services-knowledge-base-v1.md]
tags: [client, singapore, employment-agency, mdw]
---

# Ming Hwee Agency

## What it is
A Singapore employment agency placing migrant domestic workers (MDWs) with Singapore households, sourcing from the Philippines, Indonesia and Myanmar. It is the client for the chatbot build documented in this wiki. (src: raw/START-HERE-VENDOR-BRIEF.md §1 · 2026-09-01)

The agency describes 43 years of casework as part of its rationale for handling helper cases itself rather than referring them onward. (src: raw/01-chatbot-identity-guardrails.md §1.5 · 2026-09-01)

## What is being built
A 24/7 web chatbot for the Ming Hwee website — the "Ming Hwee Assistant" — serving two audiences with very different needs and risk profiles. (src: raw/01-chatbot-identity-guardrails.md §1.1 · 2026-09-01)

| Audience | Needs | Risk if wrong |
|---|---|---|
| Employers | Sales, process guidance, cost questions, complaints | Following incorrect advice can breach Work Permit conditions, incurring financial penalties or a hiring ban (src: raw/START-HERE-VENDOR-BRIEF.md §1) |
| Helpers | Rights information, emotional support, complaint intake, crisis routing | Safeguarding failure. "A helper in distress is the highest-stakes user of this system, and she is the user least able to complain if you get it wrong." (src: raw/START-HERE-VENDOR-BRIEF.md §1) |

Later strategy repositions the chatbot as one conversational layer inside [[Ming-Hwee-OS]] rather than a standalone system. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §1 · 2026-09-01)

## Services delivered
The agency runs seven core FDW services, documented operationally in the services knowledge base and mapped in [[Service-catalogue]]: [[New-Hiring]] (the full end-to-end recruitment "deep flow"), [[Direct-Hiring]], [[Work-Permit-Renewal]], [[Passport-Renewal]], [[Home-Leave]], [[Replacement]] and [[Helper-Transfer]]. New Hiring is the deep flow; the other six are ticket-capture flows routed to sales/admin. Every form used across them is catalogued in [[Forms-and-documents-register]]. (src: raw/minghwee-services-knowledge-base-v1.md §Services at a Glance; §Two ways a service runs · 2026-09-08)

Delivery is run by two staff roles the chatbot feeds: the Family Care Consultant (FCC, sales/matching/advisory) and the Care Coordinator (CC, documents/MOM/logistics), alongside an overseas partner agency (OP) in the source country. (src: raw/minghwee-services-knowledge-base-v1.md §Key parties · 2026-09-08)

## Operating facts
- Office hours are Monday–Friday 9:30–18:30 and Saturday 10:30–16:30. The chatbot is available 24/7 but human routing is bounded by these hours. (src: raw/START-HERE-VENDOR-BRIEF.md §4 · 2026-09-01)
- The agency is licensed under the Employment Agencies Act and bound by [[Ministry-of-Manpower]] licence conditions — see [[EA-licence-compliance]]. (src: raw/20250819 - MOM-EA-licence-conditions (1).docx §Condition 2 · 2026-09-01)
- Helper concerns are handled by Ming Hwee end to end rather than referred out, with one absolute carve-out for criminal harm and medical emergencies — see [[Agency-first-support]] and [[Crisis-escalation]]. (src: raw/01-chatbot-identity-guardrails.md §1.5 · 2026-09-01)

## Governance gaps
The knowledge base has significant unfilled ownership fields, and these are not cosmetic — they are the mechanism by which regulatory accuracy is supposed to be maintained.

| Field | Status | Source |
|---|---|---|
| KB Owner | Unfilled since v1.0.0 | (src: raw/48-version-control.md §48.1) |
| Last full Ming Hwee review | Unfilled — may never have occurred | (src: raw/48-version-control.md §48.1) |
| v1.2.0 reviewer and approver | Both unfilled | (src: raw/48-version-control.md §48.3) |
| Quarterly regulatory sync owner | Unfilled; a launch blocker | (src: raw/START-HERE-VENDOR-BRIEF.md §4) |

The KB has never been reviewed by a Singapore employment lawyer, a migrant-worker NGO, or a Ming Hwee staff member with case experience. (src: raw/START-HERE-VENDOR-BRIEF.md §9 · 2026-09-01)

> [!conflict] OPEN — current knowledge base version
> - **Claim A:** KB version is **1.3.0**, dated 31 July 2026, and `48-version-control.md` "carries the full v1.3.0 changelog." (src: raw/START-HERE-VENDOR-BRIEF.md §Header, §2 · 2026-09-01)
> - **Claim B:** KB version is **1.2.0**, with 59 modules; the newest changelog entry in Module 48 is v1.2.0 and no v1.3.0 entry exists. (src: raw/48-version-control.md §48.1, §48.3 · 2026-09-01)
> - **Assessment:** The brief is the newer document and describes v1.3.0 changes in detail (the seeding-trap fix, Guardrail 14 verification date of 31 July 2026), so v1.3.0 work plainly happened. The likeliest explanation is that Module 48 was not updated as part of that release — which is precisely the governance failure the brief warns about, since Module 48 is where contradiction resolutions are supposed to be recorded.
> - **Next step:** Confirm the current version with the KB owner and backfill the v1.3.0 entry in Module 48. Until then, treat the brief as authoritative on version.
> - **Status:** open

## Related
[[Ming-Hwee-OS]] · [[Ministry-of-Manpower]] · [[Ming-Hwee-Portal-API]] · [[Chatbot-guardrails]] · [[Agency-first-support]] · [[EA-licence-compliance]] · [[launch-blockers]] · [[Service-catalogue]] · [[Forms-and-documents-register]]
