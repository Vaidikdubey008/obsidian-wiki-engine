---
type: entity
title: n8n
created: 2026-09-01
updated: 2026-09-01
review_by: 2026-12-01
status: draft
confidence: high
sensitivity: internal
sources: ["raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx"]
tags: [platform, orchestration, workflows, automation]
---

# n8n

## What it is
The workflow orchestration layer. All sixteen workflows in [[Workflow-inventory]] run as n8n workflows, triggered by Respond.io webhooks, Airtable changes, or CRON schedules. (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §9 · 2026-09-01)

## How it is used in this project
- **Eligibility (WF-09):** triggered after the chatbot collects data, runs the 7-criteria MOM check, determines outcome, updates Airtable. See [[Employer-eligibility-screening]]. (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §4 · 2026-09-01)
- **Document OCR (WF-10):** receives a file from [[Respond.io]] and calls the OCR service via an HTTP Request node. (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §OCR · 2026-09-01)
- **Email dispatch (WF-12):** selects a SendGrid template, personalises it and sends, because Respond.io cannot broadcast email. (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §6 · 2026-09-01)
- **Lead scoring:** calculates the score used to route Hot, Warm and Cold leads. See [[Lead-qualification]]. (src: raw/Thomas (Proposal for AI-Powered Chatbot System) (1).docx §4.A · 2026-09-01)
- **ATS bridge:** connects [[Airtable]] employer records with [[Manatal]] candidate records. (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §7 · 2026-09-01)
- **SLA monitoring (WF-15):** CRON every 2 hours checking document and sales-contact deadlines — though Ming Hwee scopes this out of the chatbot. (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §4, §9 · 2026-09-01)

## Integration notes
- Required email templates cover eligibility outcomes, sales notifications, nurture drips, pre-arrival compliance and post-placement check-ins. (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §6 · 2026-09-01)
- Ming Hwee's comment marks several of these email categories as "will not manage via chatbot", so the ownership boundary between n8n workflows and chatbot behaviour is not fully settled. (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §6, §9 · 2026-09-01)

## Known issues / conflicts
The OCR service n8n calls is specified twice, differently — see the conflict block on [[Employer-eligibility-screening]].

## Projects using this
- Ming Hwee Assistant chatbot — all backend workflow orchestration

## Related
[[Workflow-inventory]] · [[Respond.io]] · [[Airtable]] · [[Manatal]] · [[Employer-eligibility-screening]] · [[Lead-qualification]]
