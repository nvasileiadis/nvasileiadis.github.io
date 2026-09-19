---
layout: post
title: "Scrum in Name Only: What Ten Weeks of AI Adoption Did to Our Ceremonies"
image: /assets/social-cards/scrum-in-name-only.jpg
date: 2026-10-09 10:00:00 +0000
categories: leadership
description: "Our tickets write themselves, refinement is gone, and planning fits in half an hour - but the games we play on a Tuesday call became load-bearing. An engineering manager's inventory of which team ceremonies AI killed, which survived, and which quietly became the most important meetings on the calendar."
---

I have spent a meaningful part of my career installing Scrum. I introduced it to a financial services organisation that had never run a sprint, rebuilt an agency's delivery around it, hold the certifications, and have run more refinement sessions than I could count. So the sentence I'm about to write carries some weight, at least for me personally.

Ten weeks after my team adopted agentic AI tooling seriously, we practise Scrum in name only - and delivery is no worse for it. Quality went up, velocity held, and nothing we stopped doing has been missed.

This isn't a manifesto. It's an inventory. My team got access to Claude Code in mid-July as self-directed adopters with a free hand on usage, and I kept notes on what actually changed - not what the vendor decks promise, but what happened to a real team's calendar, working agreements, and relationships. I've written up the delivery side separately: [what shipped, where 1.7 billion tokens went, and why attention turned out to be the constraint](/leadership/2026/10/02/unlimited-tokens-finite-attention.html). This is the calendar. The short version: AI killed the ceremonies that existed to move *information* between humans, and made the ceremonies that move *trust* between humans more important than they have ever been. Most of what I've read about AI adoption covers the first half. The second half is the part I'd want another engineering manager to hear.

Some context for scale: across the weeks these notes cover, my team was three people, counting me wearing an IC hat alongside engineering management, running platform services with fifteen-plus consuming teams and no product manager - the shape I described in [the soft platforms post](/leadership/2026/08/28/soft-platforms-why-horizontal-work-dies-inside-product-verticals.html). Small team, wide surface. Keep that in mind; some of what follows scales differently at ten people. But I suspect the direction of travel is the same everywhere.

## What died first: the information ceremonies

**Ticket-writing went before anything else.** We now ask the Linear integration in Slack to turn a long thread into a ticket, and it does a better job than we ever did - it reads the whole thread, keeps the context we would have summarised away, and formats it consistently. Writing tickets used to be genuine work: a product manager's craft, or an engineer's chore. It is now a sentence addressed to a bot.

**Refinement stopped being a meeting.** The session where the team gathers to groom the backlog - the ceremony I have facilitated hundreds of times - is gone. What replaced it is an asynchronous ticket review: the AI has already unpacked the context and content, and a human checks it whenever suits them. Nobody dedicates an hour of synchronised attention to it, and nobody misses it. I keep waiting to discover the hidden cost. Ten weeks in, I still haven't found it.

**Planning compressed.** We still plan, but a session runs thirty minutes, an hour at the outside: estimate the work, attach whatever context the ticket doesn't carry. The preparation that used to happen *in* the meeting now happens *before* it, done by tooling.

Notice what these three have in common. Each existed to move information from one head to another - from the stakeholder's thread to the engineer's queue, from the backlog's ambiguity to the team's shared understanding. When the information can move itself, the ceremony is scaffolding around a wall that already stands.

## What survived: the timeboxes

We kept daily standup. We kept retrospectives. We kept the sprint boundary itself.

What survived, I've realised, is not Scrum's machinery but its *clock*. The timeboxes create a cadence - a moment where the team's attention synchronises, where drift gets caught, where the week has a shape. None of that is about transferring information; standup was always a poor mechanism for that, and it's an even worse one now that the tooling knows the state of the work better than any status round. The timeboxes survive because they were never really information ceremonies. They were rhythm.

So when I say Scrum in name only, I mean it precisely: the vocabulary remains, the cadence remains, and the machinery underneath has been quietly replaced. I don't think my team is unusual - I think we're just early, and honest about it.

