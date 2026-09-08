---
type: entity
title: Ming Hwee Portal API
created: 2026-09-01
updated: 2026-09-01
review_by: 2026-12-01
status: draft
confidence: high
sensitivity: client-confidential
sources: [raw/48-version-control.md, raw/START-HERE-VENDOR-BRIEF.md, raw/01-chatbot-identity-guardrails.md]
tags: [api, portal, dynamic-data, phase-1]
---

# Ming Hwee Portal API

## What it is
The runtime data source for every volatile value the chatbot might quote. It exists so that regulatory figures, fees and contacts live in one administered place rather than in the model, the prompt, or the knowledge base. Building it is Phase 1 of the project and it blocks everything else. (src: raw/48-version-control.md §48.3; raw/START-HERE-VENDOR-BRIEF.md §3 · 2026-09-01)

Estimated at 100–165 developer hours including an admin panel usable by a non-technical staff member quarterly. (src: raw/START-HERE-VENDOR-BRIEF.md §3 · 2026-09-01)

## Endpoints
Six endpoints defined in Module 58. (src: raw/48-version-control.md §48.3 · 2026-09-01)

| Endpoint | Serves |
|---|---|
| `/api/v1/regulatory` | Levy standard and concessionary, elderly and child concession thresholds, security bond, medical and PA insurance minimums, WP application and issuance fees, SIP and EOP cost ranges, embassy contacts, Singapore emergency numbers |
| `/api/v1/placement-fees` | All placement fee categories and instalment policy (Ming Hwee-controlled) |
| `/api/v1/salary-ranges` | Market salary ranges by experience tier, Filipino premium note |
| `/api/v1/service-pricing` | Air ticket estimates by country, service-specific fees |
| `/api/v1/partners` | Medical clinic recommendations, insurer recommendations, EOP/SIP provider lists |
| `/api/v1/exchange-rates` | Currency conversion |

## Auth model
Bearer token authentication for the chatbot. (src: raw/48-version-control.md §48.3 · 2026-09-01)

## Behaviour requirements

| Requirement | Detail | Source |
|---|---|---|
| Refresh | A portal update reaches the chatbot within 1 hour | (src: raw/48-version-control.md §48.3) |
| API unreachable | Route to a human. Never guess, never quote from training data. | (src: raw/01-chatbot-identity-guardrails.md §1.4; raw/48-version-control.md §48.3) |
| Staleness > 90 days | Append a verification note suggesting the user check the official source | (src: raw/01-chatbot-identity-guardrails.md §1.4) |
| Admin panel | Must require a source URL and verification date on every field; unsourced values must be impossible to save | (src: raw/START-HERE-VENDOR-BRIEF.md §5) |
| Staleness in UI | Any field past `next_review_due` shows red in the admin panel | (src: raw/START-HERE-VENDOR-BRIEF.md §5) |

Acceptance is verified by killing the API mid-conversation and confirming the bot routes to a human rather than answering. (src: raw/START-HERE-VENDOR-BRIEF.md §8 · 2026-09-01)

## Deployment prerequisites
Seven items must exist before the dependent KB release can deploy. (src: raw/48-version-control.md §48.3 · 2026-09-01)

1. Database tables: `placement_fees`, `regulatory_data`, `partner_directory`, `service_pricing`, `salary_ranges`
2. The six REST endpoints
3. Admin panel for non-technical staff
4. Bearer-token authentication
5. Initial data population from current authoritative sources
6. A designated staff member responsible for the quarterly MOM sync
7. Monitoring and alerting for API health

Item 6 remains unassigned and is launch blocker #2. (src: raw/START-HERE-VENDOR-BRIEF.md §4 · 2026-09-01)

## Integration notes — the seeding trap
The specification's own example schema carried a medical insurance minimum of 15,000 while the correct figure has been 60,000 since 1 July 2023. A developer seeding the portal from the spec's examples — "the natural thing to do" — would have served a three-year-old figure to a chatbot designed to trust the API completely. Every anti-hallucination layer would have worked perfectly and the user would still have been told something false. (src: raw/START-HERE-VENDOR-BRIEF.md §5 · 2026-09-01)

The rule that follows: example values in specifications are illustrative, never seed data. Every value entering the portal must be verified against a primary source on the day it is entered. (src: raw/START-HERE-VENDOR-BRIEF.md §5 · 2026-09-01)

## Known issues / conflicts
- The quarterly sync "has already failed once, before launch" — both regulatory errors found in the July 2026 audit were three years old. (src: raw/START-HERE-VENDOR-BRIEF.md §4 · 2026-09-01)
- Module 58, which specifies this API in full, is not present in this corpus. See [[documentation-completeness-check]].

## Projects using this
- Ming Hwee Assistant chatbot — every fee, threshold and contact answer

## Related
[[Dynamic-data-architecture]] · [[Chatbot-guardrails]] · [[Safety-allowlist]] · [[Ministry-of-Manpower]] · [[Ming-Hwee-Agency]] · [[launch-blockers]]
