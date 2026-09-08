---
type: concept
title: Dynamic Data Architecture
created: 2026-09-01
updated: 2026-09-01
review_by: 2026-12-01
status: contested
confidence: high
sensitivity: client-confidential
sources: [raw/48-version-control.md, raw/START-HERE-VENDOR-BRIEF.md, raw/01-chatbot-identity-guardrails.md, "raw/comprehensive-hr-agency-knowledge-base (1).docx"]
tags: [data-integrity, anti-hallucination, portal, regulatory]
---

# Dynamic Data Architecture

## Definition
The rule that every volatile value — fees, levies, thresholds, contacts — is resolved at runtime from [[Ming-Hwee-Portal-API]] rather than held in the model, the prompt, or the knowledge base. Codified as Guardrail 14 and introduced in the v1.2.0 refactor. (src: raw/48-version-control.md §48.3; raw/01-chatbot-identity-guardrails.md §1.4 · 2026-09-01)

## Why it matters here
"Training data ages. MOM levies, embassy contacts, salary ranges, and placement fees change. If the chatbot quotes a memorized number, it will eventually be wrong — and giving wrong regulatory info to a user is high-risk (legal, reputational, compliance)." (src: raw/01-chatbot-identity-guardrails.md §1.4 · 2026-09-01)

The refactor was prompted by v1.1 carrying roughly 342 unfilled placeholders, and by Ming Hwee judging that editing KB files every time a government policy changed was "operationally fragile." (src: raw/48-version-control.md §48.3 · 2026-09-01)

## What must be dynamic
All MOM fees and thresholds; levy rates and concession criteria; security bond; insurance minimums, co-pay threshold and percentage; WP/SIP/EOP fees; salary ranges; air ticket estimates; placement fees; embassy contacts; partner and clinic lists. (src: raw/START-HERE-VENDOR-BRIEF.md §5 · 2026-09-01)

The only permitted exception is the [[Safety-allowlist]].

## Behaviour rules
(src: raw/01-chatbot-identity-guardrails.md §1.4; raw/48-version-control.md §48.3 · 2026-09-01)

| Condition | Required behaviour |
|---|---|
| Normal | Pull current values from the relevant endpoint on every response containing such a value |
| API unreachable | Route to a human. Never invent, never guess, never fall back to memory. |
| Value stale > 90 days | Append a verification note suggesting the user check the official source |
| Portal data changes | Chatbot reflects the new value within 1 hour, with no KB redeploy |

"A 'route to human' is a minor inconvenience; a confident wrong fee is a complaint." (src: raw/START-HERE-VENDOR-BRIEF.md §5 · 2026-09-01)

## The seeding trap
The most instructive failure in the corpus, and it never actually happened — it was caught.

Until v1.3.0 both the portal API specification and Module 58 carried a medical insurance minimum coverage of 15,000 in their example schema. The correct figure has been **60,000 since 1 July 2023**. A developer seeding the portal from the spec's example values — "the natural thing to do" — would have populated the live API with a three-year-old figure, and served it to a chatbot explicitly designed to trust the API completely. (src: raw/START-HERE-VENDOR-BRIEF.md §5 · 2026-09-01)

"Every layer of the anti-hallucination design would have worked perfectly and the user would still have been told something false." (src: raw/START-HERE-VENDOR-BRIEF.md §5 · 2026-09-01)

Four rules follow: example values in specs are never seed data; every value must be verified against a primary source on the day it is entered with source URL and date recorded; the admin panel must make unsourced values impossible to save; and staleness must be visible in the UI. (src: raw/START-HERE-VENDOR-BRIEF.md §5 · 2026-09-01)

> [!conflict] OPEN — hardcoded regulatory figures inside the RAG corpus
> - **Claim A:** The bot must never emit a dollar amount, age threshold or fee not sourced from the portal at runtime, and must never quote such values from training data. (src: raw/01-chatbot-identity-guardrails.md §1.4; raw/START-HERE-VENDOR-BRIEF.md §8 · 2026-09-01)
> - **Claim B:** The knowledge base document intended as RAG corpus states specific figures as fact: levy SGD 300/450/60, security bond SGD 5,000, work permit fee SGD 35, insurance SGD 300–600, elderly concession age 67, SIP+EOP SGD 75. (src: raw/comprehensive-hr-agency-knowledge-base (1).docx §6.1, §6.2 · 2026-09-01)
> - **Assessment:** Guardrail 14 was written against training data and prompt content. It does not obviously cover *retrieved* content — yet retrieval puts these numbers into the generation context, where they are indistinguishable from any other grounded fact. The bot could satisfy Guardrail 14 as literally worded and still emit a stale levy figure with apparent citation support. This is the seeding trap in a different channel: the anti-hallucination design works and the user is still told something false. The figures are labelled "2024 Rates" in a September 2025 document, so at least some are already at risk.
> - **Next step:** Decide whether volatile figures are stripped from the RAG corpus at ingestion, or whether an output-layer check catches any numeric regulatory value not traceable to a portal call in that turn. The latter is more robust and matches the deterministic-check pattern used elsewhere. Either way this needs to be an explicit build decision, not left to Guardrail 14's wording.
> - **Status:** open

## Gotchas
- The quarterly sync has already failed once, before launch: both regulatory errors found in the July 2026 audit were three years old. (src: raw/START-HERE-VENDOR-BRIEF.md §4 · 2026-09-01)
- The sync owner is still unnamed. An architecture that depends on quarterly human verification with no named owner is a design with a missing component, not merely an open action. See [[launch-blockers]]. (src: raw/START-HERE-VENDOR-BRIEF.md §4 · 2026-09-01)
- Placeholder strings must never reach a user, enforced as a deterministic output check rather than a prompt instruction. (src: raw/START-HERE-VENDOR-BRIEF.md §8 · 2026-09-01)
- Module 58, which specifies this architecture in full, is absent from this corpus. See [[documentation-completeness-check]].

## Related
[[Ming-Hwee-Portal-API]] · [[Chatbot-guardrails]] · [[Safety-allowlist]] · [[Ministry-of-Manpower]] · [[launch-blockers]] · [[documentation-completeness-check]]

## Open questions
- Are volatile figures stripped from the RAG corpus, or caught at output?
- What happens to a cached value between the portal changing and the 1-hour refresh?
- Who verifies the portal's initial population, given that the person entering values is also the person recording the source URL?
