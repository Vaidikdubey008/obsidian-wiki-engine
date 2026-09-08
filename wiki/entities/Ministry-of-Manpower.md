---
type: entity
title: Ministry of Manpower
created: 2026-09-01
updated: 2026-09-08
review_by: 2026-12-01
status: contested
confidence: high
sensitivity: public
sources: ["raw/20250819 - MOM-EA-licence-conditions (1).docx", "raw/20250819 - MOM guidelines-for-eas-placing-fdws (1).docx", "raw/comprehensive-hr-agency-knowledge-base (1).docx", raw/START-HERE-VENDOR-BRIEF.md, raw/01-chatbot-identity-guardrails.md, raw/minghwee-services-knowledge-base-v1.md]
tags: [regulator, singapore, mom, primary-source]
---

# Ministry of Manpower

## What it is
The Singapore government ministry regulating employment agencies and foreign manpower. MOM is simultaneously the regulator that can suspend or revoke [[Ming-Hwee-Agency]]'s licence, the authority whose fees and thresholds the chatbot quotes, and a destination the chatbot routes helpers to. (src: raw/20250819 - MOM-EA-licence-conditions (1).docx §Definition · 2026-09-01)

## Statutory roles
- The **Commissioner for Employment Agencies**, appointed under s3(1) of the Employment Agencies Act (Cap 92), may suspend or revoke a licence where the agency operates in a manner detrimental to clients' interests. (src: raw/20250819 - MOM guidelines-for-eas-placing-fdws (1).docx §Introduction · 2026-09-01)
- The **Controller of Work Passes** is appointed under s3 of the Employment of Foreign Manpower Act (Cap 91A) and decides repatriation destination disputes. (src: raw/20250819 - MOM-EA-licence-conditions (1).docx §Definition, §Condition 11B · 2026-09-01)
- **EA alerts** are announcements, guidelines and instructions periodically issued by the Commissioner, which licensees must operate in accordance with. (src: raw/20250819 - MOM-EA-licence-conditions (1).docx §Definition, §Condition 2 · 2026-09-01)

## Contact points used by the chatbot

| Line | Number | Hours | Purpose | Source |
|---|---|---|---|---|
| MDW Helpline | 1800-339-5505 (overseas +65 6339-5505) | Mon–Fri 8:30am–5:30pm | Helper distress, work permit issues, employer disputes | (src: raw/01-chatbot-identity-guardrails.md §1.4; raw/27-helper-rights-simple-english.md §27.7) |
| 24/7 report line | 6438 5122 | 24/7 | Work permit violations, serious abuse | (src: raw/emergency-response-crisis-protocols (1).docx §Emergency Contact Database) |

The MDW Helpline is on the [[Safety-allowlist]] and may be hardcoded. The 24/7 report line appears only in the emergency protocols document and is **not** on the allowlist. (src: raw/01-chatbot-identity-guardrails.md §1.4 · 2026-09-01)

Recovering unpaid salary is described as one of the main things MOM does for helpers. (src: raw/27-helper-rights-simple-english.md §27.1 · 2026-09-01)

## Regulatory values (must come from the portal, not from here)
These figures appear in the corpus but are exactly the class of value [[Chatbot-guardrails]] Guardrail 14 forbids quoting from training data. They are recorded here for traceability only — the bot must fetch them from [[Ming-Hwee-Portal-API]] at runtime. See [[Dynamic-data-architecture]].

| Value | As recorded | Source and caveat |
|---|---|---|
| Monthly levy, first MDW | SGD 300 | (src: raw/comprehensive-hr-agency-knowledge-base (1).docx §6.2) — labelled "2024 Rates" in a Sep 2025 document |
| Monthly levy, concessionary | SGD 60 | (src: raw/comprehensive-hr-agency-knowledge-base (1).docx §6.2) |
| Security bond | SGD 5,000 per non-Malaysian MDW | (src: raw/comprehensive-hr-agency-knowledge-base (1).docx §6.1; corroborated raw/minghwee-services-knowledge-base-v1.md §Services at a Glance · 2026-09-08) |
| Work permit application fee | SGD 35 | (src: raw/comprehensive-hr-agency-knowledge-base (1).docx §6.1; corroborated raw/minghwee-services-knowledge-base-v1.md §Services at a Glance · 2026-09-08) |
| Medical insurance minimum | SGD 60,000 since 1 July 2023 | (src: raw/START-HERE-VENDOR-BRIEF.md §5, §8) — the spec's own example said 15,000; the services KB also says 15,000 (see conflict below) |
| Personal accident insurance minimum | SGD 60,000/yr | (src: raw/minghwee-services-knowledge-base-v1.md §Services at a Glance · 2026-09-08) |
| Insurance co-payment | 25% above SGD 15,000 | (src: raw/START-HERE-VENDOR-BRIEF.md §8) |
| Levy payment due | By the 14th monthly, 1.5%/month late penalty | (src: raw/comprehensive-hr-agency-knowledge-base (1).docx §6.2) |
| Home-leave levy waiver | Automatic for the leave period | (src: raw/minghwee-services-knowledge-base-v1.md §5. Home Leave · 2026-09-08) |

