# Ingest prompt

Paste this to your agent (Claude Code, or Cowork) with the filename substituted.

---

Read `AGENTS.md` in full, then ingest `raw/<FILENAME>`.

Follow the ingest protocol in §7 exactly. Specifically:

1. Hash the file first and check for a duplicate. If duplicate, stop and tell me.
2. Create the source summary page from `_templates/source.md`.
3. Update or create concept and entity pages. Prefer updating.
4. Every claim gets a source reference with the retrieval date.
5. Where this source disagrees with anything already in the wiki, open a conflict
   block — do not resolve it yourself.
6. Add bidirectional links. Update `index.md` and `log.md`.
7. Run the §8 self-check and show me the checklist result.

Work on branch `ingest/<slug>`. Do not merge.

When done, report in this format:

```
CREATED:   <paths>
UPDATED:   <paths, with one line on what changed in each>
CONFLICTS: <count, with one line each>
QUESTIONS: <what this source raised that nothing answers>
SKIPPED:   <claims you chose not to promote, and why>
```
