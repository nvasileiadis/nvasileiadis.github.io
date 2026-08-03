/**
 * Section reading-time tracking for Umami.
 *
 * Every second the tab is visible, one second is credited to the section the
 * reader is currently in (the last h2 above the upper part of the viewport).
 * When a section's cumulative reading time crosses a threshold, a single
 * `section-read` event fires with {page, section, seconds}. Comparing 10s/30s
 * event counts per section shows which sections actually hold attention,
 * without cookies, session identity, or unload-time beacons.
 *
 * Written in ES5 syntax so jekyll-minifier's Uglifier pass can process it.
 */
(function () {
  'use strict';

  var HEARTBEAT_MS = 1000;
  var THRESHOLDS = [10, 30]; // seconds of cumulative reading time per section

  var headings = document.querySelectorAll('.post-content h2');
  if (headings.length === 0) return;

  var sections = [];
  for (var i = 0; i < headings.length; i++) {
    sections.push({
      el: headings[i],
      name: (headings[i].textContent || '').replace(/\s+/g, ' ').trim().slice(0, 50),
      seconds: 0,
      fired: {}
    });
  }

  // The section being read: the last heading above the top 40% of the
  // viewport. Content above the first h2 (hero, intro) is not tracked.
  function currentSection() {
    var marker = window.innerHeight * 0.4;
    var current = null;
    for (var i = 0; i < sections.length; i++) {
      if (sections[i].el.getBoundingClientRect().top < marker) {
        current = sections[i];
      }
    }
    return current;
  }

  function track(name, data) {
    if (window.umami && typeof window.umami.track === 'function') {
      window.umami.track(name, data);
    }
  }

  setInterval(function () {
    if (document.visibilityState !== 'visible') return;
    var section = currentSection();
    if (!section) return;
    section.seconds += 1;
    for (var i = 0; i < THRESHOLDS.length; i++) {
      var threshold = THRESHOLDS[i];
      if (section.seconds >= threshold && !section.fired[threshold]) {
        section.fired[threshold] = true;
        track('section-read', {
          page: window.location.pathname,
          section: section.name,
          seconds: threshold
        });
      }
    }
  }, HEARTBEAT_MS);
})();
