---
type: concept
title: Safety Allowlist
created: 2026-09-01
updated: 2026-09-01
review_by: 2026-12-01
status: stable
confidence: high
sensitivity: public
sources: [raw/01-chatbot-identity-guardrails.md, raw/START-HERE-VENDOR-BRIEF.md]
tags: [safety, fallback, hardcoded, emergency-numbers]
---

# Safety Allowlist

## Definition
The small, closed set of values the chatbot is permitted to hold hardcoded as an outage fallback. It is the single deliberate exception to [[Dynamic-data-architecture]] and Guardrail 14. (src: raw/01-chatbot-identity-guardrails.md §1.4 · 2026-09-01)

## The list
(src: raw/01-chatbot-identity-guardrails.md §1.4 · 2026-09-01)

| Value | Number |
|---|---|
| Singapore Police | 999 |
| Singapore Ambulance / Fire | 995 |
| Police non-emergency | 1800-255-0000 |
| MOM MDW Helpline (distress) | 1800-339-5505 · overseas +65 6339-5505 |
| Ming Hwee's own numbers | (the agency's published contact numbers) |

**"If it is not on that list, the bot does not know it from memory."** (src: raw/START-HERE-VENDOR-BRIEF.md §5 · 2026-09-01)

## Why it matters here
The rationale is an explicit trade of one failure mode against a worse one: "These are safety numbers, not commercial data. A portal outage that leaves a frightened helper with no number to call is a worse failure than a number that is one quarter stale." (src: raw/01-chatbot-identity-guardrails.md §1.4; raw/START-HERE-VENDOR-BRIEF.md §5 · 2026-09-01)

They qualify because they change rarely and because the cost asymmetry runs the other way from every other value in the system. Everything else — every dollar amount, age threshold, embassy contact, partner detail — flows through [[Ming-Hwee-Portal-API]]. (src: raw/01-chatbot-identity-guardrails.md §1.4 · 2026-09-01)

## Maintenance
Re-verified every quarter alongside the portal sync, under the same regulatory-sync process. The guardrails module carries a last-verified date of 31 July 2026 with next verification due at the Q4 2026 sync. (src: raw/01-chatbot-identity-guardrails.md §1.4; raw/START-HERE-VENDOR-BRIEF.md §5 · 2026-09-01)

## Gotchas
- The allowlist is short by design. Expanding it dilutes the rule, and every addition is a number that can go stale without anyone noticing — the failure mode the portal exists to prevent.
- [[HOME]], HealthServe, the Samaritans and the three embassies are **not** on the allowlist despite appearing throughout the emergency protocols. Under Guardrail 14 they must come from `/api/v1/partners`, which means a portal outage removes them from a crisis response. Whether that is intended is not stated in any source. (src: raw/01-chatbot-identity-guardrails.md §1.4; raw/emergency-response-crisis-protocols (1).docx §Crisis Intervention Hotlines · 2026-09-01)
- The MOM 24/7 report line (6438 5122) appears in the emergency protocols but is not on the allowlist, while the Mon–Fri helpline is. In an out-of-hours outage the bot would retain only the number that is closed. (src: raw/emergency-response-crisis-protocols (1).docx §Emergency Contact Database; raw/01-chatbot-identity-guardrails.md §1.4 · 2026-09-01)
- The quarterly verification that keeps the allowlist current has no named owner — see [[launch-blockers]].

## Related
[[Dynamic-data-architecture]] · [[Chatbot-guardrails]] · [[Crisis-escalation]] · [[Ming-Hwee-Portal-API]] · [[Ministry-of-Manpower]] · [[HOME]]

## Open questions
- Should the crisis hotlines and the MOM 24/7 line be added to the allowlist? The stated rationale for the allowlist appears to apply to them equally.
- What does a crisis response look like when the portal is down — which contacts survive?
