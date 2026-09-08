---
type: entity
title: XCally
created: 2026-09-01
updated: 2026-09-01
review_by: 2027-09-01
status: deprecated
confidence: high
sensitivity: internal
sources: ["raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx"]
tags: [platform, contact-centre, removed]
---

# XCally

## What it is
A contact-centre platform that was previously part of the architecture and has been **eliminated**. It is recorded here because its removal was a named blocker: the specification still referenced XCally as the WF-06 human handoff target after the decision to drop it had been made. (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §3 · 2026-09-01)

Ming Hwee's confirmation is unambiguous: "No respond.io is used." (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §Q3 · 2026-09-01)

## Why this page exists
[[Respond.io]] replaces XCally for **all** communication functions, including human agent handoff. See that page for the function-by-function replacement table. (src: raw/MING HWEE AGENCY - chatbot requriments and clarification (1).docx §3 · 2026-09-01)

The page is retained rather than deleted so that a stale XCally reference found in vendor deliverables can be recognised as a known defect rather than an undocumented integration.

## Known issues / conflicts
A decommissioned system surviving in a specification is the failure mode this entry guards against — it was caught in review as a blocker, not at build time.

## Projects using this
- None. Removed from the Ming Hwee Assistant architecture before implementation.

## Related
[[Respond.io]] · [[Human-handoff]] · [[Workflow-inventory]] · [[vendor-scope-realignment]]
