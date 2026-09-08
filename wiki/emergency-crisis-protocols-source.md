---
type: source
title: Emergency Response & Crisis Management Protocols
created: 2026-09-01
updated: 2026-09-01
review_by: 2026-11-30
status: contested
confidence: high
sensitivity: internal
sources: ["raw/emergency-response-crisis-protocols (1).docx"]
source_hash: 15d009daf837854d
retrieved: 2026-09-01
author: unattributed (specialised module for Singapore MDW chatbot)
tags: [safeguarding, crisis, emergency, multilingual, testing]
---

# Emergency Response & Crisis Management Protocols

## What this is
A specialised safeguarding module for the MDW chatbot, carrying a "LIFE-CRITICAL" implementation notice. It defines the emergency decision tree, multi-language trigger keywords, the emergency contact database, translated crisis scripts, three crisis workflows, escalation code, and an emergency testing suite. It is undated and unattributed.

## Key claims
- Level 1 detection triggers on keywords across five languages (English, Tagalog, Indonesian, Burmese, Chinese) spanning physical violence, sexual abuse, threats, and medical emergency. (src: raw/emergency-response-crisis-protocols (1).docx §Emergency Response Decision Tree · 2026-09-01)
- On emergency detection the system displays a call-999 instruction, alerts a human operator immediately, logs a critical incident with timestamp, and continues providing emergency contacts. (src: raw/emergency-response-crisis-protocols (1).docx §Immediate Response Protocol · 2026-09-01)
- Level 2 crisis indicators — handled below the immediate-danger threshold — include abuse reports without immediate danger, severe distress or depression, missing persons, serious illness, document confiscation, and extended salary non-payment. (src: raw/emergency-response-crisis-protocols (1).docx §Level 2 · 2026-09-01)
- The emergency contact database lists police/ambulance/fire 999, the MOM 24/7 report line 6438 5122, and the MOM MDW helpline 1800 339 5505 at Mon–Fri 8:30am–5:30pm. (src: raw/emergency-response-crisis-protocols (1).docx §Emergency Contact Database · 2026-09-01)
- Crisis intervention hotlines listed include HOME on +65 9787 3122 (24/7, WhatsApp, five languages, offering crisis shelter and legal aid) and HealthServe on +65 3157 4460 (24/7, medical and mental health crisis). (src: raw/emergency-response-crisis-protocols (1).docx §Crisis Intervention Hotlines · 2026-09-01)
- Embassy emergency contacts are listed for the Philippines, Indonesia and Myanmar, with a note that Myanmar services are limited "due to political situation." (src: raw/emergency-response-crisis-protocols (1).docx §Embassy Emergency Support · 2026-09-01)
- Full crisis scripts are provided in Tagalog, Indonesian and Burmese, each pairing the local-language text with an English gloss and closing on a reassurance line such as "You are not alone." (src: raw/emergency-response-crisis-protocols (1).docx §Language-Specific Emergency Responses · 2026-09-01)
- Three crisis workflows are specified as flowcharts: physical abuse emergency, mental health crisis (including Samaritans 1800 221 4444), and missing person protocol (police report required beyond 24 hours). (src: raw/emergency-response-crisis-protocols (1).docx §Crisis Response Workflows · 2026-09-01)
- Severity classification defines CRITICAL with a response time of 0 seconds, HIGH within 1 second, and MEDIUM within 3 seconds. CRITICAL and HIGH both mandate escalation and human intervention. (src: raw/emergency-response-crisis-protocols (1).docx §Severity Classification · 2026-09-01)
- Physical and sexual abuse incident types queue an authority notification in addition to alerting human operators. (src: raw/emergency-response-crisis-protocols (1).docx §Critical Incident Logging · 2026-09-01)
- Emergency responses are validated against five mandatory elements — emergency number, immediate safety instruction, support contact, reassurance, follow-up action — and fail closed to urgent review if any is missing. (src: raw/emergency-response-crisis-protocols (1).docx §Response Quality Assurance · 2026-09-01)
- Load testing requires all emergency responses to complete in under 1 second under 100 simultaneous emergency reports. (src: raw/emergency-response-crisis-protocols (1).docx §Load Testing · 2026-09-01)
- The pre-launch checklist requires multi-language accuracy verified by native speakers, emergency templates approved by a legal team, mental health responses reviewed by professionals, and a 99.9% uptime SLA. (src: raw/emergency-response-crisis-protocols (1).docx §Deployment Checklist · 2026-09-01)

## Pages updated by this source
- [[Crisis-escalation]] — detection, severity tiers, workflows, response-time requirements
- [[HOME]] — contact details and services
- [[Ministry-of-Manpower]] — the 24/7 report line versus the helpline
- [[Multi-language-support]] — five-language keyword detection and translated scripts
- [[Agency-first-support]] — the external-routing side of the conflict
- [[Human-handoff]] — operator alerting and incident logging

## Open questions this source raises
- The document is undated and unattributed. Where does it sit in the KB module numbering, and which version approved it?
- Keyword matching is exact substring matching in a lowercase comparison. How does this handle Burmese and Chinese scripts, negation ("he did not hit me"), or misspelling under distress?
- Who are the "human operators" and does the paging mechanism exist? The vendor brief lists the out-of-hours rota as an unresolved blocker.
- "Queue authority notification" for abuse cases — does Ming Hwee notify authorities directly, and is that consistent with the helper's own consent?

## Conflicts introduced
- Response-time requirements here (CRITICAL 0 seconds, all emergency responses under 1 second) contradict the client's stated minimum AI latency of 15 seconds. See conflict block on [[Crisis-escalation]].
- Routing several Level 2 categories (document confiscation, extended salary non-payment) to external bodies contradicts the agency-first principle in Modules 01 and 27. See conflict block on [[Agency-first-support]].
