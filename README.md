# Portfolio Website

Professional portfolio website showcasing data engineering projects and experience.

## Live Site

**Production**: https://gkrish21.github.io/gopalkrishna.github.io

## About

This is a single-page responsive portfolio website built with vanilla HTML, CSS, and JavaScript. It features:

- **Responsive Design**: Mobile-first approach with breakpoint at 768px
- **Dark/Light Theme**: Toggle between themes with localStorage persistence
- **Smooth Navigation**: Smooth scrolling between sections
- **Contact Form**: Integrated with Formspree for message submissions
- **Modern UI**: Clean, professional design with animations and transitions

## Technologies Used

- HTML5
- CSS3 (Custom Properties, Flexbox, Grid)
- Vanilla JavaScript
- Font Awesome 6.4.0 (icons)
- Google Fonts (Inter, Outfit)
- Formspree (contact form backend)

## Sections

1. **Hero**: Introduction with name, title, and call-to-action buttons
2. **About**: Professional summary highlighting data engineering expertise
3. **Experience**: Timeline of 5 recent positions (2013-present)
4. **Skills**: Technical skills and certifications
5. **Education**: Academic background and advanced certifications
6. **Projects**: Showcase of 4 major work projects
7. **Contact**: Contact information and functional contact form

## Local Development

No build tools required! Simply open `index.html` in your browser.

For live reload during development, you can use any static file server:

```bash
# Python 3
python -m http.server 8000

# Node.js (if http-server is installed)
npx http-server -p 8000
```

Then visit `http://localhost:8000`

## Project Structure

```
portfolio/
├── index.html          # Main HTML file
├── styles.css          # All styles including responsive design
├── script.js           # JavaScript for theme toggle, mobile menu, smooth scroll
├── assets/
│   ├── images/         # Image files
│   └── icons/          # Icon files
├── Gopal_Resume_18Dec2024.pdf  # Resume PDF
├── .gitignore          # Git ignore file
├── CLAUDE.md           # Development guide for Claude Code
└── README.md           # This file
```

## Features

### Theme Toggle
- Light and dark themes
- Persisted in localStorage
- Smooth transitions between themes

### Mobile Navigation
- Hamburger menu for screens < 768px
- Animated menu transitions
- Auto-close on link click

### Contact Form
- Integrated with Formspree
- Client-side validation
- Loading state feedback
- Email notifications

## Deployment

This site is deployed on GitHub Pages from the `main` branch.

### Deploying Updates

1. Make your changes locally
2. Test in browser
3. Commit and push:
   ```bash
   git add .
   git commit -m "Your commit message"
   git push origin main
   ```
4. GitHub Pages will automatically rebuild (takes 1-2 minutes)

## Contact Form Setup

The contact form uses Formspree. To activate it:

1. Sign up at https://formspree.io (free tier: 50 submissions/month)
2. Create a new form
3. Copy your form ID
4. Update line 334 in `index.html`:
   ```html
   <form class="contact-form" action="https://formspree.io/f/YOUR_FORM_ID" method="POST">
   ```
   Replace `YOUR_FORM_ID` with your actual Formspree form ID

## Browser Support

- Chrome/Edge (latest)
- Firefox (latest)
- Safari (latest)
- Mobile browsers (iOS Safari, Chrome Mobile)

## License

© 2025 Gopal Krishna Paidi. All rights reserved.

## Contact

- **Email**: gopal.1987@gmail.com
- **LinkedIn**: [linkedin.com/in/gopal-krishna-paidi-8bb6a545/](https://www.linkedin.com/in/gopal-krishna-paidi-8bb6a545/)
- **GitHub**: [github.com/gkrish21](https://github.com/gkrish21)
