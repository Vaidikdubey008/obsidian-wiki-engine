---
type: concept
title: Placement Loan
created: 2026-09-01
updated: 2026-09-01
review_by: 2026-12-01
status: draft
confidence: high
sensitivity: client-confidential
sources: [raw/27-helper-rights-simple-english.md, raw/START-HERE-VENDOR-BRIEF.md, "raw/comprehensive-hr-agency-knowledge-base (1).docx"]
tags: [helper-rights, finance, blocker, placeholder]
---

# Placement Loan

## Definition
Money owed by a helper to a source-country agency for arranging her job, typically repaid by deduction from her salary over her first months rather than paid in cash. Also called an agency loan. (src: raw/27-helper-rights-simple-english.md §27.1a · 2026-09-01)

The module calls it "the biggest money question in your first year." (src: raw/27-helper-rights-simple-english.md §27.1a · 2026-09-01)

## Why it matters here
It is the highest-value question a helper can ask the bot, and the bot cannot answer it. Every figure is an unfilled placeholder, and this is launch blocker #3.

## Her rights
(src: raw/27-helper-rights-simple-english.md §27.1a · 2026-09-01)

- A copy of the loan paper she signed, in a language she understands
- Her balance at any time, on request
- The monthly deduction cannot exceed what she agreed and signed
- Full salary must resume **immediately** once the loan is finished

And the rule that matters most:

> "The loan is separate from your rights. Owing money does NOT mean you must accept bad treatment, no rest day, or no food. Nobody can say 'you still owe money, so you cannot complain.'"

## The six questions she should be able to answer
(src: raw/27-helper-rights-simple-english.md §27.1a · 2026-09-01)

1. How much do I owe in total?
2. Who do I owe it to — the source-country agency, Ming Hwee, or a finance company?
3. How much is taken each month?
4. How many months in total?
5. What paper did I sign?
6. How much have I paid so far, and how much is left?

If she cannot answer these, the module tells her to ask Ming Hwee, with a script: *"Please tell me my loan amount, how much I have paid, and how much is left."*

## What is missing
The module carries an explicit pre-launch placeholder covering the actual loan structure for each source country: who the creditor is, the typical total, the monthly deduction, the number of months, what happens to the balance on transfer, and what happens on early repatriation. (src: raw/27-helper-rights-simple-english.md §27.1a · 2026-09-01)

**Until those are supplied and verified, the bot must route all loan questions to a human.** The vendor brief reinforces this as blocker #3 and adds: "Do not let anyone populate this with estimates." (src: raw/27-helper-rights-simple-english.md §27.1a; raw/START-HERE-VENDOR-BRIEF.md §4 · 2026-09-01)

## Related agency fee rules
Distinct from the placement loan but adjacent, and easily confused in conversation: agency fees charged to the **employer** are capped at one month's salary per year of service to a maximum of two months, payable after IPA approval and before arrival, with upfront collection before placement prohibited. (src: raw/comprehensive-hr-agency-knowledge-base (1).docx §6.1 · 2026-09-01)

That figure is a volatile regulatory value and must come from [[Ming-Hwee-Portal-API]], not from the knowledge base — see [[Dynamic-data-architecture]].

## Gotchas
- A helper asking "how much do I still owe?" is asking a case-specific question, not a policy question. Even with the placeholders filled, the answer requires her record — which is a portal or staff lookup, not a knowledge-base answer.
- The module invites her to challenge the amount if it differs from what she was told before arrival, and to say so if she remains unsatisfied after an explanation. That is a complaint intake path, and it needs a support case, not an FAQ response. See [[Human-handoff]]. (src: raw/27-helper-rights-simple-english.md §27.1a · 2026-09-01)
- Loan deduction sits directly against the salary rules in [[Helper-rights]]: a deduction not in the signed agreement is an unlawful salary deduction, not a loan repayment.

## Related
[[Helper-rights]] · [[Agency-first-support]] · [[Dynamic-data-architecture]] · [[Ming-Hwee-Portal-API]] · [[launch-blockers]] · [[EA-licence-compliance]]

## Open questions
- Who is the creditor in each source country?
- What happens to the balance when a helper transfers employers, or is repatriated early?
- Is Ming Hwee ever the creditor? The module lists it as one of three possibilities and no source resolves this.
