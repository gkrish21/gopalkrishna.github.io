# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a static portfolio website for Gopal Krishna Paidi, built with vanilla HTML, CSS, and JavaScript. No build tools, frameworks, or package managers are used - this is a pure static site that can be opened directly in a browser.

## Architecture

### File Structure
- `index.html` - Main HTML file containing all page sections (hero, about, experience, skills, education, projects, contact)
- `styles.css` - Complete styling including CSS variables for theming, responsive layouts, and component styles
- `script.js` - Client-side JavaScript for theme toggle, mobile menu, and smooth scrolling
- `assets/` - Static assets directory
  - `images/` - Image files (profile photo, project images)
  - `icons/` - Icon files
- `Gopal_Resume_18Dec2024.pdf` - Resume PDF file
- `resume_text.txt` - Text version of resume (appears to be PDF data)

### Core Features

**Theme System**
- CSS custom properties (CSS variables) defined in `:root` and `[data-theme="dark"]` in styles.css:1-24
- Theme toggle implemented in script.js:14-21 using localStorage persistence
- Theme state stored in `localStorage.getItem('theme')` and applied via `data-theme` attribute on `<body>`

**Navigation**
- Fixed navbar with smooth scroll navigation in script.js:50-65
- Mobile hamburger menu (script.js:34-48) with responsive breakpoint at 768px (styles.css:405-675)
- Navigation links close automatically on click for mobile (script.js:43-48)

**Page Sections**
The single-page layout contains these sections in order:
1. Hero section with profile image and CTA buttons
2. About section with personal introduction
3. Experience timeline with alternating left/right layout (desktop) and vertical layout (mobile)
4. Skills grid showing technical skills and certifications
5. Education cards with icons
6. Projects grid with card layout
7. Contact section with contact info and form (note: form has no backend handler)

### Styling Patterns

**CSS Variables**
All colors, spacing, and transitions use CSS custom properties for consistency and theme switching. Key variables in styles.css:1-24:
- Color palette: `--primary-color`, `--secondary-color`, `--accent-color`, `--text-color`
- Backgrounds: `--bg-color`, `--bg-secondary`, `--card-bg`, `--nav-bg`
- Effects: `--shadow`, `--transition`

**Responsive Design**
- Desktop-first approach with mobile breakpoint at 768px
- Hero section switches from side-by-side to stacked layout on mobile (styles.css:414-432)
- Timeline changes from centered alternating to left-aligned on mobile (styles.css:657-675)
- Grid layouts use `repeat(auto-fit, minmax())` for responsive columns

**Component Patterns**
- Cards (project cards, education cards) use `var(--card-bg)` background with `var(--shadow)` and hover transforms
- Sections alternate between `var(--bg-color)` and `var(--bg-secondary)` using `.bg-secondary` class
- All interactive elements have `transition: var(--transition)` for smooth animations

## Development Workflow

### Local Development
Open `index.html` directly in a browser. No build step or local server required for basic development.

For better development experience with live reload, you can use any static file server:
```bash
# Python 3
python -m http.server 8000

# Python 2
python -m SimpleHTTPServer 8000

# Node.js (if http-server is installed)
npx http-server -p 8000
```

Then visit `http://localhost:8000`

### Making Changes

**Adding/Modifying Content**
- All content is in `index.html` within semantic section elements
- Update text directly in HTML - no templating system
- Profile image path is in index.html:56 (currently placeholder)
- Contact form in index.html:250-261 has no backend - needs JavaScript handler or form service integration

**Styling Changes**
- Modify CSS variables in styles.css:1-24 for global theme changes
- Component-specific styles are organized by section with comments (e.g., "/* Hero Section */", "/* Skills Section */")
- Always test both light and dark themes when making color changes
- Check responsive behavior at 768px breakpoint

**JavaScript Functionality**
- Theme toggle logic: script.js:14-31
- Mobile menu: script.js:34-48
- Smooth scroll: script.js:50-65
- All event listeners are initialized in `DOMContentLoaded` handler (script.js:1)

### Testing

**Browser Testing**
Test in multiple browsers as this uses standard web APIs:
- Theme persistence (localStorage)
- Smooth scrolling (scrollIntoView with behavior: 'smooth')
- CSS custom properties
- CSS Grid and Flexbox layouts

**Responsive Testing**
Test at these breakpoints:
- Mobile: < 768px (hamburger menu, stacked layouts)
- Tablet: 768px - 1200px
- Desktop: > 1200px (max-width constraint via `.container`)

**Checklist for Changes**
1. Test light and dark themes
2. Test mobile menu functionality
3. Verify smooth scroll navigation works
4. Check responsive layouts at 768px breakpoint
5. Validate HTML/CSS if making structural changes

## Known Limitations & TODOs

**Incomplete Content**
- Profile image is placeholder (index.html:56)
- Email addresses are placeholders (index.html:231, 274)
- GitHub links are placeholder "#" (index.html:273, 192, 213)
- Experience section has limited detail (index.html:88-113)
- Project images are gradient placeholders (styles.css:544-549)

**Missing Functionality**
- Contact form has no submission handler - needs backend integration or service like Formspree/Netlify Forms
- No form validation beyond HTML5 `required` attributes
- Mobile menu doesn't close on outside click or escape key
- No analytics or tracking

**Accessibility Considerations**
- Theme toggle button uses icon only - consider adding aria-label
- Hamburger menu needs aria-expanded state management
- Form inputs lack associated labels (using placeholders only)
- Images need descriptive alt text when real images are added
