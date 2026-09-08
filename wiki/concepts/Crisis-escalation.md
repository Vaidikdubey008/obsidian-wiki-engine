---
type: concept
title: Crisis Escalation
created: 2026-09-01
updated: 2026-09-01
review_by: 2026-12-01
status: contested
confidence: high
sensitivity: client-confidential
sources: [raw/START-HERE-VENDOR-BRIEF.md, raw/01-chatbot-identity-guardrails.md, "raw/emergency-response-crisis-protocols (1).docx", raw/27-helper-rights-simple-english.md, "raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx", "raw/Thomas (Proposal for AI-Powered Chatbot System) (1).docx"]
tags: [safeguarding, crisis, emergency, deterministic, life-critical]
---

# Crisis Escalation

## Definition
The path a conversation takes when it indicates physical assault, sexual assault or coercion, confinement, threats to life, self-harm, or a medical emergency. In these cases the assistant surfaces **999 or 995 first**, before any agency-routing language, and notifies [[Ming-Hwee-Agency]] immediately after. (src: raw/01-chatbot-identity-guardrails.md §1.5; raw/START-HERE-VENDOR-BRIEF.md §6 · 2026-09-01)

This is the one category that overrides [[Agency-first-support]] completely.

## Why it matters here
Every other flow in this system routes to Ming Hwee. That consistency is the danger: "Under context pressure a language model will generalise that pattern straight over the exception — it will produce a warm, plausible, on-brand 'let me get our senior team to help you with this' to someone describing an assault in progress. That is the single most damaging output this system can produce, and prompt instructions are not a sufficient control for it." (src: raw/START-HERE-VENDOR-BRIEF.md §6 · 2026-09-01)

## Required implementation
(src: raw/START-HERE-VENDOR-BRIEF.md §6 · 2026-09-01)

- Layer 1 safety classifier fires on assault, sexual, confinement, self-harm and medical-emergency signals **before the LLM is invoked**
- On fire, the emergency response is emitted deterministically — the LLM does not decide whether to include it or soften it
- Layer 6 output guardrail independently verifies 999/995 appears in any crisis-classified response
- Instrumented metric: percentage of crisis conversations where 999/995 was surfaced before any agency-routing step. **Target 100%. Any miss is a safety incident, not a quality nit.**
- The full crisis suite is in regression tests for every release; the check must never regress silently
- Acceptance testing runs this suite **with the LLM stubbed out**

## The five no-exception situations
(src: raw/01-chatbot-identity-guardrails.md §1.5 · 2026-09-01)

| Situation | Action |
|---|---|
| Physical assault, or fear of imminent harm | Police 999 immediately |
| Sexual assault, coercion, or molestation | Police 999 immediately |
| Confinement — she cannot leave, or is locked in | Police 999 immediately |
| Threats to her life or safety | Police 999 immediately |
| Medical emergency | Ambulance 995 immediately |

Passport confiscation routes through its own canonical protocol — see [[Passport-confiscation-protocol]].

The helper-facing module carries the same table in Grade 6 English. (src: raw/27-helper-rights-simple-english.md §27.7 · 2026-09-01)

## Two smaller rules in the same area
- If a helper mentions she has already contacted MOM or another body, the bot acknowledges neutrally and continues helping. It must never discourage her, question her, or suggest it affects her job, permit or placement. (src: raw/01-chatbot-identity-guardrails.md §1.5; raw/START-HERE-VENDOR-BRIEF.md §6 · 2026-09-01)
- The bot must never ask a helper to delay a safety step in order to contact Ming Hwee first. (src: raw/01-chatbot-identity-guardrails.md §1.5 · 2026-09-01)

## Detection and severity (emergency protocols document)
- Trigger keywords span five languages across physical violence, sexual abuse, threats and medical emergency. (src: raw/emergency-response-crisis-protocols (1).docx §Trigger Keywords · 2026-09-01)
- Severity tiers: CRITICAL (response time 0, escalate, human intervention), HIGH (within 1 second, escalate, human intervention), MEDIUM (within 3 seconds, no escalation). (src: raw/emergency-response-crisis-protocols (1).docx §Severity Classification · 2026-09-01)
- Emergency responses are validated against five mandatory elements and fail closed to urgent review if any is missing. (src: raw/emergency-response-crisis-protocols (1).docx §Response Quality Assurance · 2026-09-01)
- Three workflows are specified: physical abuse, mental health crisis (Samaritans 1800 221 4444), and missing person (police report required beyond 24 hours). (src: raw/emergency-response-crisis-protocols (1).docx §Crisis Response Workflows · 2026-09-01)

