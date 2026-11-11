---
layout: post
title: "Beyond the Rebrand: Leading the CMSv3 Migration"
image: /assets/social-cards/blog.jpg
date: 2026-11-11 10:00:00 +0000
categories: leadership
description: "A website rebrand and CMSv3 migration across 522 pages. On technical decisions, cross-team coordination, content editor experience, and lessons from a coordinated launch."
---

*An expanded account of the programme described in [Shipping the Critical Path With a Nuclear Team](/leadership/2026/09/18/shipping-the-critical-path-with-a-nuclear-team.html), published in September. This companion piece explores the engineering decisions, collaboration with content editors, and coordination behind the launch.*

From mid-October 2025 to 18 April 2026, my team worked on the main website's part of a company-wide rebrand. The website launch was coordinated with the company's public brand announcement. Delivery brought together our platform engineers, additional engineering support, content editors, and colleagues across the wider programme.

The 522 pages describe the estate, but they don't describe the work. We were also moving from CMSv2 to CMSv3: reworking architecture, updating dependencies, developing shared components, changing Contentful models, and migrating content into a different frontend application. Both applications used React, TypeScript, and GraphQL connected to Contentful.

The September article focused on the team's accumulated knowledge. Here, I want to explain how we applied it: reviewing architecture, simplifying the editing experience, preparing the migration, and coordinating work across teams.

## Why CMSv3 existed

CMSv2 was the result of our earlier migration from Apostrophe to Contentful. That move carried forward many existing component designs. The rebrand created an opportunity to revisit those designs, address technical debt, and apply what we had learned from operating the platform and supporting its editors.

We wanted more useful, targeted components, a smaller component set, and less cognitive load for content editors. Updating the platform mattered because it supported that work. The goal was a better tool for the people publishing content as well as a new brand for the people reading it.

That connection to users shaped the programme. Our three marketing teams used the CMS with different levels of frequency. We gathered feedback from active editors, reviewed changes with them, and acted on what they told us.

## Where the team's knowledge helped

The engineers knew the estate and proposed solutions we could examine together. Investment in the team, written documentation, and shared design systems gave us a foundation for the work. Content editors brought knowledge of publishing workflows that helped us evaluate the changes in practice.

<figure>
  <img src="/assets/images/posts/cmsv3-migration/compound-payout.svg" alt="Platform experience, shared documentation, and design-system capability support the CMSv3 migration and rebrand across 522 pages through engineering and content collaboration." width="880" height="430" loading="lazy">
  <figcaption>The programme drew on years of investment in people, knowledge, and shared capability.</figcaption>
</figure>

My role included planning, reviewing architectural decisions, removing blockers, and keeping stakeholders informed. I also implemented several redesigned components with AI assistance. Technical involvement was already part of my management practice through PR reviews and direction-setting; the programme added direct component work alongside those responsibilities.

The engineers owned their proposals. They explored options, including with AI assistance, and we tested them before adopting them. My contribution included questioning whether a full export-and-reimport step was necessary, examining the testing approach, and asking how new assets would be served and cached. We used those discussions to refine the migration and keep implementation focused on the launch. Working with experienced engineers meant giving their solutions careful review and helping them move forward.

## Preparing a quick switch

The launch needed to look like one quick switch. Making that possible required preparation across the applications, Contentful, and Kubernetes.

We created new fields and content models, then migrated content gradually using scripts and separate environments. Both applications remained available. Cookie-based preview access let us review the new brand on the website before the public launch. We checked asset paths and caching as well as the pages themselves.

Some validation was programmatic, Sentry provided part of our observability, and content editors helped review the result. This was a collaborative effort across engineering and the people who knew the content.

The cutover involved selecting the right content environment and application, with Kubernetes handling traffic redirection. We documented a backup and reversal procedure, retaining the previous application and content environment as a route back. The team was also prepared to address issues on the new application during launch support.

We were available on the Saturday to support the switch and address issues. There was some support work on the day; overall, the launch went smoothly.

## Coordinating scope and delivery

The coordinated launch required clear choices about scope, dependencies, and capacity. I raised delivery risks and worked with my manager, who helped secure additional engineering support. We moved tracking and experimentation work beyond the launch to concentrate on the migration and brand requirements.

I also worked with a team responsible for a customer journey to hand over presentation functionality that lived in our system. That coordination connected the immediate delivery to clearer ownership after the programme. Engineering and content editors worked together on validation as changes became available.

<figure>
  <img src="/assets/images/posts/cmsv3-migration/deadline-price-tag.svg" alt="Launch commitments and ongoing platform support alongside tracking, experimentation, and other improvements scheduled after the launch." width="880" height="360" loading="lazy">
  <figcaption>Making the launch scope and subsequent work explicit helped coordinate delivery.</figcaption>
</figure>

The editor testing window was tighter than we wanted, and the final week involved overtime. A lesson I take into future programmes is to make validation time a shared planning milestone across engineering and content teams, alongside the implementation milestones.

## What changed for editors

We reduced the number of components and acted on editor feedback. After launch, we observed fewer support requests in our Slack channel, and feedback from active editors was positive. We also benchmarked performance before and after and presented the results internally.

Taken together, editor feedback and support requests gave us useful signals about the day-to-day experience. They helped connect the engineering work to the people using the platform.

## What I take from it

The programme brought together technical review, direct implementation, user experience, scope decisions, and stakeholder work. My involvement changed with the problem: questioning an architectural assumption, helping remove a blocker, writing a component, or coordinating a dependency with another team.

Since September, I've been studying on the Oxford Emerging Leaders Programme at Saïd Business School. Its work on stakeholder influence and coalitions has given me another way to reflect on this experience. I want to build on the collaboration across engineering and content by developing shared plans and relationships earlier, so that dependencies and validation needs are understood together.

Engineers, content editors, and programme colleagues contributed different expertise to a substantial platform change and a smooth launch. For me, the lasting lesson is how technical judgment and organisational coordination reinforce each other: understanding the system, giving people ownership, and helping their work come together.

---

*I write about engineering decisions, team development, and delivery. Related reading: [Ten Vendors, One Contract](/leadership/2026/08/24/ten-vendors-one-contract-vendor-evaluation-as-engineering-leadership.html), on the earlier CMS evaluation. More on the [Blog](/blog/), or find me on [LinkedIn](https://www.linkedin.com/in/nvasileiadis).*
