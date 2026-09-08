# Lint prompt — run weekly

---

Read `AGENTS.md`, then audit the wiki. Do not fix anything yet — report first.

Check all ten:

1. **Schema violations** — pages with missing or invalid frontmatter fields.
2. **Uncited claims** — factual sentences with no source reference.
3. **Orphans** — pages with zero incoming links.
4. **Dead links** — `[[links]]` pointing at pages that do not exist.
5. **Stale facts** — pages past `review_by`, sorted by how far past.
6. **Open conflicts** — every unresolved conflict block, oldest first.
7. **Duplicates** — pages covering substantially the same thing.
8. **Missing pages** — concepts referenced 3+ times across the wiki with no page
   of their own.
9. **Sensitivity leaks** — anything resembling a credential, key, token, or
   personal datum. Also `client-confidential` content that has leaked into
   `internal` or `public` pages.
10. **Research gaps** — questions the wiki raises but no source answers, and what
    source would close each one.

Output as a table: issue, severity (high/medium/low), page, suggested fix.
Then give me the top 5 actions ranked by value. Wait for my go-ahead.

Finish by updating the Health table in `index.md` with current counts.
