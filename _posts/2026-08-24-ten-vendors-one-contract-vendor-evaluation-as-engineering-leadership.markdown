---
layout: post
title: "Ten Vendors, One Contract: Vendor Evaluation as Engineering Leadership"
image: /assets/social-cards/ten-vendors.jpg
date: 2026-08-24 10:00:00 +0000
categories: leadership
description: "Choosing enterprise software looks like a spreadsheet exercise. It's organisational design under uncertainty - a practitioner's method from a ten-vendor evaluation: criteria before demos, decision records that outlive the contract, and staffing the right seniority to the phase that needs it."
---

The most useful thing I learned from a ten-vendor evaluation wasn't about any of the vendors. It was about how the organisation staffed the final phase. During the period I've written about before - [a restructuring that was still working out where a content platform team should sit](/leadership/2026/07/31/what-100-percent-retention-actually-looks-like.html) - my team was evaluating vendors for what would become the company's enterprise CMS. The evaluation was converging, and the next phase was a different kind of work: negotiating and signing an enterprise agreement, which in any company happens at a level above an engineering manager. So the organisation paired us with a senior programme manager for exactly that phase - not to run our engineering, but to carry the commercial negotiation at the level it belonged.

That arrangement is the part of the story I find most useful years later, because it points at what vendor evaluation actually is. Most engineers, and plenty of engineering managers, treat choosing software as a feature-comparison exercise: build the spreadsheet, watch the demos, score the columns, pick the winner. I want to make the case that it's something else entirely. **Choosing enterprise software is organisational design under uncertainty.** The method, the records, and the weight behind the signature matter more than the logo you end up picking - and all three are leadership work, not procurement admin.

We started with ten vendors. One contract got signed. Here's what happened in between, and what I'd tell any engineering leader handed the same job.

## The tool is not the decision

The first discipline is understanding what you're actually choosing. A CMS demo shows you editing screens and APIs. The decision you're really making is: how will content teams and engineering relate to each other for the next decade? Who owns the content model? What does your platform team stop building because the vendor now provides it - and what do they start maintaining because the vendor assumes it? What does an upgrade cost in engineer-weeks, and who pays it?

None of that is on the feature matrix, and all of it outlasts every feature on the matrix. When we compared vendors, the differences that mattered were almost never "does it do X" - at the enterprise tier, nearly everything does X. The differences that mattered were operating-model differences: what each vendor's architecture would make easy, what it would make political, and what it would quietly make impossible. If your evaluation criteria don't include sentences about *people and teams*, you're scoring the demo, not the decision.

## Criteria before demos

The second discipline is sequencing: agree what "good" means before you let a vendor show you anything. Vendor demos are professionally designed to reset your criteria - every deck is a argument for why the thing this vendor is best at is the thing that matters most. The defence is boring and effective: written criteria, agreed with your stakeholders first, and the same structure applied to every vendor. Ten vendors, one script.

Where a shortlist survived contact with the criteria, we went deeper than demos: hands-on evaluation against our real content and our real constraints, not the vendor's curated sample data. Real content is ugly. It has the legacy structures, the exceptions, the accumulated sins of a decade - the exact things [an inherited estate teaches you to respect](/leadership/2026/08/21/archeology-inheriting-a-system-nobody-documented.html). A vendor that shines on their demo data and stumbles on your ugliest page has told you something no reference call will.

## Write down the losers

Here's the practice I'd defend hardest: we recorded the decision - and not just the winner. Why each vendor fell out, at which gate, against which criterion. Not for compliance; nobody asked for it. We did it because a decision nobody wrote down can't be explained, defended or reused once the people who made it have moved on to other work.

The payoff came in three forms. First, the decision survived its decision-makers: people move on, teams reshape, and "why did we choose this" stops being answerable by anyone in the room unless it's written down. Second - and this genuinely surprised me - the records got reused. Long after the contract was signed, the evaluation material was picked up as a starting point for adjacent decisions, because a worked example of comparing enterprise options is easier to adapt than a blank page. Method is portable; a good decision record is a template for the next decision. And third, the cheapest payoff: when someone asks "did we look at X?" two years later, the answer takes thirty seconds and costs no credibility.

## Staff the seniority to the phase

Then there's the contract - and this is where the programme manager comes back in. An enterprise agreement is negotiated between organisations, and vendors calibrate instantly to the seniority across the table. That is why, in most companies, an engineering manager doesn't negotiate an enterprise contract alone - and shouldn't. It isn't a gap in the manager; it's governance working as designed.

The interesting question is what happens to the evaluation at that point. There are two ways to get it wrong: the engineering side tries to carry a negotiation it isn't positioned for, or the whole decision moves to whoever is positioned for it and the method gets lost in the handover. The arrangement I was part of avoided both. A senior programme manager joined for the negotiation phase, the evaluation and its records stayed with the team that had done the work, and when the contract was signed the assignment ended, as planned. The right shape, which I only recognised as a pattern afterwards: **the evaluation stays with the people who understand the work; the seniority is added for exactly the phase that needs it.** These days, running a vendor portfolio of my own, I treat that as a repeatable pattern rather than a happy accident: know which phase of a decision you're in, and staff the seniority to the phase.

## Signed is not permanent

One more discipline, learned more recently: the evaluation never really ends. A buy decision is a bet about fit, and fit drifts - your needs move, the vendor's roadmap moves, and a contract that was right can quietly stop being right. The same method that chooses a vendor has to be willing to unchoose one. This year, one of our smaller buy decisions failed exactly that re-test: a tool we'd bought no longer fit how the estate had evolved, and we're replacing it with something built in-house. It's a fraction of the CMS decision's size, but the symmetry is the point - method that only ever concludes "buy" or only ever concludes "keep" isn't a method, it's a preference with paperwork.

## What it cost

The honesty section, as ever. A rigorous evaluation is expensive in the currency a team has least of: attention. This ran for months, alongside real delivery, in the middle of a restructuring - which, I'd argue, is precisely why it held us together, but I won't pretend the bandwidth wasn't paid for. The record-keeping earns nothing at the time; it's overhead until the day it's priceless. And the discipline of letting criteria decide - rather than taste - costs something too, because engineers form preferences early and holding a process open against your own preference is genuinely uncomfortable.

But here's the close, and it's the same sentence I'd put on the whole series: the logo on the contract is the least durable part of the decision. Vendors get acquired, rebrand, change their pricing model, drift. What your organisation keeps is the method, the records, and the people who learned to run both. If you're an engineering leader and a vendor decision lands on your desk, don't treat it as time away from the real work. Run it like it's organisational design - because it is - and it will still be paying you back years after anyone remembers the demos.

---

*This is part of an occasional series on engineering leadership under real-world pressure. Earlier posts: [What 100% Team Retention Through Three Restructurings Actually Looks Like](/leadership/2026/07/31/what-100-percent-retention-actually-looks-like.html), where this evaluation's organisational backdrop is told in full, and [Archeology: How to Inherit a System Nobody Documented](/leadership/2026/08/21/archeology-inheriting-a-system-nobody-documented.html), on why written records outlive the people who write them. Find me on [LinkedIn](https://www.linkedin.com/in/nvasileiadis).*
