---
type: concept
title: Lead Qualification
created: 2026-09-01
updated: 2026-09-01
review_by: 2026-12-01
status: draft
confidence: high
sensitivity: client-confidential
sources: ["raw/Thomas (Proposal for AI-Powered Chatbot System) (1).docx", "raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx", raw/01-chatbot-identity-guardrails.md, "raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx"]
tags: [sales, leads, scoring, nurture]
---

# Lead Qualification

## Definition
Capturing a prospective employer's details conversationally rather than through a form, scoring the resulting lead, and routing it by score. (src: raw/Thomas (Proposal for AI-Powered Chatbot System) (1).docx §3.1–3.2 · 2026-09-01)

## Why it matters here
It is the commercial half of the system, and the half most likely to be applied where it should not be. The constraint that shapes the whole design: **lead capture must never trigger during a complaint, crisis, or emotional support conversation.** (src: raw/START-HERE-VENDOR-BRIEF.md §8 · 2026-09-01)

## Conversational intake
Progressive short questions instead of a long form, capturing name, contact information, hiring requirements, budget, timeline and preferred candidate profile, with a backend client account created and interaction history stored. (src: raw/Thomas (Proposal for AI-Powered Chatbot System) (1).docx §3.1 · 2026-09-01)

A retained principle from the vendor proposal: **write every answer before asking the next question.** Called "an excellent recovery principle — prevents lost leads when sessions expire", and mandated across WhatsApp, website journeys and portal forms. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §3 · 2026-09-01)

## Scoring and routing
(src: raw/Thomas (Proposal for AI-Powered Chatbot System) (1).docx §3.2, §4.A · 2026-09-01)

| Band | Score | Routing |
|---|---|---|
| Hot | 7+ | Priority alert to staff, immediate appointment booking link |
| Warm | 4–6 | Standard nurture sequence |
| Cold | below 4 | Nurture campaign, then cold archive |

Example criteria: immediate hiring intent scores high, confirmed budget medium, just browsing low.

**Correction:** the original formula was based only on sales qualification. MOM eligibility status must be incorporated at **40% weight** — an ineligible lead is not a hot lead regardless of intent. See [[Employer-eligibility-screening]]. (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §8 · 2026-09-01)

## Nurture and recovery
(src: raw/Thomas (Proposal for AI-Powered Chatbot System) (1).docx §4.C · 2026-09-01)

| Trigger | Action |
|---|---|
| T+24 hours | Automated nudge if the conversation was left unfinished |
| T+72 hours | Value content, e.g. a guide on hiring costs and timelines |
| T+7 days | Final soft check-in before moving to Cold archive |
| T+30 days | Automatic reactivation if a cold lead returns to the website |

Returning customers are recognised by phone number, greeted by name, and given status updates on current applications. (src: raw/Thomas (Proposal for AI-Powered Chatbot System) (1).docx §4.B · 2026-09-01)

## Capture protocol
Contact details are requested after the bot has delivered substantial value — explained the process, shared costs, compared nationalities — or when the user says they are not ready to book, or before an after-hours handoff. Capture requires PDPA consent. (src: raw/01-chatbot-identity-guardrails.md §1.3, §1.6 · 2026-09-01)

Every lead must carry source, owner, SLA clock and audit record. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §8 · 2026-09-01)

## Gotchas
- The single most important rule on this page is a prohibition, not a capability: no lead capture during complaints, crises or emotional support. A helper in distress and a browsing employer are both "conversations" to a scoring engine. (src: raw/START-HERE-VENDOR-BRIEF.md §8 · 2026-09-01)
- Self-harm indicators must trigger crisis routing with no lead capture, no upsell and no survey. (src: raw/START-HERE-VENDOR-BRIEF.md §8 · 2026-09-01)
- Guardrail 2 forbids quoting Ming Hwee placement fees during qualification — published government costs only. Whether that gating survives is an open commercial question. See [[Chatbot-guardrails]]. (src: raw/01-chatbot-identity-guardrails.md §1.4 · 2026-09-01)
- Budget may be captured over public WhatsApp only as a range or "not sure", never as income documentation. See [[Sensitive-data-boundary]]. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §9 · 2026-09-01)
- ML-based predictive lead scoring is explicitly deferred: "We will not follow the ML approach in phase 1." Phase 1 scoring is rule-based. (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §Comment · 2026-09-01)

## Related
[[Employer-eligibility-screening]] · [[Workflow-inventory]] · [[Airtable]] · [[Cal.com]] · [[Chatbot-guardrails]] · [[Sensitive-data-boundary]] · [[Human-handoff]] · [[Candidate-employer-matching]]

## Open questions
- What are the actual scoring criteria and weights, now that eligibility takes 40%?
- How is "complaint or crisis conversation" detected reliably enough to suppress capture? This is a classifier requirement, not a prompt rule.
