# LLM Wiki — starter kit and runbook

A working scaffold for a knowledge base that an AI agent maintains: raw sources stay
immutable, the agent writes and cross-links Markdown pages, and every claim is
traceable back to evidence.

Obsidian is the reader. Claude Code is the writer. Git is the safety net.

---

## Before you start: choose the domain

Pick something narrow that already costs your team time. The test is: *does someone
rediscover the same facts more than once a month?*

Good candidates:
- **Integration knowledge base** — platform quirks, auth flows, rate limits, pagination traps across the tools you build on. Highest payoff, because it compounds across every project.
- **Delivery playbook** — what actually worked on past builds, and what broke.
- **One client account** — demos well, compounds less.

Bad candidates: anything with fewer than ~10 real source documents, or where the answer is always "check the current docs."

---

## Day 0 — Baseline (2 hours)

1. Write 10 golden questions in `_ops/05-golden-questions.md`. Real ones. Each should need two or more sources.
2. Drop your source documents into `raw/`. Aim for 8–15. Do not clean them up.
3. Ask your agent each question with access to `raw/` **only**. Score and time each.

This is the number your manager will remember. Do not skip it.

## Day 1 — Scaffold (2 hours)

1. `git init`, commit the empty scaffold.
2. Edit `AGENTS.md`: fill in the scope, adjust `review_by` windows and the sensitivity rules for your context.
3. Edit `wiki/index.md`: write the scope sentences and the answer routing table.
4. Open the folder in Obsidian. Turn on the graph view.

## Day 2–3 — Ingest (half a day)

For each file in `raw/`, run `_ops/01-ingest-prompt.md`. One at a time.

**Review every diff before merging the branch.** The first three ingests will expose
gaps in `AGENTS.md` — fix the rules, don't fix the output by hand. The rules are
the product.

Expect roughly 3–5 wiki pages per source after the first few.

## Day 4 — Lint (1 hour)

Run `_ops/03-lint-prompt.md`. Work the top five issues. Resolve or annotate every
open conflict. Fill the orphan pages or delete them.

## Day 5 — Prove it (2 hours)

Re-run all 10 golden questions using `_ops/02-query-prompt.md`. Score and time them
against the same rubric. Fill in the three numbers at the bottom of the file.

## Day 6 — Automate (half a day)

- Watch a Drive or Dropbox folder → drop new files into `raw/` → open a PR running the ingest prompt.
- Schedule `_ops/04-digest-prompt.md` weekly to Slack or email.
- Schedule `_ops/03-lint-prompt.md` weekly, output to an issue.

Keep the human approval step on ingest. Removing it is how the wiki rots.

---

## The demo — 20 minutes

| Min | What | Why it lands |
|---|---|---|
| 0–3 | The problem, with one real example of a fact your team rediscovered three times | Grounds it in money, not architecture |
| 3–8 | Two golden questions, before and after, side by side | This is the whole argument |
| 8–13 | Ingest a brand-new document live. Show the git diff touching 6 pages at once | Makes "compounding" visible rather than abstract |
| 13–16 | Open the lint report. Show a conflict block. Show a stale-fact flag | Proves it degrades gracefully and knows what it does not know |
| 16–18 | Obsidian graph view | The emotional close. Never the argument |
| 18–20 | Cost, risks, and what week two looks like | Answer it before they ask it |

**Questions you will be asked — have answers ready:**

- *How is this different from just uploading files to a chatbot?* Retrieval reconstructs the answer every time; the wiki keeps the synthesis. Show the diff from the live ingest.
- *What stops it hallucinating into the knowledge base?* Claim-level citations, human review on every ingest, conflict blocks instead of silent overwrites, and a weekly lint that surfaces uncited claims.
- *What about client-confidential material?* The `sensitivity` field, the §2.7 rule, and lint check 9. Say clearly what you will not put in.
- *Who maintains it?* The agent writes; one person reviews diffs, roughly 20 minutes per ingest, dropping as the rules stabilise.
- *What does it cost?* Token cost per ingest, times expected ingests per week. Measure it on day 3 so you can quote a real figure.

---

## Layout

```
AGENTS.md              The rules. The most important file here.
raw/                   Immutable sources.
wiki/
  index.md             Routing table — the agent reads this first.
  log.md               Append-only changelog.
  concepts/            Reusable ideas.
  entities/            Named things: vendors, systems, people.
  analyses/            Answers worth keeping.
  _moc/                One map-of-content per folder.
_templates/            Copy these. Never improvise a page shape.
_ops/                  Prompts and the evaluation harness.
```

---

## Failure modes, and the rule that prevents each

| Failure | Prevention |
|---|---|
| Page sprawl — three pages about one thing | §2.5 search-before-create, plus lint check 7 |
| Silent drift from sources | Claim-level citations, §4 |
| Contradictions quietly overwritten | Conflict blocks, §6 |
| Confident but stale | `review_by`, lint check 5 |
| Agent can't read the wiki once it's big | Index-first routing, 7-page cap, §2.8 |
| Duplicate ingests | Source hashing, §7.1 |
| Nobody trusts it | Golden questions, human review on every ingest |

---

## Scope discipline

Do not add embeddings, a vector database, or a custom UI in the first month.
Markdown, git, and an index are enough at this size. Add search when the agent
starts failing to find pages it should have found — and not before.
