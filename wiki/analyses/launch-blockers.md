---
type: analysis
title: What blocks launch, and who owns each blocker?
created: 2026-09-01
updated: 2026-09-01
review_by: 2026-10-01
status: stable
confidence: high
sensitivity: client-confidential
sources: [raw/START-HERE-VENDOR-BRIEF.md, raw/27-helper-rights-simple-english.md, raw/48-version-control.md, "raw/comprehensive-hr-agency-knowledge-base (1).docx"]
pages_used: [Ming-Hwee-Agency, Ming-Hwee-Portal-API, Crisis-escalation, Dynamic-data-architecture, Placement-loan, Ministry-of-Manpower, Multi-language-support]
tags: [analysis, blockers, launch, ownership]
---

# What blocks launch, and who owns each blocker?

## Question
What must be resolved before the Ming Hwee Assistant can launch, who owns each item, and which are developer tasks versus Ming Hwee's own?

## Short answer
Six blockers are named in the vendor brief, and **none of them is a developer task** — every one is Ming Hwee's to resolve. Five are unanswered questions about the agency's own commercial and regulatory position; one is an operational staffing gap. Two further blockers are not on the official list but function as blockers: the missing quarterly-sync owner, and the fact that the knowledge base has never been reviewed by anyone with domain expertise.

## The six named blockers
(src: raw/START-HERE-VENDOR-BRIEF.md §4 · 2026-09-01)

| # | Blocker | Owner | Why it blocks |
|---|---|---|---|
| 1 | Out-of-hours crisis on-call rota and paging mechanism | Ming Hwee ops | Module 34 promises a distressed helper a human within 5 minutes. Office hours are Mon–Fri 9:30–18:30, Sat 10:30–16:30. "Abuse does not keep office hours. Either staff it or change the promise — but do not ship the promise unstaffed." |
| 2 | Quarterly regulatory sync owner, named individual plus backup | Ming Hwee | Currently unfilled. "The two regulatory errors found in the July 2026 audit were both three years old — the sync has already failed once, before launch." |
| 3 | Placement loan commercial terms per source country | Ming Hwee | The module is written but its numbers are placeholders. Until supplied, all loan questions route to a human. "Do not let anyone populate this with estimates." |
| 4 | Levy concession: does PR status qualify, or Citizen only? | Ming Hwee, verify with MOM | "Getting this wrong quotes a family the wrong levy by $240/month." |
| 5 | Elderly concession age threshold | Ming Hwee, verify with MOM | Flagged for verification since KB v1.0 across Modules 19, 21, 36 and 41. "Three versions, still unanswered." |
| 6 | Placement fee disclosure policy | Ming Hwee commercial | Guardrail 2 gates fees behind registration or consultation. The audit argues a published range converts better. "Either way, the bot needs a definite answer." |

## Reasoning

**Blocker 1 is the only one that is a promise rather than a number.** The others are facts nobody has established; this one is a commitment the system will make on the agency's behalf and cannot currently keep. It is also the blocker with a safeguarding consequence rather than a commercial one, which is why it ranks first despite being an ops-rota question. See [[Crisis-escalation]] for the time-to-human targets it fails, and note the unresolved 5-minute versus 15-minute discrepancy in the same document.

**Blockers 2, 4 and 5 are one problem seen three times.** Each is a regulatory value nobody at the agency currently owns verifying. Blocker 2 is the systemic version — no named owner for the process — while 4 and 5 are two specific values that process was supposed to have settled. The brief's own diagnosis is that the sync "has already failed once, before launch." [[Dynamic-data-architecture]] describes the machinery built to solve exactly this; blocker 2 is the missing human component of that machinery, which means the architecture is incomplete rather than merely unstaffed.

Blocker 5 is additionally complicated by the knowledge base stating "67 years or older" as settled fact — see the open conflict on [[Ministry-of-Manpower]]. A document asserting a number is not the same as anyone having checked it, and the brief is explicit that two prior errors each survived four self-reviews "because internal consistency checks cannot detect a uniform error."

**Blocker 3 sits on the highest-value helper question in the system.** [[Placement-loan]] is described in its own module as "the biggest money question in your first year", and every figure is a placeholder. The mitigation — route all loan questions to a human — is correct but interacts badly with blocker 1: outside office hours there is no human to route to.

**Blocker 6 is the only genuinely commercial decision**, and the only one where the brief acknowledges a live argument rather than an unknown.

## Two unlisted items that behave like blockers

**No domain expert has ever reviewed the knowledge base.** Two AI reviews, zero reviews by a Singapore employment lawyer, a migrant-worker NGO, or a Ming Hwee staff member with case experience. The brief separately recommends two reviews that "should happen before launch and are not developer scope": an employment-law review of Modules 19, 22 and 26, and a migrant-worker NGO review of Modules 27, 32 and 34. (src: raw/START-HERE-VENDOR-BRIEF.md §4, §9 · 2026-09-01)

The NGO review is also the natural forum for resolving the open routing conflict on [[Agency-first-support]], since the agency is not a neutral party to the question of whether helpers should be pointed at external bodies.

**KB governance has no owner.** The KB Owner field, the last-full-review date, and the v1.2.0 reviewer and approver fields are all unfilled. (src: raw/48-version-control.md §48.1, §48.3 · 2026-09-01) A release documented as complete with no recorded approver is the same class of gap as blocker 2.

## Trade-offs

| Option | Pros | Cons | Best when |
|---|---|---|---|
| Launch without blocker 1 resolved | Ships to schedule; daytime coverage is real | Ships an unstaffed safeguarding promise — the failure the brief names explicitly | Never, on the brief's own terms |
| Launch employer-side only, helper-side later | Removes the crisis dependency entirely; commercial value arrives early | Helper support is the harder half and would lose its forcing function | Blocker 1 cannot be resolved in time and the commercial case is urgent |
| Change the promise rather than staff it | Honest; cheap; immediately actionable | A slower stated response for helpers in distress | Out-of-hours staffing genuinely is not viable |
| Hold launch until all six clear | Everything the brief requires | Five of six depend on Ming Hwee availability, not engineering | The regulatory exposure of a wrong answer outweighs delay |

## Confidence and gaps
High confidence: all six blockers are stated explicitly in a single authoritative document with owners assigned. What this analysis cannot establish is **current status** — the brief is dated 31 July 2026 and this wiki was built 2026-09-01. Any of these may have been resolved in the intervening month without the corpus recording it, which is itself an instance of the governance gap.

Module 34, which carries the 5-minute promise, is not in this corpus and its exact wording cannot be checked.

## Pages this drew on
[[Ming-Hwee-Agency]] · [[Ming-Hwee-Portal-API]] · [[Crisis-escalation]] · [[Dynamic-data-architecture]] · [[Placement-loan]] · [[Ministry-of-Manpower]] · [[Multi-language-support]] · [[Agency-first-support]] · [[documentation-completeness-check]]
