---
type: concept
title: Workflow Inventory
created: 2026-09-01
updated: 2026-09-01
review_by: 2026-12-01
status: draft
confidence: high
sensitivity: client-confidential
sources: ["raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx"]
tags: [workflows, n8n, scope, build]
---

# Workflow Inventory

## Definition
The sixteen backend workflows the system runs, expanded from the vendor's original eight during the March 2026 architecture review. All run on [[n8n]]. (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §9 · 2026-09-01)

## The sixteen workflows
(src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §9 · 2026-09-01)

| ID | Name | Trigger | Status |
|---|---|---|---|
| WF-01 | New Message Handler | [[Respond.io]] webhook | Minor corrections |
| WF-02 | Lead Qualification | WF-01 routes here | Must expand to include eligibility |
| WF-03 | AI Response Engine | Complex queries | Redesign as hybrid for phase 1? |
| WF-04 | Booking Flow | Booking intent | Verify — using [[Cal.com]] |
| WF-05 | Nurture Scheduler | Daily CRON | Expand scenarios |
| WF-06 | Human Handoff | Escalation | Via Respond.io (was [[XCally]]) |
| WF-07 | Post-Session Summary | Conversation closed | Correct |
| WF-08 | Status Notifier | Airtable change | Correct |
| WF-09 | Eligibility Calculator | WF-02 completes | **NEW — MUST ADD** |
| WF-10 | Document Upload | File received | **NEW — MUST ADD** |
| WF-11 | Resubmission Processor | Airtable updated | **NEW — MUST ADD** |
| WF-12 | Email Dispatcher | Eligibility outcome | **NEW — MUST ADD** |
| WF-13 | GHL Lead Sync | GoHighLevel webhook | **NEW — MUST ADD** |
| WF-14 | Candidate Matcher | Employer ELIGIBLE | **NEW — MUST ADD** |
| WF-15 | SLA Monitor | CRON every 2 hours | **NEW — MUST ADD** |
| WF-16 | Post-Placement | Placement date | **NEW — MUST ADD** |

## What Ming Hwee scoped out
Four of the eight new workflows are marked as not handled by the chatbot: "The highlighted points not handle via Chatbot (GHL, Candidate Matching and SLA monitoring)." (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §9 · 2026-09-01)

| Workflow | Status | Why |
|---|---|---|
| WF-13 GHL Lead Sync | Out — likely dead | GoHighLevel declined entirely: "Not mention of GHL" (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §Q7) |
| WF-14 Candidate Matcher | Out of chatbot | Matching is consultant-reviewed in the Matching Engine — see [[Candidate-employer-matching]] |
| WF-15 SLA Monitor | Out of chatbot | Not stated |
| Email categories in WF-12 | Partly out | "The highlighted points will not manage via chatbot" (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §6) |

This leaves an ownership gap: the work is still required by the operational design but is assigned to no system. See the open questions below.

## The four that must be built
WF-09 through WF-12 carry [[Employer-eligibility-screening]], the logic the review calls "the core business logic of Ming Hwee" and found entirely absent from the vendor specification. (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §4 · 2026-09-01)

## Gotchas
- WF-03's status is written as a question — "redesign as hybrid for phase 1?" — and the hybrid proposal it refers to (Respond.io answering simple FAQs under 5 seconds, custom pipeline for complex logic) was answered by Ming Hwee with a flat 15-second latency expectation rather than a yes or no. WF-03's design is therefore unsettled. (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §9, §Q4 · 2026-09-01)
- WF-10's trigger is "file received via Respond.io", but [[Sensitive-data-boundary]] forbids the documents it processes from arriving over public WhatsApp. The trigger and the boundary contradict each other in practice.
- WF-06 previously targeted XCally. Any implementation carrying that target forward is building against a decommissioned system. See [[Human-handoff]].
- None of the sixteen is a crisis workflow. The safeguarding path described in [[Crisis-escalation]] does not appear in this inventory at all, and the emergency protocols document specifies its own three workflows outside this numbering.

## Related
[[n8n]] · [[Respond.io]] · [[Employer-eligibility-screening]] · [[Lead-qualification]] · [[Human-handoff]] · [[Candidate-employer-matching]] · [[Cal.com]] · [[Sensitive-data-boundary]] · [[vendor-scope-realignment]]

## Open questions
- If WF-14 and WF-15 are out of chatbot scope, which system owns them and is that work funded?
- Is WF-13 dead, given GoHighLevel was declined?
- Why is there no crisis workflow in the inventory?
- What is WF-03's final design?