## Time-to-human
The metric the brief calls the one that matters most. The clock starts at the escalation trigger and stops at the first message from a **named human**; auto-acknowledgements do not stop it. (src: raw/START-HERE-VENDOR-BRIEF.md §7 · 2026-09-01)

| Tier | Target |
|---|---|
| Crisis | Under 15 minutes, 24/7 |
| Urgent | Under 4h in-hours, under 12h out-of-hours |
| Routine | Under 24h |

Reporting must be broken out by hour of day and day of week: "A blended average hides the only failure that matters — nights, Sundays, public holidays. The 2am number is the real number." (src: raw/START-HERE-VENDOR-BRIEF.md §7 · 2026-09-01)

"A system that emits a warm safety script in 8 seconds and then leaves someone waiting until Monday has failed, and every other KPI will still show green." (src: raw/START-HERE-VENDOR-BRIEF.md §7 · 2026-09-01)

> [!conflict] OPEN — emergency response latency
> - **Claim A:** Emergency responses must complete in **under 1 second**, with CRITICAL severity specified at response time 0 and load testing asserting sub-1-second responses under 100 simultaneous emergency reports. (src: raw/emergency-response-crisis-protocols (1).docx §Severity Classification, §Load Testing · 2026-09-01)
> - **Claim B:** "The max latency will never less then 15" seconds, restated as "Expect latency of 15 seconds" and "Ai minimum latency is 15 seconds." (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §2, §Q4, §Q5 · 2026-09-01)
> - **Assessment:** These are only reconcilable if the emergency path does not go through the LLM at all — which is exactly what the vendor brief mandates. A deterministic Layer 1 classifier emitting a fixed response can meet sub-1-second; a 15-second figure describes the AI generation path. So the architecture the brief requires resolves the numbers. **But nothing in the corpus states this reconciliation**, and Claim B is Ming Hwee answering a latency question with no carve-out for crisis. If a builder reads the 15-second figure as applying to all responses, a helper in danger waits 15 seconds for a 999 instruction.
> - **Next step:** Get written confirmation that the crisis path bypasses LLM generation and is measured separately, and add a crisis-path latency target to the KPI framework.
> - **Status:** open

> [!conflict] OPEN — crisis time-to-human target
> - **Claim A:** Crisis time-to-human target is **under 15 minutes**, 24/7. (src: raw/START-HERE-VENDOR-BRIEF.md §7 · 2026-09-01)
> - **Claim B:** "Module 34 promises a distressed helper a human within **5 minutes**." (src: raw/START-HERE-VENDOR-BRIEF.md §4 · 2026-09-01)
> - **Assessment:** Both claims are in the same document, three sections apart. Either §7 relaxes Module 34's promise, or §7 is the operational target and Module 34 is the user-facing promise — in which case the bot is promising something the KPI framework does not require. Module 34 is not present in this corpus so the promise wording cannot be checked.
> - **Next step:** Confirm which figure the bot states to a helper, and align the KPI target to it. Either staff to 5 minutes or change the promise — the brief's own instruction is "do not ship the promise unstaffed."
> - **Status:** open

## Gotchas
- Out-of-hours paging does not exist. Office hours are Mon–Fri 9:30–18:30 and Sat 10:30–16:30, and "abuse does not keep office hours." This is launch blocker #1 — see [[launch-blockers]]. (src: raw/START-HERE-VENDOR-BRIEF.md §4 · 2026-09-01)
- The original vendor proposal's crisis design routes to "a senior manager's priority CRISIS queue" and **never mentions 999 or 995**. Any implementation tracing back to that document is missing the non-negotiable step. (src: raw/Thomas (Proposal for AI-Powered Chatbot System) (1).docx §5 · 2026-09-01)
- Keyword detection is exact substring matching on lowercased input. Negation ("he did not hit me"), misspelling under distress, and non-Latin scripts are not addressed. (src: raw/emergency-response-crisis-protocols (1).docx §Emergency Detection Algorithms · 2026-09-01)
- Self-harm indicators must trigger crisis routing with no lead capture, no upsell and no survey. (src: raw/START-HERE-VENDOR-BRIEF.md §8 · 2026-09-01)

## Related
[[Agency-first-support]] · [[Chatbot-guardrails]] · [[Safety-allowlist]] · [[Passport-confiscation-protocol]] · [[Human-handoff]] · [[HOME]] · [[Ministry-of-Manpower]] · [[Multi-language-support]] · [[launch-blockers]]

## Open questions
- Does the 15-second latency figure carve out the crisis path? Nothing states it.
- Who is paged at 3am, and by what mechanism?
- Does "queue authority notification" for abuse cases mean Ming Hwee reports to police directly, and how does that interact with the helper's own consent?
