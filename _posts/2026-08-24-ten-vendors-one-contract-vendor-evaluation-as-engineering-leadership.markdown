---
layout: post
title: "Ten Vendors, One Contract: Vendor Evaluation as Engineering Leadership"
date: 2026-08-24 10:00:00 +0000
categories: leadership
description: "Choosing enterprise software looks like a spreadsheet exercise. It's organisational design under uncertainty — a practitioner's method from a ten-vendor evaluation: criteria before demos, decision records that outlive the contract, and borrowing negotiating weight you don't have."
---

The most senior person ever to lead my team was borrowed. During the period I've written about before — when a restructuring had left us [without a permanent organisational home](/leadership/2026/07/31/what-100-percent-retention-actually-looks-like.html) — the organisation assigned us a temporary head: a very senior programme manager, parachuted in not to run our engineering but for one specific reason. We were evaluating vendors for what would become the company's enterprise CMS, the evaluation was converging, and the next phase needed something my title didn't carry: the weight to negotiate and sign an enterprise contract.

That detail — the borrowed head — is the part of the story I find most useful years later, because it points at what vendor evaluation actually is. Most engineers, and plenty of engineering managers, treat choosing software as a feature-comparison exercise: build the spreadsheet, watch the demos, score the columns, pick the winner. I want to make the case that it's something else entirely. **Choosing enterprise software is organisational design under uncertainty.** The method, the records, and the weight behind the signature matter more than the logo you end up picking — and all three are leadership work, not procurement admin.

We started with ten vendors. One contract got signed. Here's what happened in between, and what I'd tell any engineering leader handed the same job.

## The tool is not the decision

The first discipline is understanding what you're actually choosing. A CMS demo shows you editing screens and APIs. The decision you're really making is: how will content teams and engineering relate to each other for the next decade? Who owns the content model? What does your platform team stop building because the vendor now provides it — and what do they start maintaining because the vendor assumes it? What does an upgrade cost in engineer-weeks, and who pays it?

None of that is on the feature matrix, and all of it outlasts every feature on the matrix. When we compared vendors, the differences that mattered were almost never "does it do X" — at the enterprise tier, nearly everything does X. The differences that mattered were operating-model differences: what each vendor's architecture would make easy, what it would make political, and what it would quietly make impossible. If your evaluation criteria don't include sentences about *people and teams*, you're scoring the demo, not the decision.

## Criteria before demos

The second discipline is sequencing: agree what "good" means before you let a vendor show you anything. Vendor demos are professionally designed to reset your criteria — every deck is a argument for why the thing this vendor is best at is the thing that matters most. The defence is boring and effective: written criteria, agreed with your stakeholders first, and the same structure applied to every vendor. Ten vendors, one script.

Where a shortlist survived contact with the criteria, we went deeper than demos: hands-on evaluation against our real content and our real constraints, not the vendor's curated sample data. Real content is ugly. It has the legacy structures, the exceptions, the accumulated sins of a decade — the exact things [an inherited estate teaches you to respect](/leadership/2026/08/21/archeology-inheriting-a-system-nobody-documented.html). A vendor that shines on their demo data and stumbles on your ugliest page has told you something no reference call will.

## Write down the losers

Here's the practice I'd defend hardest: we recorded the decision — and not just the winner. Why each vendor fell out, at which gate, against which criterion. Not for compliance; nobody demanded it. We did it because a decision without a record is a rumour with a signature.

The payoff came in three forms. First, the decision survived its decision-makers: people move on, teams reshape, and "why did we choose this" stops being answerable by anyone in the room unless it's written down. Second — and this genuinely surprised me — the records got reused. Long after the contract was signed, the evaluation material kept resurfacing in leadership conversations about adjacent decisions, because it turned out to be one of the few worked examples in the company of how to compare enterprise options rigorously. Method is portable; a good decision record is a template for the next decision. And third, the cheapest payoff: when someone asks "did we look at X?" two years later, the answer takes thirty seconds and costs no credibility.

## Borrow weight you don't have

Then there's the contract — and this is where the borrowed head comes back in. An enterprise agreement is negotiated between organisations, and vendors calibrate instantly to the seniority across the table. An engineering manager negotiating an enterprise contract is playing outside their weight class, and pretending otherwise is how you sign a bad deal politely.

The organisation understood this, and solved it structurally: a very senior programme manager joined as our temporary head specifically so the evaluation's conclusion would carry negotiating weight. Contract signed, mission accomplished, and the temporary head moved on. I've thought about that arrangement a lot since, because it models something engineering leaders get wrong in both directions: we either try to carry weight we don't have, or we hand the whole decision to whoever has the weight and lose the method in the handover. The right shape is what we stumbled into — **the evaluation stays with the people who understand the work; the weight gets borrowed for exactly the phase that needs it, then returned.** These days, running a vendor portfolio north of £200k a year, I treat that as a repeatable pattern rather than a lucky accident: know which phase of a decision you're in, and staff the weight to the phase.

## Signed is not permanent

One more discipline, learned more recently: the evaluation never really ends. A buy decision is a bet about fit, and fit drifts — your needs move, the vendor's roadmap moves, and a contract that was right can quietly stop being right. The same method that chooses a vendor has to be willing to unchoose one. This year, one of our smaller buy decisions failed exactly that re-test: a tool we'd bought no longer fit how the estate had evolved, and we're replacing it with something built in-house. It's a fraction of the CMS decision's size, but the symmetry is the point — method that only ever concludes "buy" or only ever concludes "keep" isn't a method, it's a preference with paperwork.

## What it cost

The honesty section, as ever. A rigorous evaluation is expensive in the currency a team has least of: attention. This ran for months, alongside real delivery, in a period when the team's own organisational future was uncertain — which, I'd argue, is precisely why it held us together, but I won't pretend the bandwidth wasn't paid for. The record-keeping earns nothing at the time; it's overhead until the day it's priceless. And the discipline of letting criteria decide — rather than taste — costs something too, because engineers form preferences early and holding a process open against your own preference is genuinely uncomfortable.

But here's the close, and it's the same sentence I'd put on the whole series: the logo on the contract is the least durable part of the decision. Vendors get acquired, rebrand, change their pricing model, drift. What your organisation keeps is the method, the records, and the people who learned to run both. If you're an engineering leader and a vendor decision lands on your desk, don't treat it as time away from the real work. Run it like it's organisational design — because it is — and it will still be paying you back years after anyone remembers the demos.

---

*This is part of an occasional series on engineering leadership under real-world pressure. Earlier posts: [What 100% Team Retention Through Three Restructurings Actually Looks Like](/leadership/2026/07/31/what-100-percent-retention-actually-looks-like.html), where this evaluation's organisational backdrop is told in full, and [Archeology: How to Inherit a System Nobody Documented](/leadership/2026/08/21/archeology-inheriting-a-system-nobody-documented.html), on why written records outlive the people who write them. Find me on [LinkedIn](https://www.linkedin.com/in/nvasileiadis).*
