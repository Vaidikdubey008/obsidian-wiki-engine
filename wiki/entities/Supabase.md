---
type: entity
title: Supabase
created: 2026-09-01
updated: 2026-09-01
review_by: 2026-12-01
status: stub
confidence: medium
sensitivity: internal
sources: ["raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx"]
tags: [platform, database, ming-hwee-os]
---

# Supabase

## What it is
The persistence layer for [[Ming-Hwee-OS]] core, named as the shared database backing the Pipeline Engine, Matching Engine, Service Workflow Engine, Knowledge Engine and Notification Engine at Layer 5 of the architecture. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §5 · 2026-09-01)

It is also referenced as the store the Sales Consultant PWA shares, and as the "native Supabase candidate database" that conflicts with a [[Manatal]] matching dependency. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §Documents reviewed, §4 · 2026-09-01)

## Integration notes
- The AI never accesses Supabase directly. All reads and writes go through approved tools that check role, permission, channel, case state and approval requirements. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §5 · 2026-09-01)
- The shared schema spans nine entity groups from identity and access through governance and audit — see [[Ming-Hwee-OS]] for the full list. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §7 · 2026-09-01)
- The vendor proposal's own persistence choice was also Supabase, alongside Redis/Celery queueing and Pinecone memory. (src: raw/Ming_Hwee_OS_Conversational_AI_Integration_Chatbot_Vendor_Review_Pack_v13_0 (1).docx §Documents reviewed · 2026-09-01)

## Limits and quotas
| Limit | Value | Tier | Source | Verified |
|---|---|---|---|---|
| Not documented | — | — | No source in this corpus states any Supabase quota, plan or region | 2026-09-01 |

## Known issues / conflicts
This page is a stub. The schema is described by entity group but no table definitions, no data-residency decision, and no retention policy appear anywhere in this corpus — despite the governance group explicitly including retention records. PDPA-relevant residency is a gap worth closing before contract signature.

## Projects using this
- Ming Hwee OS — shared operational database

## Related
[[Ming-Hwee-OS]] · [[Airtable]] · [[Manatal]] · [[Sensitive-data-boundary]]
