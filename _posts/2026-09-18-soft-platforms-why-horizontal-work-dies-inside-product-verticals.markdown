---
layout: post
title: "Soft Platforms: Why Horizontal Work Dies Inside Product Verticals"
date: 2026-09-18 10:00:00 +0000
categories: leadership
description: "Content platforms, design systems, analytics tooling — work that serves the whole company reliably looks like underperformance when it's funded and measured inside one product vertical. Here's why the structure fails, and how to run a platform team without waiting for the reorg."
---

An engineer on my team once spent a week repairing the company's tracking pipeline. On the delivery dashboard, that week looks like nothing: no feature shipped, no points burned, a flat line with a bug attached to it. What actually happened is that every A/B test, every attribution model, and every conversion funnel in the company had been running on quietly corrupted data — and after that week, they weren't.

If you run a horizontal team inside a product-vertical department, you already know why I'm telling this story. That week is the whole problem in miniature: the most valuable work a platform team does is invisible when it succeeds, counterfactual by nature, and worth nothing on the metrics its host department lives by.

My team runs six platform services for the whole organisation — content management, the public website, tracking and event analytics, experimentation, consent compliance — with fifteen-plus teams depending on them daily, and it has spent its entire existence inside one product-vertical department or another. In [the retention post](/leadership/2026/07/31/what-100-percent-retention-actually-looks-like.html) I mentioned, almost in passing, that we eventually landed as something I call a *soft platform*. This post unpacks that idea: why platform-shaped work predictably dies inside product verticals, and what an engineering manager can do about it without waiting for a reorg.

## It's the shape, not the politics

My team has been embedded in two different product verticals, under different leadership, with different roadmaps. The friction was identical in both: our work served everyone, their budget served their department, and every planning cycle reached the same conclusion — the horizontal work could wait. When the same team produces the same friction inside two different departments, the explanation isn't people or politics. It's structure.

<figure>
  <img src="/assets/images/posts/soft-platforms/funded-here-serves-everyone.svg" alt="Three product-vertical departments drawn as columns, each containing product teams. The platform team sits inside vertical B, which funds and measures it, but its services flow into a horizontal band consumed by every vertical and fifteen-plus teams beyond." width="880" height="470" loading="lazy">
  <figcaption>The structural mismatch: funded and measured in one vertical, consumed by all of them.</figcaption>
</figure>

It isn't just my team. Over the same years I watched other horizontal teams — developer enablement, lifecycle tooling — quietly disbanded and reabsorbed into product teams. Our design systems team came within one strategy document of the same fate. None of them died because the work stopped mattering; the work was still there afterwards, smeared across a dozen product teams doing it worse. They died because a product-vertical department is a machine for prioritising its own roadmap, and horizontal work is never on it.

Before going further, the fair objection: *every* team believes its work is undervalued and deserves protected funding. Most are wrong, and I don't want this post to be their excuse. So here is the test. Work is platform-shaped when all four of these hold:

1. **Horizontal reach** — it serves many teams, not one product area.
2. **Service model** — consumers use it as a capability, the same way they use cloud infrastructure.
3. **BAU-dominant** — the primary work is keeping it running well, not shipping features.
4. **Invisible when working** — the company only notices it when it breaks or stops existing.

If your team doesn't pass all four, you're a product team, and a vertical is exactly where you belong. If it does pass, read on — because you're being measured with someone else's ruler.

