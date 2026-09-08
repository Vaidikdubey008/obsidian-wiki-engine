# AGENTS.md — Operating rules for this wiki

You are the maintainer of this knowledge base. These rules override your defaults.
Read this file in full before any ingest, query, or lint run.

---

## 0. Scope

This wiki covers the **Ming Hwee Assistant** project: a 24/7 web chatbot for Ming Hwee
Agency, a Singapore employment agency placing migrant domestic workers (MDWs). The
chatbot serves two audiences — Singapore employers hiring an MDW, and helpers from the
Philippines, Indonesia and Myanmar.

In scope:
- The vendor proposal and its two revisions (architecture review, Ming Hwee OS review pack)
- Chatbot guardrails, safeguarding protocols, and crisis escalation
- Helper rights content and the dynamic-data architecture behind regulatory answers
- The MOM regulatory framework the system must comply with: EA licence conditions and
  the guidelines for agencies placing FDWs

Out of scope:
- Other client projects. `raw/` may contain documents belonging to unrelated engagements;
  do not ingest them. Record the exclusion in `log.md` rather than acting silently.
- General chatbot or LLM engineering practice
- Singapore immigration or employment law beyond what the ingested MOM documents state

**Two domain rules that override normal editorial judgement here.**

1. **Safeguarding content is not ordinary content.** Where a page touches crisis routing,
   emergency numbers, assault, confinement, or self-harm, do not paraphrase for concision
   and do not smooth a contradiction into a single confident statement. Quote the source
   and open a conflict block. The corpus itself warns that a model under context pressure
   will generalise the agency-first pattern over the emergency exception — the same risk
   applies to an agent summarising these documents.

2. **Regulatory values are volatile by default.** Fees, levies, age thresholds, bond and
   insurance amounts must be recorded with their source and date and marked as requiring
   verification against the portal. A figure stated confidently in a source document is
   not the same as a figure anyone has checked. Never carry one forward as settled.

---

## 1. Repository layout

```
raw/                 Immutable source material. NEVER edit or delete.
wiki/
  index.md           Routing table. Read this FIRST on every task.
  log.md             Append-only changelog.
  concepts/          Reusable ideas (Crisis escalation, Rate limiting, Idempotency)
  entities/          Named things (Respond.io, Ministry of Manpower, a person, a client)
  analyses/          Answers worth keeping. Multi-source synthesis.
  _moc/              Map-of-Content pages, one per folder.
_templates/          Page templates. Copy, never improvise a new shape.
_ops/                Prompts and evaluation harness.
```

## 2. Hard rules

1. **Never modify anything under `raw/`.** Not to fix typos, not to reformat.
2. **Every factual sentence carries a source reference.** No exceptions. If you cannot cite it, either omit it or mark it explicitly as inference (see §5).
3. **Read before you write.** Always open the existing page before updating it. Never regenerate a page from scratch when it already exists — edit it.
4. **Never silently overwrite a fact.** If new information contradicts existing content, open a conflict block (§6). Replacing is a decision a human makes.
5. **One page per idea.** Before creating a page, search `wiki/index.md` for an existing page covering the same thing. Extend it instead.
6. **Every new page gets an entry in `index.md` and `log.md` in the same run.** A page not in the index does not exist.
7. **Respect the sensitivity field.** Never move `client-confidential` content into `public` or `internal` pages. Never write credentials, API keys, tokens, personal contact details, or identifiable personal data into the wiki — reference the source location instead.
8. **Stay inside the context budget.** On any query, read `index.md` plus at most 7 pages. If you need more, say so and ask which branch to follow.

## 3. Page types and required frontmatter

Every page starts with this block. No page type outside this list.

```yaml
---
type: source | concept | entity | analysis | moc
title: Human readable title
created: YYYY-MM-DD
updated: YYYY-MM-DD
review_by: YYYY-MM-DD        # when this content should be re-checked
status: stub | draft | stable | contested | deprecated
confidence: high | medium | low
sensitivity: public | internal | client-confidential
sources: [raw/file-a.md, raw/file-b.pdf]
tags: [api, auth]
---
```

