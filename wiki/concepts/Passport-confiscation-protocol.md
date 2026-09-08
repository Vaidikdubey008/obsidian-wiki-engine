---
type: concept
title: Passport Confiscation Protocol
created: 2026-09-01
updated: 2026-09-01
review_by: 2026-12-01
status: stable
confidence: high
sensitivity: client-confidential
sources: [raw/01-chatbot-identity-guardrails.md, raw/27-helper-rights-simple-english.md, "raw/20250819 - MOM-EA-licence-conditions (1).docx", "raw/20250819 - MOM guidelines-for-eas-placing-fdws (1).docx"]
tags: [safeguarding, passport, protocol, canonical]
---

# Passport Confiscation Protocol

## Definition
The single canonical procedure for handling a helper reporting that her passport has been withheld. Module 01.5a is the sole source of truth; Modules 22, 27 and 34 defer to it, and no variant protocol may exist elsewhere. (src: raw/01-chatbot-identity-guardrails.md §1.5a · 2026-09-01)

## Why it matters here
Withholding a helper's passport against her will is an offence. It is also, in practice, "often a control tactic that accompanies other mistreatment — so the chatbot treats it as a serious signal, not an administrative dispute." (src: raw/01-chatbot-identity-guardrails.md §1.5a · 2026-09-01)

The single-protocol rule exists because a variant elsewhere in a 59-module corpus would be retrieved and followed. Designating one canonical section is the control.

## The protocol
(src: raw/01-chatbot-identity-guardrails.md §1.5a · 2026-09-01)

**Step 1 — Assess urgency first, before any advice.** Ask whether she is safe in the house right now, and whether she needs the passport urgently.

**Step 2 — Route by answer.**

| Situation | Action |
|---|---|
| Unsafe, being confined, or afraid to stay | Police 999 now, then Ming Hwee. Treat as crisis — stay in chat. |
| Needs the passport to leave, or is prevented from leaving | Police 999 now. Wrongful confinement is a criminal matter. |
| Safe, and it is a dispute about custody of the document | Ming Hwee same-day escalation, **and** tell her she may report to MOM (1800-339-5505) herself at any time |

**Step 3 — Never do this.**
- Do not coach her to "ask one more time" as the default first step. Asking again is fine if she wants to, but it must not be presented as a required step before she is allowed to get help. **She has usually already asked.**
- Do not tell her to wait until office hours.
- Do not tell her to retrieve the passport herself from a safe, drawer or locked room.

**Step 4 — Always tell her** she is not in trouble, the law is on her side, and she may report this herself to MOM or the police whether or not Ming Hwee is involved.

## Note on the third branch
The safe-and-disputed branch is the only place in the corpus where the bot proactively offers a helper an external reporting route for a non-emergency matter. It sits inside the canonical protocol rather than against it — [[Agency-first-support]] forbids discouraging external contact, and here the protocol goes further and volunteers it.

## Regulatory basis
- The licensee must not enter into agreements with a foreign employee to retain or transfer her passport or work pass, except for the purpose of procuring employment. (src: raw/20250819 - MOM-EA-licence-conditions (1).docx §Condition 10 · 2026-09-01)
- The EA must not advise employers to keep the FDW's passport. MOM records instances of employers being wrongly advised to do so by their agencies. (src: raw/20250819 - MOM guidelines-for-eas-placing-fdws (1).docx §Ongoing Duties to employer · 2026-09-01)
- The EA must educate both parties before deployment that the FDW keeps her own Work Permit card. (src: raw/20250819 - MOM guidelines-for-eas-placing-fdws (1).docx §General duty to clients · 2026-09-01)

## Helper-facing wording
The Grade 6 module states the right plainly: the passport belongs to her, keeping it in a household safe is acceptable only if she knows the combination or has a key, and "I will give it back when contract is over" is not acceptable. (src: raw/27-helper-rights-simple-english.md §27.3 · 2026-09-01)

## Gotchas
- The helper-facing module's step 1 is "ask politely — please can I have my passport", which reads close to the "ask one more time" coaching Module 01.5a forbids as a *required* first step. The two are reconcilable — one describes what she may choose to do, the other forbids gating help behind it — but an implementation that reads only Module 27 would get this wrong. Module 01.5a governs. (src: raw/27-helper-rights-simple-english.md §27.3; raw/01-chatbot-identity-guardrails.md §1.5a · 2026-09-01)
- Acceptance testing checks specifically that the bot never coaches "ask your employer one more time" as a required first step. (src: raw/START-HERE-VENDOR-BRIEF.md §8 · 2026-09-01)
- The urgency assessment must come before any advice. A bot that leads with the rights explanation has already failed the protocol.

## Related
[[Crisis-escalation]] · [[Agency-first-support]] · [[Helper-rights]] · [[EA-licence-compliance]] · [[Ministry-of-Manpower]] · [[Chatbot-guardrails]]

## Open questions
- Modules 22 and 34, which defer to this protocol, are not present in this corpus and cannot be checked for variant wording.
