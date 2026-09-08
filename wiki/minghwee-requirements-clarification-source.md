---
type: source
title: Ming Hwee — Chatbot Solution Architecture Review & Clarification
created: 2026-09-01
updated: 2026-09-01
review_by: 2026-11-30
status: stable
confidence: high
sensitivity: client-confidential
sources: ["raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx"]
source_hash: c84893f15865f111
retrieved: 2026-09-01
author: Ming Hwee (11 March 2026)
tags: [ming-hwee, architecture-review, workflows, client-decisions, blockers]
---

# Ming Hwee — Chatbot Solution Architecture Review & Clarification

## What this is
An architecture review dated 11 March 2026 that raises eleven issues against the vendor proposal and carries Ming Hwee's inline responses to each. It is the most direct record of client decisions in the corpus: where a reviewer proposal and a "Comment:" line disagree, the comment is Ming Hwee speaking.

## Key claims
- Two items are marked as blockers: XCally is still referenced for human handoff despite having been eliminated, and the 7-step MOM eligibility engine is entirely absent. (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §3, §4 · 2026-09-01)
- The eligibility engine must check seven MOM criteria: age, bankrupt status, mental capacity, income, care need, accommodation, and EOP completion. It is described as "the core business logic of Ming Hwee." (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §4 · 2026-09-01)
- Respond.io replaces XCally for all communication functions including human agent handoff, using native assignment rules and the unified thread for context delivery. Ming Hwee's comment confirms: "We planned Respond.IO." (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §3 · 2026-09-01)
- The workflow inventory expands from the vendor's 8 workflows to 16. Eight are new and marked MUST ADD. See [[Workflow-inventory]]. (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §9 · 2026-09-01)
- Ming Hwee scopes four of the sixteen out of the chatbot: GoHighLevel lead sync, candidate matching, and SLA monitoring are "not handle via Chatbot." (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §9 · 2026-09-01)
- Latency: the reviewer asks whether 15–20 seconds can be optimised below 8 seconds in Phase 2. Ming Hwee's answer is "The max latency will never less then 15," restated in Q4 and Q5 as an expectation of 15 seconds and an "AI minimum latency" of 15 seconds. (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §2, §Q4, §Q5 · 2026-09-01)
- Calendar: Cal.com is confirmed over GoHighLevel Calendar, explicitly to avoid introducing another CRM system. (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §5, §Q8 · 2026-09-01)
- Email broadcasting is not supported by Respond.io, so campaign and notification email routes through SendGrid via n8n. Ming Hwee confirms "We will use SendGrid (Twilio)." (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §6, §Q10 · 2026-09-01)
- Candidate data should sync to Manatal as the ATS for candidates, with Airtable holding employer records and n8n connecting them. Ming Hwee limits Manatal-sourced candidate delivery to the website only. (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §7, §Q11 · 2026-09-01)
- Lead scoring must incorporate MOM eligibility status at 40% weight, correcting a formula based only on sales qualification. (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §8 · 2026-09-01)
- Document upload and OCR has no documented pipeline. The review requires WF-10 using Google Document AI via an n8n HTTP Request node; Ming Hwee's answer to the OCR question is "OCR PLatform will be google gemini." (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §OCR, §Q9 · 2026-09-01)
- Respond.io supports file uploads up to 20MB. (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §OCR · 2026-09-01)
- Machine learning is deferred: "We will not follow the ML approach in phase 1." Future capabilities listed for later phases include predictive lead scoring on 10,000+ past conversations, custom candidate matching, churn prediction, a domain-specific fine-tuned LLM, and A/B testing of conversation strategies. (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §1, §Comment · 2026-09-01)
- Custom candidate matching by ML "can't be manage on chatbot. We can either manage from Portal." (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §1 · 2026-09-01)
- Pinecone is confirmed as the store backing future ML features, with cost at 50,000 conversations to be advised after R&D. (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §Q1, §Q6 · 2026-09-01)
- GoHighLevel is declined: "Not mention of GHL." (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §Q7 · 2026-09-01)
- Eligibility is confirmed as in scope for the chatbot: "we are taking elegibility unders chatbot only." (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §Q2 · 2026-09-01)

## Pages updated by this source
- [[Employer-eligibility-screening]] — the seven MOM criteria and the 40% scoring weight
- [[Workflow-inventory]] — all sixteen workflows and their status
- [[Respond.io]] — confirmed as gateway and handoff target
- [[XCally]] — confirmed eliminated
- [[Manatal]] — ATS role and website-only limitation
- [[Cal.com]] — confirmed over GoHighLevel Calendar
- [[n8n]] — orchestration role for OCR and email
- [[Lead-qualification]] — eligibility weighting correction
- [[Human-handoff]] — Respond.io native assignment
- [[vendor-scope-realignment]] — the client decision record

## Open questions this source raises
- OCR is specified as Google Document AI in the requirement and as "google gemini" in Ming Hwee's answer. These are different products. Which is it?
- If candidate matching and SLA monitoring are out of chatbot scope, which system owns WF-14 and WF-15, and is that work funded?
- "Max latency will never less then 15" — is 15 seconds a floor, a ceiling, or a target? The phrasing supports either reading and the two have opposite engineering consequences.
- Pinecone cost at 50,000 conversations remains unanswered pending R&D.
- What are the seven eligibility criteria's actual thresholds? The criteria are named but no values are given here.

## Conflicts introduced
- The OCR platform is specified twice within this one document as two different products. See conflict block on [[Employer-eligibility-screening]].
- A 15-second minimum AI latency conflicts with the sub-1-second emergency response requirement in the crisis protocols. See conflict block on [[Crisis-escalation]].
- Manatal is confirmed here but replaced three months later by the Ming Hwee OS Matching Engine. See conflict block on [[Candidate-employer-matching]].
