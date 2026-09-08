---
type: source
title: Comprehensive Singapore HR Agency Knowledge Base
created: 2026-09-01
updated: 2026-09-01
review_by: 2026-11-30
status: contested
confidence: medium
sensitivity: internal
sources: ["raw/comprehensive-hr-agency-knowledge-base (1).docx"]
source_hash: 307a84b46c7678c1
retrieved: 2026-09-01
author: unattributed (updated September 2025)
tags: [knowledge-base, rag-corpus, costs, eligibility, stale-data]
---

# Comprehensive Singapore HR Agency Knowledge Base

## What this is
A 20-section master knowledge base covering MDW employment end to end: KB architecture and taxonomy, employer services, MDW rights, the regulatory framework, agency operations, and the support ecosystem. Dated September 2025 and unattributed. It is the broadest RAG-corpus document in the collection, and also the one most in tension with the dynamic-data rules — it hardcodes exactly the values Guardrail 14 forbids quoting.

## Key claims
- Content is organised into four primary categories (employer guidance, MDW rights and protection, regulatory compliance, support services) across 24 subcategories, 200+ topics, 500+ procedures and a 1000+ entry FAQ database. (src: raw/comprehensive-hr-agency-knowledge-base (1).docx §1.1–1.2 · 2026-09-01)
- Source authority is tiered: MOM and the governing Acts are primary with daily monitoring; embassies and court decisions secondary with weekly monitoring; NGO and academic material tertiary with monthly monitoring. (src: raw/comprehensive-hr-agency-knowledge-base (1).docx §2.1 · 2026-09-01)
- Update service levels: regulatory changes affecting worker safety, emergency procedures, fee changes and legal requirements are "critical" with a 0–2 hour response time. (src: raw/comprehensive-hr-agency-knowledge-base (1).docx §2.2 · 2026-09-01)
- Employer eligibility: minimum age 21; Singapore Citizen, PR or eligible work pass holder; demonstrated financial capacity; no bankruptcy or serious criminal convictions. (src: raw/comprehensive-hr-agency-knowledge-base (1).docx §4.1 · 2026-09-01)
- Employment Pass holders are stated as eligible with salary at or above SGD 12,000. (src: raw/comprehensive-hr-agency-knowledge-base (1).docx §4.1 · 2026-09-01)
- MDW eligibility: female only, aged 23 to under 50 at first application, minimum 8 years formal education, medical fitness, clean criminal record, negative pregnancy test. (src: raw/comprehensive-hr-agency-knowledge-base (1).docx §4.2 · 2026-09-01)
- Approved source countries listed are the Philippines, Indonesia and Myanmar, with Bangladesh, India and Sri Lanka named as other approved countries. (src: raw/comprehensive-hr-agency-knowledge-base (1).docx §4.2 · 2026-09-01)
- Security bond is stated as SGD 5,000 per non-Malaysian MDW, refundable on proper termination and forfeitable for serious violations or illegal deployment. (src: raw/comprehensive-hr-agency-knowledge-base (1).docx §6.1 · 2026-09-01)
- Agency fees are capped at one month's salary per year of service, to a maximum of two months, payable after IPA approval and before arrival, with upfront collection before placement prohibited. (src: raw/comprehensive-hr-agency-knowledge-base (1).docx §6.1 · 2026-09-01)
- Setup costs are given as work permit application SGD 35, medical examination SGD 50–80, insurance premiums SGD 300–600 annually, transport SGD 150–300, and SIP plus EOP fees SGD 75 total. (src: raw/comprehensive-hr-agency-knowledge-base (1).docx §6.1 · 2026-09-01)
- Levy is stated as SGD 300/month for a first MDW and SGD 450/month for a second, with a concessionary rate of SGD 60/month, due by the 14th of each month with a 1.5% monthly late penalty. (src: raw/comprehensive-hr-agency-knowledge-base (1).docx §6.2 · 2026-09-01)
- Levy concession eligibility is stated as a child under 16, an elderly person aged 67 or older, or a person with assessed disability need, capped at 2 concessions per household. (src: raw/comprehensive-hr-agency-knowledge-base (1).docx §6.2 · 2026-09-01)
- Medical emergency protocol directs employers to call 995 for ambulance or fire and 999 for police, notify the agency within 24 hours, and submit an incident report to MOM if required. (src: raw/comprehensive-hr-agency-knowledge-base (1).docx §7.1 · 2026-09-01)
- Medical leave must be respected: no work during certified sick leave, salary continues. (src: raw/comprehensive-hr-agency-knowledge-base (1).docx §7.1 · 2026-09-01)

> [!inference] Not stated in any source
> This document appears to predate the v1.2.0 dynamic-data refactor and was written against a different governance model — one where values live in the KB rather than the portal. That would explain why it hardcodes figures the current guardrails forbid quoting. Its September 2025 date is consistent with this, but no source states the relationship between this document and the numbered module set. Unverified.

## Pages updated by this source
- [[Employer-eligibility-screening]] — employer and MDW eligibility criteria
- [[Dynamic-data-architecture]] — a worked example of the staleness problem
- [[Ministry-of-Manpower]] — levy, bond, permit fees as recorded here
- [[EA-licence-compliance]] — agency fee cap and payment timing
- [[Helper-rights]] — medical leave and emergency procedure
- [[Crisis-escalation]] — the employer-side emergency protocol
- [[Multi-language-support]] — the multi-language implementation section

## Open questions this source raises
- The document is unattributed and its relationship to the numbered KB modules is unstated. Is it a predecessor of the module set, a parallel document, or a vendor-supplied corpus?
- It cites "2024 Regulations" for agency fees and "2024 Rates" for levy while being dated September 2025. Were the figures re-verified at the September 2025 update, or carried forward?
- Elderly concession age is stated here as 67, but the vendor brief lists this threshold as unverified since KB v1.0. Which is authoritative?
- Bangladesh, India and Sri Lanka are listed as approved source countries, but every other document in the corpus addresses only the Philippines, Indonesia and Myanmar. Does Ming Hwee place from those countries?

## Conflicts introduced
- The elderly concession age of 67 stated here conflicts with the vendor brief's position that the threshold remains unverified and is a launch blocker. See conflict block on [[Ministry-of-Manpower]].
- Every regulatory figure in §6 is a hardcoded value of exactly the kind Guardrail 14 forbids the bot quoting from training data. Because this document is in the RAG corpus, retrieval can surface these numbers directly. See conflict block on [[Dynamic-data-architecture]].
