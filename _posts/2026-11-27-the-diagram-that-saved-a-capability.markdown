---
layout: post
title: "The Diagram That Saved a Capability (and Paid Off Two Years Later)"
date: 2026-11-27 10:00:00 +0000
categories: leadership
description: "A restructuring plan would have dissolved our design system team — and grown mine. I argued against my own reinforcement, with diagrams instead of complaints, and the return took two years to appear on anyone's books. On political capital, blast radius, and why a well-drawn picture wins arguments."
---

Midway through the hardest restructuring of my career, a plan crossed my desk that would have made my team bigger. The design systems team — a handful of people maintaining the component library, design tokens, and UI standards that twenty-plus engineering teams build on — was to be dissolved, its people absorbed into my team. On paper I was the winner: more headcount, more scope, one less dependency to negotiate with.

I spent several weeks of political capital arguing against my own reinforcement. It is the best spend I have made as a manager — though it took two years before I could prove that to anyone, including myself.

I told the outline of this story in a single paragraph of [the retention post](/leadership/2026/07/31/what-100-percent-retention-actually-looks-like.html): the plan, the diagrams, the postscript. This post is the part that wouldn't fit — how the argument was actually made, why it worked, and how to know when a fight like this is worth what it costs. Because the method transfers, and most engineering managers will eventually watch a plan like that one cross their own desk.

## The tidy box and the invisible web

On an org chart, the plan looked like housekeeping. Restructurings are conducted in the org chart's language — boxes, lines, headcounts — and in that language, merging a four-person team into a neighbouring one reads as pure simplification. One less box. One less manager to coordinate. And in fairness, much of the business had never quite seen two teams there anyway: the design systems team and mine ran entirely separate backlogs for entirely different consumers, but from a distance we read as one pool of front-end people. The plan would simply have made the chart agree with the misreading.

Nobody proposing it was careless or hostile, and the intent was never destruction. It was reallocation: fold the boxes together, and the specialists' time could be redirected to the visible product roadmap, with design-system work downgraded to a discretionary item — something to commission when a plan happened to call for it. Work whose value is invisible gets reclassified as optional; that is the whole mechanism. My private prediction was blunt: the work would be quietly deprioritised until the day the company needed its entire estate to move at once — and then we would be scrambling to re-establish exactly what we had dissolved.

What the chart couldn't show was the web. Twenty-plus teams consumed those components daily. Every customer touchpoint shared one visual language because it was defined in exactly one place. Accessibility and brand standards were enforced once, not re-derived twenty times. And none of the fragmentation was hypothetical: corners of the organisation had already gone their own way, building UIs to their own rules, and the team was midway through the slow, diplomatic work of bringing them back into the fold. Dissolving the team wouldn't dissolve the demand — it would remove the centre, and surrender a fight against fragmentation that was already half-won.

There was a second thing the chart couldn't show: the machinery inside the boxes. The absorbed team wasn't four interchangeable engineers. It was two specialists whose skills split down the middle — only one worked across both web and native — a player-coach lead already carrying design and product duties at once, and a dedicated senior UX designer, with more UX capacity flexing in as the component work grew. Merge that into a team that already had its own product manager and its own swollen roadmap, and the collisions write themselves: two people holding one steering wheel, specialists redirected onto work that fits neither their skills nor their appetite, designers left with an irregular trickle of work. The tidy box was, on inspection, also a dysfunctional box — and "this merged team will not function" is an argument you can make from the org chart's own contents.

The fair objection, before I go further — I'd raise it myself: every manager is certain that the capability under threat on *their* watch is load-bearing, and most of them are wrong. Survivorship bias writes a lot of essays like this one. Two answers. First, load-bearing is testable, not felt: the [four-characteristic test from the soft platforms post](/leadership/2026/09/18/soft-platforms-why-horizontal-work-dies-inside-product-verticals.html) — horizontal reach, service model, BAU-dominant, invisible when working — and the design system passed all four with a dependency list anyone could audit. Second, check the incentives: I was arguing against my own enlargement. When the manager who would collect the headcount says the merge destroys value, that is at least worth a longer meeting.

## Complaints ask for trust; diagrams let people check

The instinctive response to a bad structural decision is words: *critical*, *essential*, *strategic*. The words fail structurally, because every team uses them about itself, so the people deciding restructurings have long since discounted them to zero. A complaint, however justified, asks the room to trust your gut feeling about something they cannot see.

So I drew the decision instead — twice. The first drawing was the plan exactly as proposed: the org chart, one box folded into another, visibly tidier. I didn't caricature it; it had to be the strongest version of the argument I was about to take apart. The second drawing was the same decision as a dependency map: the design system as a hub, twenty-plus edges radiating out to the teams that consumed it, everything customer-facing downstream. And then the cut — what deleting the hub actually severs, edge by edge: this team rebuilding buttons alone, this journey drifting off-brand, this accessibility standard suddenly owned by nobody.

<figure>
  <img src="/assets/images/posts/capability-defence/two-drawings.svg" alt="Two drawings of the same decision, side by side. Left, the plan as drawn: an org chart where the design systems box is folded into a neighbouring team box — one less box, looks like housekeeping. Right, the same plan as dependencies: the design system as a hub with edges radiating to twenty-plus consuming teams, with a dashed cut across the hub — delete the box and every edge becomes duplicated, divergent work." width="880" height="480" loading="lazy">
  <figcaption>The same decision, drawn twice: the org chart shows one less box; the dependency map shows the blast radius.</figcaption>