Credit where it's due: this way of reasoning about team shapes owes a debt to Matthew Skelton and Manuel Pais's [*Team Topologies*](https://teamtopologies.com/) — the clearest thinking our industry has produced on why team boundaries and interaction modes decide what organisations can build. If the four-part test describes your team, their book is the deep end; go swim in it.

## Three mechanisms, one spiral

**The funding paradox.** A platform team embedded in a vertical must justify its headcount from a budget that captures only a fraction of its value. The department head paying for my team's consent-compliance work was funding legal safety for the entire company out of one department's allocation. When they under-invest, that isn't a failure of vision — it's rational behaviour given where the bill lands. The structure guarantees the outcome.

**The metric mismatch.** Product verticals run on delivery metrics: features shipped, velocity, sprint burndown. A platform team's value isn't in what it ships — it's in what it enables everyone else to ship. Measured honestly, that's availability, adoption, time-to-value for consuming teams, and the cognitive load those teams no longer carry. Measured on burndown, the team that kept everything running looks like the department's underperformer. Permanently.

**The invisibility trap.** Back to the tracking week. Inside a vertical, it reads as "a developer spent a week on a bug." The counterfactual — a company making decisions on wrong data indefinitely — appears on nobody's dashboard, because averted disasters never do. The cost of *not* doing platform work dwarfs the cost of doing it, and neither number is visible in the room where funding is decided.

These three mechanisms compound into a spiral: wrong metrics make the team look weak; looking weak kills the funding case; the team shrinks; survival starts requiring heroics; heroics eat the time that produced visible output; the metrics look worse. Every disbanded horizontal team I've watched walked that exact loop to the end. If your platform team feels permanently behind and permanently unfundable, you are somewhere on that loop right now.

## Organisations already know the answer — for half the problem

Here's what makes this fixable rather than hopeless: most organisations have already solved this exact problem, for one category of team. Cloud infrastructure, CI/CD, internal tooling — the *hard* platforms — typically live in a dedicated platform department with a protected budget, measured on availability and adoption. Nobody asks the Infrastructure team for its feature velocity.

The blind spot is that the same organisations fail to recognise the identical shape when the consumers aren't engineers. Content platforms, design systems, analytics and experimentation tooling, compliance tooling — these pass the four-part test every bit as clearly as cloud infrastructure does. The only difference is the direction of impact. Hard platforms face inward, improving how engineers build. Soft platforms face outward — their work directly shapes what customers, partners, and the business experience. Because their users are editors, designers, marketers, and compliance officers, the work gets filed under whichever product department seems nearest — and inherits a funding model and a measuring stick built for a different kind of team.

<figure>
  <img src="/assets/images/posts/soft-platforms/hard-vs-soft-platforms.svg" alt="Hard platforms and soft platforms both sit beneath product teams. Hard platforms point inward, improving how engineers build; soft platforms point outward, directly shaping what customers, partners, and the business experience. Hard platforms are usually already given a platform home; soft platforms are usually trapped inside a product vertical." width="880" height="510" loading="lazy">
  <figcaption>Same shape, different direction: hard platforms face inward; soft platforms face outward.</figcaption>
</figure>

## Running a platform without the org chart's permission

The clean fix is structural: a platform-shaped home, protected funding, platform metrics. If you have the authority to build that, build it. Most engineering managers don't. What follows is what I did without it: mitigation, not cure, but it changed how the team was seen and treated.

**Name the shape.** In [the archeology post](/leadership/2026/08/21/archeology-inheriting-a-system-nobody-documented.html) I wrote that renaming legacy-system excavation changed how the team felt about the work. Names do work on the outside, too. I stopped letting the team be described by its host vertical's vocabulary and started calling it what it is: a soft platform. "A team behind on its roadmap" and "a platform running six services for fifteen teams" are the same team under two descriptions — and only one of those descriptions gets asked the right questions.

**Publish a context map, an agreed scope and a stakeholders map.** Write down, explicitly, what the team provides as a service: each capability, its service level, its consumers. Ours includes commitments like unblocking a content editor within a couple of hours and onboarding a new consuming team within a week. This makes invisible work legible — a service catalogue with consumers attached is hard to dismiss as "a small team somewhere doing maintenance" — and it bounds scope, because a public list of what you do is also, implicitly, a list of what you don't.

**Report counterfactuals, not activity.** Every piece of platform work should be reported through one question: *what would have happened if we hadn't done this?* "Maintained 100% availability for fifteen-plus dependent teams" is a sentence leadership understands. "Closed forty tickets" is not. Work could be sorted into a handful of platform categories — availability, data integrity, enablement, migration, adoption — and reported in those terms. The tracking week stops being a bug fix and becomes what it was: restoring the integrity of every experiment the company runs.

**Question whether you need a product manager.** This one is contrarian. Sprint-level product management assumes a backlog of features competing for a market. A BAU-dominant platform doesn't have that; it has consumers with requests, incidents with priorities, and service levels to hold. We run with no PM by design — planning happens directly with the consuming teams, which keeps the platform honest in a way a proxy roadmap never could. The PM work that genuinely remains — gathering requirements across the company, driving adoption, representing the platform strategically — is real, but it is a fraction of a role, not a headcount. Be honest about who carries that fraction, though; more below.

**Give the business a way to "buy" from you.** Separate keeping-the-lights-on from new capability, and price them separately. Baseline service is the standing cost of the platform existing; a major initiative is an explicit, one-off ask — "this initiative needs two additional engineers for a quarter." When the company's largest recent digital programme landed on us, that separation is what made the conversation fundable instead of impossible. The alternative — silently absorbing new demands into an overloaded baseline — teaches the organisation that your capacity is infinite, right up until something important breaks.

## What it cost

The honesty section, as ever. Running a platform inside a vertical is swimming against a structural current, and the manager is the one in the water. The PM fraction I mentioned — I absorbed it, on top of engineering management. The legibility work — the boundary maps, the counterfactual reporting, the naming — is unpaid overhead that a properly-homed platform team wouldn't need. And none of it changes the funding mathematics: mitigation buys you legibility and time, not headcount. The structural argument still has to be made to people who can actually redraw the chart, and that is slow work measured in years, not quarters. I've made that case where I am; it remains a work in progress. Meanwhile the team stays smaller than its scope deserves, and heroics remain the backstop — a bill that someone eventually pays, which is a subject for later in this series.

## If this is your team

Run the four-characteristic test honestly. If you pass, stop letting vertical language describe horizontal work: name the platform, map its boundaries, report the counterfactuals, split the baseline from the initiatives — and start making the structural case to whoever holds the pen on the org chart, with the patience that implies. Platform-shaped work needs platform-shaped funding, metrics, and a home. Until it has those, the least it deserves is platform-shaped language — because the alternative is looking like underperformance forever, and no amount of heroics outruns a wrong ruler.

---

*This is part of an occasional series on engineering leadership under real-world pressure. Earlier posts: [What 100% Team Retention Through Three Restructurings Actually Looks Like](/leadership/2026/07/31/what-100-percent-retention-actually-looks-like.html), on keeping a team through the upheaval that produced this one, and [Archeology: How to Inherit a System Nobody Documented](/leadership/2026/08/21/archeology-inheriting-a-system-nobody-documented.html), on turning an undocumented inheritance into an asset. Find me on [LinkedIn](https://www.linkedin.com/in/nvasileiadis).*
