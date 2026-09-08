---
type: concept
title: Chatbot Guardrails
created: 2026-09-01
updated: 2026-09-01
review_by: 2027-03-01
status: stable
confidence: high
sensitivity: client-confidential
sources: [raw/01-chatbot-identity-guardrails.md, raw/START-HERE-VENDOR-BRIEF.md, raw/48-version-control.md, "raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx"]
tags: [guardrails, safety, compliance, system-prompt]
---

# Chatbot Guardrails

## Definition
Fourteen hard rules the assistant must never break, described as "the system prompt's backbone." Violating any of them creates legal, regulatory or reputational risk for [[Ming-Hwee-Agency]]. (src: raw/01-chatbot-identity-guardrails.md §1.4; raw/START-HERE-VENDOR-BRIEF.md §2 · 2026-09-01)

## Why it matters here
This is an agency whose regulator names "wrong advice on MOM's regulations" as prohibited conduct, and whose most vulnerable user is a helper in distress. The guardrails are where those two exposures are made explicit and testable rather than left to model judgement.

## The fourteen guardrails
(src: raw/01-chatbot-identity-guardrails.md §1.4 · 2026-09-01)

| # | Rule | Notes |
|---|---|---|
| 1 | Never provide legal advice | Shares factual regulatory information with citations, always disclaimed |
| 2 | Never fabricate placement fees | Fees confirmed at consultation or after registration; published government costs are quotable |
| 3 | Never guarantee placement timelines | Ranges with caveats: Indonesian/Myanmar 1–3 months, Filipino 2–4 months |
| 4 | Never diagnose medical or psychological conditions | Directs to a doctor; 995 if serious |
| 5 | Never share personal data | No other employers' placements, other helpers' histories, or internal records |
| 6 | Never disclose internal vendor or partner information | Includes runners, transport, overseas partners, internal URLs, and named staff |
| 7 | Never make promises beyond published policies | Contrast: "we guarantee you'll love your helper" vs the 6-month replacement/50% refund terms |
| 8 | Never advise non-compliant actions | Withholding salary, confiscating passports, skipping MOM steps, working her at another address |
| 9 | Never delay emergency routing | Danger, assault, self-harm, medical emergency → 999/995 before anything else |
| 10 | Never store sensitive personal data in chat | No NRIC/FIN, passport, bank or card numbers, full address |
| 11 | Never take sides in disputes | Documents both accounts, reveals neither to the other, routes to mediation |
| 12 | Always disclaimer management advice | Closing caveat on any household-situation coaching |
| 13 | Never respond defensively to threats | Calm professionalism to review/MOM/legal/press threats; no concessions from fear |
| 14 | Never quote regulatory numbers, fees or contacts from training data | The [[Dynamic-data-architecture]] rule. See [[Ming-Hwee-Portal-API]] |

Guardrail 14 was added in the v1.2.0 dynamic-data refactor. (src: raw/48-version-control.md §48.3 · 2026-09-01)

## Where each guardrail must live
The critical design point is that guardrails are not all the same kind of control. Some are prompt guidance; the safety-critical ones must be code.

The chatbot uses a six-layer architecture: safety classifier → intent router → RAG retrieval → LLM generation → deterministic guardrails → output. **Layers 1 and 5 must not be collapsed into the LLM.** (src: raw/START-HERE-VENDOR-BRIEF.md §3 · 2026-09-01)

Three checks are explicitly required to be deterministic rather than prompted:

1. Emergency routing — see [[Crisis-escalation]] for the reasoning. (src: raw/START-HERE-VENDOR-BRIEF.md §6 · 2026-09-01)
2. Placeholder leakage — no `[INSERT]`, `[VERIFY]` or variable-reference string may reach a user, enforced by output check. (src: raw/START-HERE-VENDOR-BRIEF.md §8 · 2026-09-01)
3. Layer 6 independently verifies 999/995 appears in any response to a crisis-classified conversation. (src: raw/START-HERE-VENDOR-BRIEF.md §6 · 2026-09-01)

The [[Ming-Hwee-OS]] architecture adds a fourth structural guardrail: "The AI never directly accesses the database. The AI calls approved tools," each checking role, permission, channel, case state and approval before acting. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §5 · 2026-09-01)

## Gotchas
- Guardrail 6 forbids naming Ming Hwee staff, but the assistant must also generate a structured handoff summary on every escalation and the licence conditions require personnel names on documents. Nothing in the corpus reconciles these at the handoff boundary. (src: raw/01-chatbot-identity-guardrails.md §1.3, §1.4; raw/20250819 - MOM-EA-licence-conditions (1).docx §Condition 4 · 2026-09-01)
- Guardrail 2's fee-gating is listed as an unresolved commercial decision in the vendor brief — the audit argues a published range converts better. The bot needs a definite answer either way. (src: raw/START-HERE-VENDOR-BRIEF.md §4 · 2026-09-01)
- Guardrail 14 is undermined by the RAG corpus itself, which contains hardcoded regulatory figures retrieval can surface. See the conflict on [[Dynamic-data-architecture]].
- The guardrails carry a verification date (31 July 2026) and a next-review commitment (Q4 2026 sync). Treat an unverified guardrail set as stale, not as permanent. (src: raw/01-chatbot-identity-guardrails.md §1.4 · 2026-09-01)

## Related
[[Dynamic-data-architecture]] · [[Safety-allowlist]] · [[Crisis-escalation]] · [[Agency-first-support]] · [[Sensitive-data-boundary]] · [[Ming-Hwee-Portal-API]] · [[EA-licence-compliance]] · [[Human-handoff]]

## Open questions
- How do Guardrail 6 and the handoff-brief requirement coexist?
- Is the placement-fee disclosure policy settled?
- Does Guardrail 5's "never share personal data" extend to candidate biodata the employer has specifically requested, which the licence conditions do permit?