</figure>

A diagram does three things in that room that a complaint cannot. It turns adjectives into inspectable claims — every edge on the map is a checkable fact, so the discussion shifts from "do we believe this manager?" to "is this line real?", which is a fight evidence can win. It speaks the native language of the decision — restructurings are decided on drawings, so the counter-argument has to be a better drawing; you fight a chart with a map, not with a mood. And it makes claims falsifiable: my map didn't need to speculate — it could point at the corners of the estate that had already built their own UIs to their own rules, and what that was costing to unwind, and then predict, checkably, that dissolution would multiply them. A claim you can be wrong about is the only kind a serious room takes seriously.

The diagrams won the meeting. A document held the ground afterwards: the team wrote its own long-term strategy — its written reason to exist, maps included — so that its survival no longer depended on my memory or my presence. A capability whose justification lives in one manager's head is one reorg away from deletion; a written strategy defends the team in rooms you are not in. It's the same lesson the [archeology post](/leadership/2026/08/21/archeology-inheriting-a-system-nobody-documented.html) draws about decision records, applied to organisational structure.

## The postscripts

Then, for well over a year: nothing. This is the part nobody warns you about. Successfully defended structure looks identical to structure that was never threatened. The ledger showed only what the defence had cost — the awkward meetings, the spent credibility — and none of what it had preserved, because averted losses never invoice anyone.

The first instalment arrived about eighteen months later, when the company rebranded. The 522-page website I've written about before was only one surface. The rebrand had to move through every service journey, two mobile apps, a partner-facing portal, account management, and the campaign tooling wrapped around all of it — and that breadth is exactly what a design system is for. Because a single, coherent component library existed — one the preserved team went on to build after surviving deletion — rebranding meant updating one source of truth and propagating it across every surface, rather than renegotiating the brand separately with every system that renders it. The website slice alone shipped in two quarters, on the critical path for every team's launch. Priced against the dissolved-team counterfactual — the scramble my prediction promised — the same programme reads as years, a small army of contractors, and a brand that never quite converges.

The second instalment landed nearly two years after the argument: the preserved team's documented engineering work underpinned a substantial R&D tax-credit claim. I won't put the figure in public print — "substantial" will have to carry it. The point isn't the amount; it's that the return was real money on the actual books, produced by a capability that had once been a box somebody wanted to delete.

Here is the uncomfortable truth those two instalments taught me: neither was ever attributed to the defence. No retrospective connected the rebrand's speed, or the claim, to a meeting two years earlier. Returns on structure are real, late, and unattributed — and if you need attribution before you'll spend political capital, you will never spend it, and load-bearing things will keep getting deleted on your watch.

<figure>
  <img src="/assets/images/posts/capability-defence/payback-timeline.svg" alt="A timeline. Day zero: the argument — political capital spent, nothing to show. A long quiet stretch labelled invisible on every ledger. At eighteen months: the rebrand ships — every surface on one source of truth. At around two years: the tax-credit postscript — substantial, and finally on the books." width="880" height="270" loading="lazy">
  <figcaption>Returns on structure: real, late, and unattributed.</figcaption>
</figure>

## What it cost

The honesty section, as ever. Challenging a plan that has already been socialised is expensive in ways that don't show on any diagram: you are telling people who have mentally moved on that the conversation isn't over, and some of the credibility you spend doing it was earmarked for other fights. Part of the resolution also landed on me — I ran the design systems team myself for a stretch, alongside my own, in a year when my scope had already quadrupled. And there is the cost I least expected: the two-year wait. You make the spend in the dark, and the dark lasts long enough to make you doubt the purchase. I'd pay all three prices again — but price them honestly before you start, because you'll pay them personally.

## When to spend, how to spend

Not every threatened team deserves this defence, and mounting it for something that fails the test burns credibility you'll want later. But when the capability is genuinely load-bearing:

- **Draw the decision as proposed, then draw what it actually cuts.** Make the room hold both pictures. Don't caricature the first one — beat its strongest version.
- **Argue in the decision-maker's ledger** — consumers, duplication, counterfactual cost — never in sentiment.
- **Make falsifiable claims.** Invite the room to challenge the map edge by edge; specificity is what separates evidence from advocacy.
- **Leave a written strategy behind.** Documents defend the team in rooms you're not in, long after the meeting is forgotten.
- **Log the postscripts.** When the returns arrive years later, connect them — out loud — to the decision that made them possible. Political capital compounds only if the wins are traceable to the spends.

A complaint is a request to be trusted. A diagram is an invitation to check. When something load-bearing is about to be deleted, bring the big, complete picture.

---

*This is part of an occasional series on engineering leadership under real-world pressure. Earlier posts: [What 100% Team Retention Through Three Restructurings Actually Looks Like](/leadership/2026/07/31/what-100-percent-retention-actually-looks-like.html), [Archeology: How to Inherit a System Nobody Documented](/leadership/2026/08/21/archeology-inheriting-a-system-nobody-documented.html), and [Soft Platforms: Why Horizontal Work Dies Inside Product Verticals](/leadership/2026/09/18/soft-platforms-why-horizontal-work-dies-inside-product-verticals.html). Find me on [LinkedIn](https://www.linkedin.com/in/nvasileiadis).*
