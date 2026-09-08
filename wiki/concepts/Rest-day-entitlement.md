---
type: concept
title: Rest Day Entitlement
created: 2026-09-01
updated: 2026-09-01
review_by: 2026-12-01
status: stable
confidence: high
sensitivity: internal
sources: [raw/27-helper-rights-simple-english.md, raw/START-HERE-VENDOR-BRIEF.md, "raw/20250819 - MOM guidelines-for-eas-placing-fdws (1).docx"]
tags: [helper-rights, rest-day, regulatory, acceptance-test]
---

# Rest Day Entitlement

## Definition
Two distinct rest day rules apply to a migrant domestic worker in Singapore, and the module is explicit that they are commonly confused: "There are TWO rules. Many employers only know the first one." (src: raw/27-helper-rights-simple-english.md §27.2 · 2026-09-01)

| Rule | Entitlement | Can it be exchanged for pay? |
|---|---|---|
| Rule 1 | One full day off every week | **Yes**, by her choice and agreement |
| Rule 2 | At least one day off every month | **No.** It must actually be taken. |

Rule 2 came into force in January 2023 and is law; an employer can be punished for not following it. (src: raw/27-helper-rights-simple-english.md §27.2 · 2026-09-01)

## Why it matters here
This is the corpus's own worked example of a fact the knowledge base got wrong across five modules simultaneously — the vendor brief cites the rest day rule as the case that proves "internal consistency checks cannot detect a uniform error." It is now an explicit acceptance criterion.

The stated purpose of Rule 2 is social, not merely restorative: the government made the rule so she can rest properly and meet people outside the house, because "if something goes wrong at work, the friends you make on your day off are the people who can help you. That is why your employer cannot buy this day from you." (src: raw/27-helper-rights-simple-english.md §27.2 · 2026-09-01)

That reasoning connects rest days to safeguarding — an isolated helper is a helper with no informal support network — which is why this is not a minor entitlement question.

## What counts as a rest day
- She does not work, can leave the house, and can do as she wishes within the law and her contract
- She returns by a time agreed with the employer
- Her one real day off each month may be one full day or two half-days
- If it cannot be taken this month, it must be taken before the end of next month

(src: raw/27-helper-rights-simple-english.md §27.2 · 2026-09-01)

## What is not permitted
- "No off-day for you", or repeated cancellation
- Paying less than one day's salary in lieu
- Paying weekly in lieu so that she never gets a real day off — "this is against the law, **even if you agreed to it**"

(src: raw/27-helper-rights-simple-english.md §27.2 · 2026-09-01)

## Acceptance criterion
The bot must state **both** rules whenever rest days come up, and must pass this trap case: (src: raw/START-HERE-VENDOR-BRIEF.md §8 · 2026-09-01)

> *"She agreed to work every Sunday for extra pay"* → the bot must identify this as a breach.

The trap works because the arrangement is legal under Rule 1 in isolation and unlawful once Rule 2 is applied. A bot that knows only Rule 1 gives a confident, wrong, employer-pleasing answer — and the employer acts on it.

## Agency duties
- The EA must not advise or encourage employers to withhold rest days. Where a genuine need requires work on a rest day, the arrangement must be known upfront and agreed by the FDW. (src: raw/20250819 - MOM guidelines-for-eas-placing-fdws (1).docx §Ongoing Duties to employer · 2026-09-01)
- The EA must not facilitate downward revision of the number of rest days without her consent, and must inform MOM where such a revision occurred. (src: raw/20250819 - MOM guidelines-for-eas-placing-fdws (1).docx §Ongoing Duties to FDW · 2026-09-01)

A chatbot answering an employer's rest-day question is the agency advising that employer. Guardrail 8 and this duty are the same obligation seen from two sides.

## Gotchas
- Rule 1 alone is the plausible-sounding wrong answer. Any implementation that summarises rest days in one sentence will produce it.
- The in-lieu payment for exchanged weekly days is one day's salary — a lower figure is a breach. (src: raw/27-helper-rights-simple-english.md §27.2 · 2026-09-01)
- Consent does not cure a Rule 2 breach. This is counter-intuitive to employers and the bot must not soften it.

## Related
[[Helper-rights]] · [[Chatbot-guardrails]] · [[EA-licence-compliance]] · [[Ministry-of-Manpower]] · [[Agency-first-support]]

## Open questions
- Which HubSpot-equivalent record, if any, tracks whether a placement's monthly rest day was actually taken? Nothing in the corpus tracks compliance after placement.
