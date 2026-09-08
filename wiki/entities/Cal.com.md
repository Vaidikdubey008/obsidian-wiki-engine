---
type: entity
title: Cal.com
created: 2026-09-01
updated: 2026-09-01
review_by: 2026-12-01
status: draft
confidence: high
sensitivity: internal
sources: ["raw/Thomas (Proposal for AI-Powered Chatbot System) (1).docx", "raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx"]
tags: [platform, scheduling, booking]
---

# Cal.com

## What it is
The appointment scheduling system for consultation bookings, confirmed by Ming Hwee over the alternatives. (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §Q8 · 2026-09-01)

## Why it was chosen
A reviewer proposed replacing Calendly/Google Calendar with the GoHighLevel Calendar API. Ming Hwee declined and chose Cal.com explicitly to avoid introducing a second CRM: "We are going to use cal.com not ghl calendar as it would introduce another crm system." (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §5 · 2026-09-01)

This is the same reasoning that led to GoHighLevel being declined altogether. See [[vendor-scope-realignment]]. (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §Q7 · 2026-09-01)

## How it is used in this project
- WF-04 Booking Flow, triggered on booking intent, marked "Verify (Using Cal.com)". (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §9 · 2026-09-01)
- Outlook Calendar syncs into Cal.com. (src: raw/Thomas (Proposal for AI-Powered Chatbot System) (1).docx §3.4 · 2026-09-01)
- Features used: real-time slot availability, booking confirmation, automatic meeting link generation, rescheduling, cancellation. (src: raw/Thomas (Proposal for AI-Powered Chatbot System) (1).docx §3.4 · 2026-09-01)
- Reminder notifications fire 1 day, 2 hours and 30 minutes before the meeting. (src: raw/Thomas (Proposal for AI-Powered Chatbot System) (1).docx §3.4 · 2026-09-01)
- Appointment tools must respect consultant queues, calendars and human handoff rules. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §8 · 2026-09-01)

## Known issues / conflicts
The vendor proposal's integration list says "Calendly or Cal.com" in one section while specifying Cal.com in another. The clarification review settles this in favour of Cal.com. (src: raw/Thomas (Proposal for AI-Powered Chatbot System) (1).docx §3.4, §8; raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §Q8 · 2026-09-01)

## Projects using this
- Ming Hwee Assistant chatbot — consultation booking from chat

## Related
[[Lead-qualification]] · [[Workflow-inventory]] · [[Human-handoff]] · [[vendor-scope-realignment]]
