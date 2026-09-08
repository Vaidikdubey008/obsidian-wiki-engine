---
type: source
title: START HERE — Vendor Build Brief (KB v1.3.0)
created: 2026-09-01
updated: 2026-09-01
review_by: 2026-11-30
status: stable
confidence: high
sensitivity: client-confidential
sources: [raw/START-HERE-VENDOR-BRIEF.md]
source_hash: df8f1c2375ab2a96
retrieved: 2026-09-01
author: Ming Hwee (KB v1.3.0, 31 July 2026)
tags: [ming-hwee, vendor-brief, blockers, acceptance-criteria, safeguarding]
---

# START HERE — Vendor Build Brief (KB v1.3.0)

## What this is
The entry-point document for the development team building the Ming Hwee Assistant chatbot. It states scope, build order, launch blockers, the data-integrity rule, the safeguarding carve-out, and the acceptance criteria the build is measured against. It is the most authoritative single document in the corpus.

## Key claims
- The chatbot serves two audiences: Singapore employers hiring a migrant domestic worker (MDW), and helpers from the Philippines, Indonesia and Myanmar. (src: raw/START-HERE-VENDOR-BRIEF.md §1 · 2026-09-01)
- "A helper in distress is the highest-stakes user of this system, and she is the user least able to complain if you get it wrong." Design and test for her first. (src: raw/START-HERE-VENDOR-BRIEF.md §1 · 2026-09-01)
- Build order is five phases: Portal API → data population → chatbot → instrumentation → staged rollout at 10%/50%/100%. (src: raw/START-HERE-VENDOR-BRIEF.md §3 · 2026-09-01)
- Phase 1 (Portal API, six endpoints plus an admin panel) is estimated at 100–165 developer hours and blocks everything else. (src: raw/START-HERE-VENDOR-BRIEF.md §3 · 2026-09-01)
- The chatbot uses a six-layer architecture: safety classifier → intent router → RAG retrieval → LLM generation → deterministic guardrails → output. Layers 1 and 5 must not be collapsed into the LLM. (src: raw/START-HERE-VENDOR-BRIEF.md §3 · 2026-09-01)
- Six launch blockers are Ming Hwee's to resolve, not the vendor's. See [[launch-blockers]]. (src: raw/START-HERE-VENDOR-BRIEF.md §4 · 2026-09-01)
- The "seeding trap": the spec's own example schema carried a medical insurance minimum of $15,000, while the correct figure has been $60,000 since 1 July 2023. Seeding the portal from spec examples would have served a three-year-old figure through an anti-hallucination design that worked perfectly. (src: raw/START-HERE-VENDOR-BRIEF.md §5 · 2026-09-01)
- Example values in specifications are illustrative and never seed data; every value entering the portal must be verified against a primary source on the day it is entered, with source URL and date recorded. (src: raw/START-HERE-VENDOR-BRIEF.md §5 · 2026-09-01)
- The admin panel must make unsourced values impossible to save, and must surface staleness in the UI. (src: raw/START-HERE-VENDOR-BRIEF.md §5 · 2026-09-01)
- The safety carve-out (assault, sexual assault or coercion, confinement, threats to life, medical emergency) must surface 999/995 before any agency-routing language, implemented as a deterministic check at Layer 1 and Layer 6 — not as a prompt instruction. (src: raw/START-HERE-VENDOR-BRIEF.md §6 · 2026-09-01)
- Rationale for determinism: every other flow in the corpus routes to Ming Hwee, and "under context pressure a language model will generalise that pattern straight over the exception." (src: raw/START-HERE-VENDOR-BRIEF.md §6 · 2026-09-01)
- Instrumented target: 100% of crisis conversations surface 999/995 before any agency-routing step. Any miss is a safety incident, not a quality nit. (src: raw/START-HERE-VENDOR-BRIEF.md §6 · 2026-09-01)
- Time-to-Human for a helper in distress: the clock starts at the escalation trigger and stops at the first message from a named human; auto-acknowledgements do not stop it. Crisis target under 15 minutes 24/7; urgent under 4h in-hours and under 12h out-of-hours; routine under 24h. (src: raw/START-HERE-VENDOR-BRIEF.md §7 · 2026-09-01)
- Time-to-human must be reported by hour of day and day of week, because a blended average hides nights, Sundays and public holidays. Helper CSAT must be reported separately from employer CSAT. (src: raw/START-HERE-VENDOR-BRIEF.md §7 · 2026-09-01)
- No placeholder string of the `[INSERT]`, `[VERIFY]` or variable-reference kind may ever reach a user, enforced by deterministic output check rather than prompt instruction. (src: raw/START-HERE-VENDOR-BRIEF.md §8 · 2026-09-01)
- Acceptance requires the bot to state both rest-day rules whenever rest days arise, and to pass the trap case "She agreed to work every Sunday for extra pay" by identifying it as a breach. (src: raw/START-HERE-VENDOR-BRIEF.md §8 · 2026-09-01)
- Burmese is unsupported, though Myanmar is one of three source countries; the fallback is simple English for the cohort with the least English and the highest isolation risk. (src: raw/START-HERE-VENDOR-BRIEF.md §9 · 2026-09-01)
- Every sample conversation in the KB is AI-generated and must be used as behavioural specification, not as a training set. (src: raw/START-HERE-VENDOR-BRIEF.md §9 · 2026-09-01)
- The KB has never been reviewed by a domain expert — no Singapore employment lawyer, no migrant-worker NGO, no Ming Hwee staff member with case experience. Two regulatory errors found in July 2026 had each survived four self-reviews, "because internal consistency checks cannot detect a uniform error." (src: raw/START-HERE-VENDOR-BRIEF.md §9 · 2026-09-01)
- On finding a contradiction between modules, the vendor must not silently pick one; raise it with the KB owner, get a written decision, and record it in Module 48. (src: raw/START-HERE-VENDOR-BRIEF.md §10 · 2026-09-01)

## Pages updated by this source
- [[Ming-Hwee-Agency]] — audiences, office hours, project framing
- [[Chatbot-guardrails]] — six-layer architecture, deterministic guardrail placement
- [[Dynamic-data-architecture]] — the seeding trap and the sourcing rules
- [[Safety-allowlist]] — rationale and contents
- [[Crisis-escalation]] — the carve-out and why it must be deterministic
- [[Agency-first-support]] — the rule the carve-out overrides
- [[Ming-Hwee-Portal-API]] — six endpoints, admin panel requirements
- [[Rest-day-entitlement]] — the acceptance trap case
- [[Multi-language-support]] — the Burmese gap
- [[launch-blockers]] — all six blockers
- [[documentation-completeness-check]] — the mandated reading order versus what exists

## Open questions this source raises
- Who is the named quarterly regulatory sync owner, and who is the backup? Still unfilled at v1.3.0.
- Is there an out-of-hours crisis on-call rota, and what mechanism pages it?
- Does the levy concession require Citizen status, or does PR qualify?
- What is the elderly concession age threshold? Flagged for verification since KB v1.0 across four modules.
- Is the placement-fee disclosure policy still gated behind registration, or should a range be published?

## Conflicts introduced
- KB version: this brief is headed v1.3.0 (31 July 2026), but Module 48 records v1.2.0 as the latest release. See conflict block on [[Ming-Hwee-Agency]].
- Crisis response time: §7 sets a under-15-minute time-to-human target while §4.1 describes Module 34 as promising a distressed helper a human "within 5 minutes." See conflict block on [[Crisis-escalation]].
