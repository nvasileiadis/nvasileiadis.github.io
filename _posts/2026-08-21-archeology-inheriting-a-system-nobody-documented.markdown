---
layout: post
title: "Archeology: How to Inherit a System Nobody Documented"
date: 2026-08-21 11:45:00 +0100
categories: leadership
description: "I inherited a business-critical platform with no documentation, no SLA, and no one left who built it. Four years later my team is the most thoroughly documented in the organisation — 100+ articles, built from zero. Here's the method."
---

At some point in your career, you will inherit a system that matters enormously to the business and comes with nothing: no documentation, no architecture diagrams, no runbooks, and nobody left in the building who built it. Most engineers treat this as a misfortune to complain about. I want to make the case that it's one of the highest-leverage situations an engineering team can find itself in — if you approach it deliberately.

When my team took ownership of our company's CMS platform, that's exactly what we got. A legacy system on a dying technology stack, powering the company's primary customer-facing website, with the engineers who built it long gone. No service-level agreement. No single sign-on. No map. Just production traffic and consequences.

Four years later, that team is the most thoroughly documented in the engineering organisation — over a hundred articles covering everything from architecture decisions to process guides — and that documentation culture directly enabled a platform migration, a company-wide rebrand across 522 pages, and the onboarding of every engineer who has joined since. None of that was luck. There was a method, and we gave it a name: **Archeology**.

## Why "Archeology"

The name matters, because it changed how the team felt about the work.

"Reading legacy code" is drudgery. "Reverse-engineering someone else's mess" breeds resentment toward people who aren't there to defend themselves. But *archeology* — systematically excavating an artefact, layer by layer, to understand the civilisation that produced it — is genuinely interesting work. The system in front of you is evidence. Every strange decision was made by someone, under constraints you can't see yet, solving a problem you haven't discovered yet. Your job is to reconstruct the constraints, not to judge the ruins.

That reframe did two things. It made the discovery work motivating instead of demoralising. And it produced *better* documentation, because engineers writing as archeologists record **why** things are the way they are — the traps, the load-bearing hacks, the "this looks wrong but don't touch it, here's what happens if you do" — rather than just cataloguing what exists.

## The method

Archeology, as we practised it, is a discovery loop with a writing obligation attached. The rules:

**1. Nothing is understood until it's written down.** An engineer who figures out how the deployment pipeline works has produced *personal* knowledge. The team owns nothing until it's an article someone else can follow. We treated the write-up as the definition of done for every piece of discovery — not a nice-to-have afterwards, because afterwards never comes.

**2. Document at the moment of confusion, not the moment of mastery.** The best documentation is written by the person who *just* stopped being confused, because they still remember what the confusion felt like and what finally resolved it. Six months later, the same person can't write that article any more — the curse of knowledge has erased the path they took. New joiners were therefore our best authors: their first weeks produced onboarding documentation no veteran could have written.

**3. Record decisions, not just descriptions.** A description tells you what the system does today. A decision record tells you why — and why the alternatives were rejected. When we later ran a two-month, ten-vendor evaluation to replace the legacy platform, the decision records became the audit trail that leadership reviewed and accepted. Descriptions depreciate as the system changes; decisions appreciate, because they keep explaining the system's shape long after the details move on.

**4. Make writing a first-class engineering activity.** This is the cultural piece, and it's where most documentation efforts die. If documentation is what engineers do when the "real work" is finished, you will have no documentation, because the real work is never finished. We put discovery-and-writing tasks on the board, estimated them, and counted them in delivery like any other work. What the team sees prioritised is what the team believes is valued.

## What it bought us

The compounding returns surprised even me:

- **Onboarding collapsed from months to days.** New engineers read their way to productivity, then improved the articles as they went — the corpus gets better with every reader.
- **The platform migration was possible in the end.** You cannot safely replace a system you don't understand. The archeology corpus was the map that let us execute a zero-disruption migration of a live estate.
- **Operational load dropped.** A large share of stakeholder questions — from the fifteen-plus teams depending on our platforms — could be answered with a link. Every article is a conversation you never have to have again.
- **The work became legible to the business.** Documented technical work can be explained, audited, and valued by people outside engineering — it even fed the company's R&D tax credit documentation. Undocumented work is invisible work, and invisible work is the first thing cut.

There's an honest irony worth naming: thorough documentation makes any individual — including the manager — more replaceable. I think that's a feature. Knowledge hoarding is job security borrowed at the team's expense, and it's the opposite of the conditions where people do their best work. The goal is a team that runs on shared, written knowledge, not on heroic memory.

## Documentation is a trust barometer

That irony points at something bigger. A team's values and culture are mostly invisible — you can't inspect trust directly. But invisible things leave visible traces, and documentation is one of the clearest.

In a high-trust culture, documentation is given willingly. Writing down what you know feels like contribution, because you're confident the knowledge won't be used to make you dispensable. As trust drops, the documentation thins with it: grudging, incomplete, written to satisfy a checkbox rather than to genuinely transfer understanding. And at zero trust it disappears entirely — not because people are lazy, but because self-protection has quietly become the higher value. *What I know is my security* is a perfectly rational position in a team where people fear for their place; it's just fatal for the team.

So when you walk into a new team, read the wiki the way an archeologist reads a dig site. The content tells you about the system. The existence, tone, and completeness tell you about the culture that produced it. A rich corpus full of admitted mistakes and "here's the trap I fell into" is the artefact of a team that feels safe. You cannot fake that — or at least, you couldn't until recently.

## The AI wrinkle

AI has made producing documentation nearly free, and that changes this picture in two ways — one practical, one subtle.

The practical one: the bottleneck has moved from writing to reading. Generating articles is no longer the hard part; finding the time to read, understand, and *retain* them is. And like school, knowledge without repetition evaporates — an article read once during onboarding is an article forgotten by the first incident. The discipline that used to go into protecting writing time now needs to go into protecting reading time: walkthroughs of new documentation, revisiting the critical runbooks on a rhythm, teaching material back to each other. A corpus nobody has absorbed is a map nobody is carrying.

The subtle one: the trust barometer stops working. When documentation writes itself, its existence no longer tells you anything about the culture underneath — a zero-trust team can now have a beautiful, complete, AI-generated wiki. The indicator I described above is on its way to becoming a lost signal. What still can't be faked is the part only a human under high trust volunteers: the confession. AI can generate descriptions; it cannot admit that the caching layer exists because of a mistake made under deadline pressure, or that an approach was tried and abandoned twice. The decision records, the rejected alternatives, the "don't touch this and here's the story why" — those remain human, and they remain the tell. If you want to read a team's culture in the age of generated documentation, look for what only trust would confess.

## If you're inheriting a mess right now

Start smaller than feels useful. One article: "What we know so far." Then the loop — explore, write, link, repeat — and protect the writing time as real work, because it is. Within a quarter you'll have a map. Within a year you'll have a culture. And the next engineer who inherits something from *you* will discover, for once, that somebody left the lights on.

---

*This is part of an occasional series on engineering leadership under real-world pressure. The first post — [What 100% Team Retention Through Three Restructurings Actually Looks Like](/leadership/2026/07/31/what-100-percent-retention-actually-looks-like.html) — covers keeping a team's trust while the org chart moves. Find me on [LinkedIn](https://www.linkedin.com/in/nvasileiadis).*