**`review_by` guidance:** vendor pricing, rate limits, API versions → +90 days. Product behaviour → +180 days. Stable concepts and patterns → +365 days.

**`status` guidance:** `stub` = title and links only. `draft` = single source. `stable` = two or more sources agree. `contested` = has an open conflict block. `deprecated` = superseded; keep the page, link forward.

## 4. Source references

Format, inline, at the end of the sentence:

```
The default page size is 25 records. (src: raw/monday-graphql-docs.md §Pagination · 2026-08-01)
```

- Point to the **section**, not just the file, whenever the source has sections.
- The date is the **retrieval date of the source**, not today.
- Multiple sources supporting one claim: `(src: raw/a.md §2; raw/b.md §Limits · 2026-08-01)`

## 5. Inference must be labelled

When you connect dots that no single source states, mark it:

```
> [!inference] Not stated in any source
> Both providers throttle per-token rather than per-IP, which suggests
> a shared upstream gateway. Unverified.
```

Never let inference read as fact.

## 6. Conflicts

When sources disagree, do not pick a winner. Write this block on the relevant page and set `status: contested`.

```
> [!conflict] OPEN — rate limit ceiling
> - **Claim A:** 1000 req/hr (src: raw/vendor-docs-2025.md §4 · 2025-11-02)
> - **Claim B:** 600 req/hr (src: raw/support-email.md · 2026-07-14)
> - **Assessment:** B is newer and came direct from support, but A may
>   describe the enterprise tier. Tier is not stated in either source.
> - **Next step:** confirm tier with vendor.
> - **Status:** open
```

When resolved, change `OPEN` to `RESOLVED`, keep the block, add the resolution and date. Never delete a conflict block — the history is the value.

## 7. Ingest protocol

Given a new file in `raw/`:

1. Compute and record the source hash: `sha256sum raw/<file>`. If the hash already appears in any source page, **stop** — this is a duplicate. Report and exit.
2. Create `wiki/<slug>-source.md` from `_templates/source.md`.
3. Extract claims. For each, decide: does a concept or entity page already exist?
   - Yes → update it, add citations, check for conflicts.
   - No, and the idea recurs or matters → create it from the template.
   - No, and it is incidental → leave it in the source summary only.
4. Add wiki links (`[[Page Name]]`) in both directions. A new page with no incoming links is a defect.
5. Run the checks in §8 against everything you touched.
6. Update `index.md` and append to `log.md`.
7. Report: pages created, pages updated, conflicts opened, open questions raised.

**Work on a git branch named `ingest/<slug>` and stop for human review. Do not merge.**

## 8. Self-check before finishing any run

- [ ] Every new claim has a source reference with a date
- [ ] Frontmatter complete and valid on every touched page
- [ ] `updated` bumped, `review_by` set sensibly
- [ ] No page created without at least one incoming link
- [ ] Contradictions raised as conflict blocks, not resolved unilaterally
- [ ] No credentials, keys, or personal data written anywhere
- [ ] `index.md` and `log.md` updated
- [ ] Nothing under `raw/` was modified

## 9. Answering questions

1. Read `wiki/index.md`.
2. Select the smallest sufficient set of pages (max 7). Name them in your answer.
3. Answer from the wiki. Open `raw/` only to verify a specific claim, and say when you did.
4. State clearly what the wiki does not cover rather than filling the gap from general knowledge.
5. If the answer took real synthesis, offer to save it as `wiki/analyses/<slug>.md`.

## 10. Naming

- Files: `kebab-case.md`. Titles: `Title Case`.
- Entities use the canonical vendor spelling: `Respond.io`, not `respond.io` or `RespondIO`.
- Concepts are singular nouns: `Rate limiting`, not `Rate limits`.
- Analyses are named as questions or comparisons: `webhook-retry-strategies.md`.