There's a harder sentence underneath this one. The scrum-master function, as I have practised it and been certified in it, has dissolved into the tooling. So has a real fraction of ticket-level product management. I'm not celebrating that - it was my craft too - but I'd rather name it than pretend the meetings we no longer hold are still someone's job. The judgment those roles carried - knowing *which* work matters, reading the politics, protecting the team - is as valuable as ever. The ceremony-running is not.

## The cost nobody's dashboard shows: pairing inverted

Here is the change I didn't see coming, and the reason this post exists.

Everyone on my team is now pair programming all day - with the AI. It's a genuinely better pair than a human for most tasks: endlessly available, current on things no human stays current on, never impatient. The productivity is real.

And it is quietly isolating. The accidental collaboration that used to be structural - asking a teammate before you'd exhausted your own ideas, debugging over a shared screen, the fifteen-minute tangent that turns into shared understanding - becomes optional when a better answer sits in your terminal. Optional, and therefore rare. A team this size can now go days shipping well while barely speaking, each person locked in an intense private dialogue with a machine. Nothing on any delivery dashboard flags this. Velocity looks fine. The team, as a *team*, is thinning.

## What became load-bearing: the ceremonies that were never about work

Which brings me to the meetings that used to need defending and no longer do.

Every week we hold what we call the team staff meeting. Part of it is talking through tech and company developments. And part of it - I'll say it plainly - is playing GeoGuessr or Skribbl together for a few minutes. On Fridays we hold a social: no agenda, life outside work. Before the reorganisations, when this team spanned Europe, we ran three- and four-day collaboration retreats in Kraków, Málaga, and Porto - and the working relationships those trips built carried us through everything that came after.

A year ago, meetings like these justified themselves as culture, morale, retention - soft benefits, first against the wall when calendars fill. In an AI-era team, I've come to see them differently: they are now the *only* structured time when the humans face each other without a machine in the middle. The information ceremonies are gone; nothing else on the calendar makes the team a team. The games are not a break from the real work of collaboration. At that size, days deep in private AI dialogue, they *are* the collaboration infrastructure.

That's the inversion, stated as a rule of thumb: **as AI absorbs the ceremonies that move information, the ceremonies that move trust stop being perks and become infrastructure.** Kill the first kind freely. Protect the second kind like production.

## The honesty section

Ten weeks is ten weeks. Some of this may snap back, and I'm writing observations, not laws. The team has also started growing since these notes were taken, and I don't yet know which of these effects were properties of AI adoption and which were properties of being very small while adopting it.

Estimation has become genuinely harder, not easier. The variety of work a small team can now credibly take on has opened wildly, the models underneath us change without notice, and the predictability that Scrum-style estimation assumes is eroding. We estimate anyway, in our thirty-minute planning, and we're honest that the error bars have grown.

And the days are denser. The work has shifted heavily towards reading - reviewing, verifying, understanding text we didn't write - and that turns out to exhaust a mind faster than writing ever did. The team can go home with the clock showing hours left and the concentration already spent. That observation deserved more than a paragraph, so it got [its own post](/leadership/2026/10/02/unlimited-tokens-finite-attention.html): unlimited tokens, finite attention.

## If this is your team

Run the inventory. Take every recurring meeting on your team's calendar and ask one question: does this ceremony exist to move *information* or to move *trust*?

The information ceremonies - refinement, status rounds, ticket triage, most of planning's bulk - are dying, and you should let them. Making people perform information transfer that tooling now handles is how you generate resentment against the ceremonies that matter.

The trust ceremonies - the social, the games, the retro's human half, the retreat if you can get it funded - need the opposite treatment. Name what they now do, out loud, to your team and your leadership: this is not a perk, this is the collaboration layer, and it is the only one we have left. Because your engineers are already pairing all day, every day - and if you don't build the time where they pair with each other, nobody will notice what's missing until the velocity charts are the only thing still connecting them.

---

*This one sits outside my [series on engineering leadership under real-world pressure](/blog/) - the second of two posts on my team's AI adoption, after [Unlimited Tokens, Finite Attention](/leadership/2026/10/02/unlimited-tokens-finite-attention.html). Find me on [LinkedIn](https://www.linkedin.com/in/nvasileiadis).*