The levy concession is worth SGD 240/month, which is why misapplying it is a launch blocker. (src: raw/START-HERE-VENDOR-BRIEF.md §4 · 2026-09-01)

The services knowledge base independently states the security bond and the $35 MOM submission fee, corroborating the figures above. It is an operational playbook, not a regulatory source, so it does not settle the volatile values — see [[Service-catalogue]] and the insurance conflict below. (src: raw/minghwee-services-knowledge-base-v1.md §Services at a Glance · 2026-09-08)

> [!conflict] OPEN — medical insurance annual minimum
> - **Claim A:** Medical insurance minimum is **SGD 60,000**, in force since 1 July 2023; the vendor brief flags that the spec's own example wrongly said 15,000. (src: raw/START-HERE-VENDOR-BRIEF.md §5, §8 · 2026-09-01)
> - **Claim B:** Medical insurance minimum is **$15,000/yr**, stated in the common building blocks and repeated in the New Hiring and Direct Hiring mandatory lists. (src: raw/minghwee-services-knowledge-base-v1.md §Services at a Glance; §1. New Hiring; §2. Direct Hiring · 2026-09-08)
> - **Assessment:** The brief is the newer, regulation-facing document and explicitly identifies 15,000 as the stale value that must be corrected to 60,000. The services KB repeats 15,000 throughout, so it appears to carry the same stale figure the brief warns about — the "$60k PA / $15k medical" split it uses is a known pre-2023 shape. This is exactly the [[Dynamic-data-architecture]] failure mode: a confidently stated figure that has moved.
> - **Next step:** Treat SGD 60,000 as the likely-current medical minimum, verify against MOM, serve from [[Ming-Hwee-Portal-API]], and correct the services KB. The bot must not quote 15,000.
> - **Status:** open

> [!conflict] OPEN — elderly levy concession age threshold
> - **Claim A:** The elderly person must be **67 years or older**, stated as settled fact alongside the child-under-16 and disability criteria. (src: raw/comprehensive-hr-agency-knowledge-base (1).docx §6.2 · 2026-09-01)
> - **Claim B:** The elderly concession age threshold is **unverified**, flagged for verification since KB v1.0 across Modules 19, 21, 36 and 41, and listed as launch blocker #5 for Ming Hwee to confirm with MOM. (src: raw/START-HERE-VENDOR-BRIEF.md §4 · 2026-09-01)
> - **Assessment:** These are not straightforwardly reconcilable. Claim A is older (Sep 2025) and its neighbouring figures are labelled "2024 Rates", so it may be the very kind of confidently-stated stale value the brief warns about. But the brief is not asserting a different number — it is asserting that nobody has checked. A document stating "67" does not discharge that, particularly since the brief also notes that two regulatory errors each survived four self-reviews because "internal consistency checks cannot detect a uniform error."
> - **Next step:** Verify against the MOM website directly, record the source URL and verification date in the portal, and resolve blocker #5. Until then the bot must not quote an age threshold.
> - **Status:** open

> [!conflict] OPEN — levy concession and citizenship status
> - **Claim A:** Levy concession eligibility is described purely in household terms — young child, elderly person, or person with disabilities — with no citizenship condition. (src: raw/comprehensive-hr-agency-knowledge-base (1).docx §6.2 · 2026-09-01)
> - **Claim B:** Whether PR status qualifies or Citizen status is required is an open question Ming Hwee must verify with MOM, and getting it wrong quotes a family the wrong levy by SGD 240/month. (src: raw/START-HERE-VENDOR-BRIEF.md §4 · 2026-09-01)
> - **Assessment:** Claim A's silence on citizenship is not evidence that no condition exists; it may simply be incomplete. No source in this corpus states the citizenship rule either way.
> - **Next step:** Ming Hwee to verify with MOM. Blocker #4.
> - **Status:** open

## Integration notes
- Wrong regulatory information is not merely a service failure: an employer who follows it can breach Work Permit conditions and face penalties or a hiring ban. (src: raw/START-HERE-VENDOR-BRIEF.md §1 · 2026-09-01)
- MOM's own guidelines name "wrong advice on MOM's regulations" as the example of prohibited misleading of clients — so a hallucinating chatbot is a licence-conditions issue. (src: raw/20250819 - MOM guidelines-for-eas-placing-fdws (1).docx §General duty to clients · 2026-09-01)
- The chatbot must never discourage a helper who has contacted MOM, or suggest it affects her job, permit or placement. (src: raw/01-chatbot-identity-guardrails.md §1.5 · 2026-09-01)
- MOM touch-points recur across every service: the $35 FDW e-Service submission, IPA before WP issuance, the ~8-week Renewal Notification, the Security Bond Transmission form for overseas hires, and the automatic home-leave levy waiver. See [[Service-catalogue]]. (src: raw/minghwee-services-knowledge-base-v1.md §Services at a Glance; §3. Work Permit Renewal · 2026-09-08)

## Related
[[Ming-Hwee-Agency]] · [[EA-licence-compliance]] · [[Dynamic-data-architecture]] · [[Ming-Hwee-Portal-API]] · [[Employer-eligibility-screening]] · [[Helper-rights]] · [[Safety-allowlist]] · [[Service-catalogue]] · [[Forms-and-documents-register]]
