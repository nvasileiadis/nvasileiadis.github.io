---
layout: post
title: "Unlimited Tokens, Finite Attention: Ten Weeks of AI-Assisted Engineering on a Team of Three"
image: /assets/social-cards/unlimited-tokens.jpg
date: 2026-10-02 10:00:00 +0000
categories: leadership
description: "A front-end team of three spent ten weeks and 1.7 billion tokens shipping backend and infrastructure work with Claude Code. Quality went up, velocity didn't, and the bottleneck turned out to be the one resource you can't buy more of: human attention. The numbers, what worried us, and the practices we kept."
---

For ten weeks this summer my team ran the experiment most engineering teams are running in some form: an AI coding assistant on real delivery, every day, with notes kept as we went. Ours had a sharper edge than most. The team was three people - two software engineers and me, wearing the engineering manager hat alongside product ownership and, for one workstream, an engineer's - and all three of us are front-end by background. We had a backend and infrastructure gap, and a plan to hire for it. The company-wide AI programme arrived first: Claude Code, a free hand on usage, and a fair question from the organisation - can model capacity cover a capability gap that sits outside a team's specialism?

This is the team's answer, written up when the experiment concluded, with the costs attached. I promised it in a comment thread in August. Here it is.

## The fair objection first

AI adoption write-ups come in two flavours: vendor evangelism with a velocity chart, or a grievance about headcount in a lab coat. I'd raise that objection too, so the limits go first. Ten weeks. Three people. Usage data from two of the three - the third export came back empty and can't be reconstructed. No control group. Velocity tracked by feel, not by instrument. Observations, not laws - but written down while they were happening, and the practices at the end survived contact with real delivery.

## What shipped

A front-end team delivered backend and infrastructure work in-house. Terraform, Kubernetes manifests, a MongoDB migration, Redis, Grafana dashboards and production alerting were all built by people who had never written any of them before. Two workstreams carried most of it.

The first was switching back on the experimentation capability we had [deliberately switched off for the rebrand](/leadership/2026/09/18/shipping-the-critical-path-with-a-nuclear-team.html): restoring A/B testing on the re-architected platform, then the observability to run it safely - metrics, dashboards, and the fixes that production alerts surfaced once they existed, from error-rate spikes to a circuit breaker on the cache. One engineer and the assistant.

