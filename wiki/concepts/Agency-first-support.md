---
type: concept
title: Agency-First Support
created: 2026-09-01
updated: 2026-09-01
review_by: 2026-12-01
status: contested
confidence: high
sensitivity: client-confidential
sources: [raw/01-chatbot-identity-guardrails.md, raw/27-helper-rights-simple-english.md, "raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx", "raw/emergency-response-crisis-protocols (1).docx", "raw/20250819 - MOM guidelines-for-eas-placing-fdws (1).docx"]
tags: [routing, support, helper-care, policy]
---

# Agency-First Support

## Definition
The principle that [[Ming-Hwee-Agency]] is the first point of contact for helper concerns and manages each case through to resolution, rather than referring the helper to external welfare organisations. The chatbot's job is to take the concern properly, reassure her, capture what senior staff need, and hand over. (src: raw/01-chatbot-identity-guardrails.md §1.5 · 2026-09-01)

[[Crisis-escalation]] overrides this completely and without exception.

## Why it matters here
Four reasons are given. (src: raw/01-chatbot-identity-guardrails.md §1.5 · 2026-09-01)

1. Ming Hwee is responsible for the helper's well-being throughout the placement
2. It holds direct relationships with source-country recruiters and with the employer, so it can act on facts an outside body would first have to gather
3. It can mediate, move, or transfer her — "outcomes a complaint channel cannot deliver"
4. 43 years of casework means most situations are ones it has resolved before

This is also a regulatory duty, not only a commercial preference: MOM requires the EA to provide contact details, remain contactable, and render help "unreservedly and promptly" for at least the duration of the work permit. (src: raw/20250819 - MOM guidelines-for-eas-placing-fdws (1).docx §Ongoing Duties to FDW · 2026-09-01)

## What the chatbot must do in every helper concern
(src: raw/01-chatbot-identity-guardrails.md §1.5 · 2026-09-01)

- Take the concern fully and without rushing her
- Tell her clearly that Ming Hwee will handle it, and what happens next
- Give a concrete next step and a timeframe
- Generate the handoff brief and escalate — see [[Human-handoff]]

## What the chatbot must never do
(src: raw/01-chatbot-identity-guardrails.md §1.5 · 2026-09-01)

- Suggest a helper is on her own, or that Ming Hwee cannot help
- Discourage, criticise or question her if she says she has already contacted MOM or another body, or suggest that doing so puts her job, permit or placement at risk
- Ask her to promise not to contact anyone else
- Delay a safety step in order to route her through the agency first

The second of these matters most: it means agency-first is a routing default, not a containment strategy. She retains every external option, and the bot must not chill her use of it.

## Behaviour by situation
(src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §10 · 2026-09-01)

| Situation | Assistant behaviour |
|---|---|
| Normal employer concern | Acknowledge, create support case or task, route to assigned consultant. Do not direct to external authorities by default. |
| Normal helper concern | Reassure, encourage contacting Ming Hwee, create support case with severity |
| User angry or frustrated | Acknowledge emotion first, summarise, offer human handoff, log case |
| Abuse, violence, sexual harassment, medical emergency, immediate danger | Emergency/red-flag handling immediately — see [[Crisis-escalation]] |
| Legal or regulatory question | Safe high-level answer from approved content, offer consultant review |
| Refund or replacement demand | Structured service case. Do not promise a refund. Route for approval. |

The helper-facing module expresses the same split in Grade 6 English, listing salary, off-day, passport, food, accommodation, emotional support and repatriation as Ming Hwee matters. (src: raw/27-helper-rights-simple-english.md §27.7 · 2026-09-01)

> [!conflict] OPEN — non-emergency routing to external organisations
> - **Claim A:** For non-emergency helper concerns the bot routes to Ming Hwee only and "does not refer helpers to external welfare organisations" for matters Ming Hwee handles. For normal concerns the assistant should "not direct to external authorities by default." (src: raw/01-chatbot-identity-guardrails.md §1.5; raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §10 · 2026-09-01)
> - **Claim B:** The emergency protocols place **document confiscation** and **salary non-payment for extended periods** in Level 2 crisis support, and the Level 2 response framework provides "relevant support contacts" — in practice [[HOME]], MOM and the embassies. These are the same categories Claim A assigns to Ming Hwee. (src: raw/emergency-response-crisis-protocols (1).docx §Level 2 Crisis Support · 2026-09-01)
> - **Assessment:** The two documents agree completely on genuine emergencies and disagree on the tier below. The disagreement is substantive, not editorial: it is the difference between a helper with an unpaid-salary problem being handed her agency's WhatsApp number or an NGO shelter hotline. Note that Claim A is not a containment policy — it explicitly forbids discouraging her from contacting anyone — and that MOM's own guidelines require the EA to educate helpers on avenues to seek assistance, which cuts slightly toward Claim B. Note also that the emergency protocols document is undated and unattributed, while Claim A appears in two dated documents including the most recent architecture pack.
> - **Next step:** Decide per Level 2 category, in writing, and reconcile the emergency protocols document to that decision. A migrant-worker NGO review — already recommended in the vendor brief and never done — is the right forum, because the agency is not a neutral party to this question.
> - **Status:** open

## Gotchas
- The bot must never delay a safety step for agency routing. Where agency-first and safety appear to compete, safety wins by construction. (src: raw/01-chatbot-identity-guardrails.md §1.5 · 2026-09-01)
- MOM requires abuse allegations be referred to the police and salary non-payment to MOM, immediately or by the next working day. Agency-first governs who the *helper* is told to contact; it does not relieve the agency of its own reporting duties. (src: raw/20250819 - MOM guidelines-for-eas-placing-fdws (1).docx §General duty to clients · 2026-09-01)
- The promise implied by agency-first — a human who picks up the case — is unstaffed outside office hours. See [[launch-blockers]].

## Related
[[Crisis-escalation]] · [[Helper-rights]] · [[Human-handoff]] · [[HOME]] · [[Ministry-of-Manpower]] · [[Chatbot-guardrails]] · [[EA-licence-compliance]] · [[Passport-confiscation-protocol]]

## Open questions
- Which Level 2 categories, if any, should surface an external contact alongside Ming Hwee's?
- If a helper asks directly for an NGO number, may the bot give it? Nothing in the corpus addresses a direct request.
