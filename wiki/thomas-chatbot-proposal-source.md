---
type: source
title: Vendor Proposal — AI-Powered Chatbot System
created: 2026-09-01
updated: 2026-09-01
review_by: 2026-11-30
status: deprecated
confidence: high
sensitivity: client-confidential
sources: ["raw/Thomas (Proposal for AI-Powered Chatbot System) (1).docx"]
source_hash: f6703d7ce12018ab
retrieved: 2026-09-01
author: chatbot vendor
tags: [vendor-proposal, sales-automation, lead-management, superseded]
---

# Vendor Proposal — AI-Powered Chatbot System

## What this is
The original vendor proposal for an AI-powered chatbot covering sales automation, lead management and marketing funnel integration. It is the document that the later clarification review and the Ming Hwee OS vendor review pack both respond to. Substantial parts of it have since been overridden — see [[vendor-scope-realignment]].

## Key claims
- The system is positioned as a business automation engine rather than a live chat tool, targeting automation of 70–80% of business workflows. (src: raw/Thomas (Proposal for AI-Powered Chatbot System) (1).docx §1 · 2026-09-01)
- Phase 1 is "Sales Agent Mode": conversational lead capture, automated qualification and scoring, internal task creation, and appointment scheduling. Phase 2 is marketing funnel automation. (src: raw/Thomas (Proposal for AI-Powered Chatbot System) (1).docx §3 · 2026-09-01)
- Conversational intake replaces forms with progressive short questions, capturing name, contact, hiring requirements, budget, timeline and preferred candidate profile into Airtable. (src: raw/Thomas (Proposal for AI-Powered Chatbot System) (1).docx §3.1 · 2026-09-01)
- Leads are scored and categorised Hot, Warm or Cold, with cold leads entering nurture campaigns automatically. (src: raw/Thomas (Proposal for AI-Powered Chatbot System) (1).docx §3.2 · 2026-09-01)
- Routing thresholds: Hot leads at score 7 or above get a priority staff alert and an immediate booking link; Warm leads at 4–6 enter the standard nurture sequence. (src: raw/Thomas (Proposal for AI-Powered Chatbot System) (1).docx §4.A · 2026-09-01)
- The nurture and recovery sequence runs at T+24 hours (nudge), T+72 hours (value content), T+7 days (soft check-in before cold archive) and T+30 days (automatic reactivation on website return). (src: raw/Thomas (Proposal for AI-Powered Chatbot System) (1).docx §4.C · 2026-09-01)
- Returning customers are recognised by phone number and greeted by name with status updates on current applications. (src: raw/Thomas (Proposal for AI-Powered Chatbot System) (1).docx §4.B · 2026-09-01)
- Candidate matching is described as a recommendation engine: clients specify language, experience, region and work history; the system queries and filters the candidate database and presents top profiles interactively before moving to interview booking. (src: raw/Thomas (Proposal for AI-Powered Chatbot System) (1).docx §4.D, §7 · 2026-09-01)
- A crisis protocol is included: hardcoded detection for sensitive keywords such as "abuse" and "injury", after which the AI stops immediately and routes to a senior manager's priority CRISIS queue. (src: raw/Thomas (Proposal for AI-Powered Chatbot System) (1).docx §5 · 2026-09-01)
- Human-in-the-loop rule: if the AI fails to understand a request twice, it transitions to a live human agent with full context. (src: raw/Thomas (Proposal for AI-Powered Chatbot System) (1).docx §5 · 2026-09-01)
- Post-placement care runs automated satisfaction surveys at day 7, 30 and 90 after deployment. (src: raw/Thomas (Proposal for AI-Powered Chatbot System) (1).docx §5 · 2026-09-01)
- Appointment scheduling integrates Cal.com with Outlook Calendar synced to Cal.com, with reminders at 1 day, 2 hours and 30 minutes before the meeting. (src: raw/Thomas (Proposal for AI-Powered Chatbot System) (1).docx §3.4 · 2026-09-01)
- The stated integration set is Airtable for lead storage, a candidate database, "Calendly or Cal.com", the WhatsApp API, and SMS providers. (src: raw/Thomas (Proposal for AI-Powered Chatbot System) (1).docx §8 · 2026-09-01)
- Infrastructure is prepared for English language only. (src: raw/Thomas (Proposal for AI-Powered Chatbot System) (1).docx §2 · 2026-09-01)
- Stated objectives include reducing lead response time from hours to under 5 minutes and automating 60% of repetitive FAQs. (src: raw/Thomas (Proposal for AI-Powered Chatbot System) (1).docx §2 · 2026-09-01)
- Expected outcomes include a 70% reduction in manual follow-ups and faster payment collection. (src: raw/Thomas (Proposal for AI-Powered Chatbot System) (1).docx §9 · 2026-09-01)

## Pages updated by this source
- [[Lead-qualification]] — scoring bands, routing thresholds, nurture timings
- [[Candidate-employer-matching]] — the original recommendation-engine framing
- [[Crisis-escalation]] — the original keyword-and-queue design
- [[Human-handoff]] — the two-failure handoff rule
- [[Airtable]] — proposed lead store
- [[Cal.com]] — proposed scheduling integration
- [[vendor-scope-realignment]] — the baseline that was later revised

## Open questions this source raises
- The proposal is undated in its own text. Where does it sit relative to the March 2026 clarification and the June 2026 review pack?
- "Calendly or Cal.com" is left unresolved in the same document that elsewhere specifies Cal.com. Which was proposed?
- The crisis protocol routes to a "senior manager's priority CRISIS queue" but does not mention 999/995 at all. Was emergency-services routing simply out of scope for this document?
- No mention of MOM eligibility, regulatory data, or the portal. The clarification review later calls this the core business logic being absent.

## Conflicts introduced
- Marketing funnel work is proposed on GoHighLevel-style infrastructure that the client later declines. See conflict block on [[vendor-scope-realignment]].
- Candidate matching by direct database query conflicts with the later requirement that matching is deterministic and consultant-reviewed. See conflict block on [[Candidate-employer-matching]].
- The crisis design omits emergency-services routing entirely, which the guardrails module makes a non-negotiable deterministic check. See [[Crisis-escalation]].