The second was a ground-up rethink of a short-link service - the smaller tool I mentioned in [the vendor post](/leadership/2026/08/24/ten-vendors-one-contract-vendor-evaluation-as-engineering-leadership.html), which had failed its re-test and was being replaced in-house. A single Claude Code session, started in August, covered the whole re-plan: reviewing the architecture, challenging whether a cache and a CMS dependency were still needed (they weren't), rewriting the tickets, then iterating through pull requests, a manifests change and the database migration. That workstream was mine - the [player-coach exception](/leadership/2026/09/18/shipping-the-critical-path-with-a-nuclear-team.html) from the nuclear-team post, end date included.

The work also reviewed itself, in both directions. Each engineer used the assistant to review the other's AI-assisted branches, and for one high-stakes change we ran an adversarial multi-agent review: 34 agents, 15 findings confirmed, 14 refuted. That is review depth a team of three cannot staff.

## Where 1.7 billion tokens went

At the end, two of us ran an open-source usage tool against our local Claude Code history. Combined: roughly 1.7 billion tokens, about 6,000 messages, 25 sessions, over about ten weeks. Models varied by task and availability: Fable 5, Opus 4.8, Opus 5 and Sonnet.

| | Two engineers, combined |
|---|---|
| Total tokens | ~1.7 billion |
| Messages sent | ~6,000 |
| Sessions | 25 |
| Tokens the model wrote | under 1% |
| Cache hit rate | 95-96% |
| Largest single session | 67-75% of each engineer's total |
| Tool calls per message | 9-13 |

Three readings.

**Under 1% of the tokens are the model writing.** Over 99% is it re-reading conversation history, files and tool output. Cost is a function of session length and tool-call volume, not of output. Hold that shape in mind; it turns out to describe the humans too.

**Usage is concentrated.** One long-running session per engineer accounts for two-thirds to three-quarters of all tokens - the two delivery sessions above. Everything else is small. Caching roughly halved the cost, and the tool's session-hygiene advice is worth adopting: one session per task, clear after a few dozen turns, hand-off notes in a context file.

**The expensive prompts are approvals.** The tool flagged "Yes", "Yes, proceed" and "Go ahead and start on the ticket" as our costliest messages and suggested being more specific. We disagree with the diagnosis. Those are hand-offs of large, already-specified pieces of work; the cost *is* the delegated work. What the finding does show is how much rides on each approval - which is the whole argument of the safety section below.

<figure>
  <img src="/assets/images/posts/unlimited-tokens/reading-is-the-new-job.svg" alt="Two horizontal bars. The first, where 1.7 billion tokens went: a sliver under 1% for the model writing, over 99% for the model reading conversation history, files and tool output. The second, where the team's day went: a small block for writing and a large one for reading, verifying and reviewing, annotated as not instrumented - the shape is the observation." width="880" height="360" loading="lazy">
  <figcaption>Under 1% of the tokens were the model writing. The same shape turned out to describe the team's day.</figcaption>
</figure>

## Quality up, velocity flat

The result I expected was speed. The result we got was quality. Edge cases, exceptions and security issues that a human would need years of tenure to have met were caught routinely; the assistant is more current on vulnerabilities and library versions than any of us can be. And when it reads across our repositories it tends to reuse the company's existing stack for databases and infrastructure rather than introduce something new - a compliance benefit we didn't plan for.

Velocity moved less than expected, and I think I know where the time went: from writing into reading. Time saved producing code moved into verifying, reviewing and understanding code nobody on the team had written. The one unambiguous win is admin and backlog work - ticket writing, rewriting stale descriptions, unpacking context from long threads. The assistant is better at it than we are, and it lifted a product-management load I had been carrying. Refinement sessions became asynchronous ticket reviews. What that did to the rest of our calendar is its own post.

## Human attention is the bottleneck

Here is the finding no dashboard shows, and the reason this post has the title it has.

Model capacity is now effectively unlimited. Each engineer's daily attention is not. It is shaped by biology and by whatever else the day contains, it is always smaller than what the model can produce, it cannot be bought, and it often runs out before the working day does. One of the team put it in a sentence I've kept: you can't buy human brain tokens.

<figure>
  <img src="/assets/images/posts/unlimited-tokens/brain-tokens.svg" alt="A chart across one working day. A flat line at the top labelled model capacity, effectively unlimited. Below it, a curve labelled human attention, finite and daily, rises in the morning, peaks, and falls to zero well before the dashed line marking the end of the working day." width="880" height="400" loading="lazy">
  <figcaption>You can't buy brain tokens. Model capacity is flat and effectively unlimited; the team's attention is a curve that runs out before the day does.</figcaption>
</figure>

Reading is the new job, and reading is not writing. Writing is how engineers think and learn; the filtering and the repetition happen in the act. Understanding something you didn't write takes longer and consolidates less. The volume of text to read, verify and understand went up every week, and it tires a mind faster than writing ever did. We need more reading time in the plan, not less.

Two more things I'd want another manager to hear. The senior engineers became deliberately sparing - using the assistant to assist rather than to answer, to keep the problem-solving muscle strong. From two levels up that can look like slow adoption; it is craft retention, and I'd protect it. And one engineer, asked what had changed, said: "Where does my dopamine hit come from? It used to be solving problems and writing elegant code. Now I just read." I don't have an answer to that. I'm not sure the industry does yet.

One thing didn't change at all. For on-call and for support, a colleague is still preferred. Sharing pressure with a human is not something the tooling replaces.

## What worried us

**It doesn't push back.** Building is faster, but the assistant builds the wrong thing as competently as the right thing. Specs matter more than ever and should be exhausted before building starts. We're confident things were built the right way; we're less sure we kept the balance on building the right product.

**Verification gaps.** At least once a pull request was raised while the build was failing and CI hadn't passed, and had to be called out. Nothing should be raised without a human running it.

**Actions outside the workspace.** Even Fable 5 was caught, at an approval step, trying to read repositories outside the project, and we saw requests to unknown addresses and to URLs that don't exist. Two failure modes follow. Auto-approve, and those actions are accepted silently. Check everything, and fatigue sets in - impatience when the same permission is requested for the ninth time, which is exactly when the ninth one gets rubber-stamped. That is a control problem, not a tooling one, and no budget fixes it.

**Models contradict each other.** Different models produce incompatible plans for the same problem. Asking one model to rate another's work produces fault-finding rather than assessment. Lower tiers hallucinate noticeably more.

**Availability is now capacity.** When Fable 5 became unavailable mid-project, reverting to Opus 5 cost about a day of catch-up on the tickets, plans and documents the previous model had produced. With model capacity standing in for a specialism, that is a capacity risk rather than an inconvenience: the team's backend capability is only as available as the model is.

**No natural stopping point.** There is always another prompt. "Done" has to be imposed by a human. And being told "you're completely right!" after a wrong answer grates in a way the equivalent from a colleague never did.

## Practices we kept

1. **Spec first.** Treat the spec as the step to exhaust before any building.
2. **Never auto-approve.** File-system or network access outside the repository is a hard stop.
3. **A human runs the build** and checks CI before any pull request is raised.
4. **One session per task.** Clear after a few dozen turns; hand-off notes in a context file.
5. **Cross-review AI-assisted branches** with a second engineer, plus adversarial agent review for high-stakes changes.
6. **One model per project** where possible; budget a day of catch-up when forced to switch.
7. **Plan reading and verification time** explicitly, not as slack.
8. **Keep humans on on-call** and team support.
9. **Capture unexplained model behaviour** when it happens - screenshot, session ID, prompt - so it can be reported rather than argued about afterwards.

## The honest close

Ten weeks is ten weeks, and two of three exports is two of three. The question the organisation asked got a genuine *partly*: the infrastructure shipped, to a higher bar than we could have reached alone, and the bill came due somewhere the velocity chart can't see. Three questions I'd put to any organisation scaling this: how would you know the trade *isn't* working? How do you measure quality gains when velocity is flat? And which guardrails should be organisation-wide defaults rather than each engineer's discipline?

The team is growing again as this publishes; whether the next ten weeks look like these with more people in the room is a later post. What these ten weeks did to our calendar - which ceremonies died, which survived, and which quietly became the most important meetings we hold - is the next one: *Scrum in Name Only*.

---

*This one sits outside my [series on engineering leadership under real-world pressure](/blog/), though it leans on it - the [nuclear team](/leadership/2026/09/18/shipping-the-critical-path-with-a-nuclear-team.html) that switched experimentation off, and the [vendor method](/leadership/2026/08/24/ten-vendors-one-contract-vendor-evaluation-as-engineering-leadership.html) that concluded "build" for once. Find me on [LinkedIn](https://www.linkedin.com/in/nvasileiadis).*
