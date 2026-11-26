/**
 * Shareable section links.
 *
 * Adds a link icon after every h2/h3 that has an id inside .post-content.
 * Clicking it jumps to the section (updating the address bar) and copies the
 * full section URL to the clipboard, so a single link can take someone
 * straight to e.g. /credentials/#mentoring.
 *
 * Loaded only on pages with `heading_anchors: true` in front matter. The icon
 * is SVG with no text, so heading textContent (used by section-timing.js for
 * analytics section names) is unchanged.
 *
 * Written in ES5 syntax so jekyll-minifier's Uglifier pass can process it.
 */
(function () {
  'use strict';

  var COPIED_MS = 1600;
  var ICON =
    '<svg viewBox="0 0 24 24" width="16" height="16" fill="none" stroke="currentColor" ' +
    'stroke-width="2" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true" focusable="false">' +
    '<path d="M10 13a5 5 0 0 0 7.54.54l3-3a5 5 0 0 0-7.07-7.07l-1.72 1.71"/>' +
    '<path d="M14 11a5 5 0 0 0-7.54-.54l-3 3a5 5 0 0 0 7.07 7.07l1.71-1.71"/>' +
    '</svg>';

  var headings = document.querySelectorAll('.post-content h2[id], .post-content h3[id]');
  if (headings.length === 0) return;

  // One polite live region announces "Link copied" to screen readers.
  var status = document.createElement('div');
  status.className = 'heading-anchor-status';
  status.setAttribute('role', 'status');
  status.setAttribute('aria-live', 'polite');
  document.body.appendChild(status);

  function sectionName(heading) {
    return (heading.textContent || '').replace(/\s+/g, ' ').trim();
  }

  function copy(text, done) {
    if (navigator.clipboard && typeof navigator.clipboard.writeText === 'function') {
      navigator.clipboard.writeText(text).then(done, function () {});
    }
  }

  function onClick(event) {
    var link = event.currentTarget;
    var url = window.location.href.split('#')[0] + link.getAttribute('href');
    // Default navigation still runs: the page jumps and the address bar updates.
    copy(url, function () {
      link.classList.add('is-copied');
      status.textContent = 'Link to ' + link.getAttribute('data-section') + ' copied';
      setTimeout(function () {
        link.classList.remove('is-copied');
        status.textContent = '';
      }, COPIED_MS);
    });
  }

  for (var i = 0; i < headings.length; i++) {
    var heading = headings[i];
    var name = sectionName(heading);
    var link = document.createElement('a');
    link.className = 'heading-anchor';
    link.href = '#' + heading.id;
    link.setAttribute('data-section', name);
    link.setAttribute('aria-label', 'Copy link to section: ' + name);
    link.innerHTML = ICON;
    link.addEventListener('click', onClick);
    heading.appendChild(link);
  }
})();
