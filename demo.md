# LLM Wiki — Knowledge Architecture

An LLM Wiki is a structured knowledge layer designed to help AI agents answer questions using durable, traceable knowledge rather than repeatedly rediscovering information from raw documents.

## Core Principle

The wiki should preserve **context, relationships, evidence, and history** — not just isolated chunks of text.

A useful flow is:

```text
Raw Sources
    ↓
Ingestion & Analysis
    ↓
Structured Markdown Pages
    ↓
Cross-links + Evidence
    ↓
Git Version History
    ↓
AI Retrieval / Reasoning
    ↓
Evidence-backed Answer
```

## Why Markdown?

Markdown provides a simple, human-readable representation of knowledge. It can be reviewed by people, edited by AI agents, tracked with Git, and opened directly in tools such as Obsidian.

This also means the knowledge base remains portable instead of being locked into a proprietary vector database or application.

## Important Design Rules

1. **Keep raw sources immutable.** The original document should remain available as evidence.
2. **Cite claims.** Important facts should point back to the source that supports them.
3. **Search before creating.** Before creating a new page, the agent should check whether the concept already exists.
4. **Preserve conflicts.** If two sources disagree, record the conflict instead of silently overwriting one source with another.
5. **Track freshness.** Knowledge that can become outdated should have a review date or freshness indicator.
6. **Use Git as the audit trail.** Every AI-generated change should be reviewable and reversible.

## LLM Wiki vs. Traditional RAG

Traditional RAG commonly focuses on retrieving relevant document chunks at query time. An LLM Wiki adds a persistent synthesis layer where the AI can organize concepts, connect related entities, record conclusions, and preserve useful analysis between conversations.

The two approaches can also work together: the wiki provides structured context while retrieval can still search the underlying raw sources when deeper evidence is required.

## Example

Suppose a team repeatedly asks:

> How does our payment integration handle subscription failures?

Instead of retrieving the same API documentation and internal notes every time, the wiki can maintain a page describing the integration, link it to the relevant API documentation, record known failure cases, and identify when the information should be reviewed again.

The goal is simple: **turn repeated research into durable organizational knowledge.**
