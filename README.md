# TOUR-AFRIC Website

Ethical adventures & pristine escapes across Ghana and beyond. A Ghana-focused tourism website emphasizing sustainable travel, conservation, and community empowerment.

## Project Overview

This website showcases TOUR-AFRIC's commitment to ethical tourism in Ghana with five key pages:

1. **Home** - Gateway page with hero, trip categories, and impact teaser
2. **Adventures** - Interior tours (Mole, Kakum, Volta, etc.) with filters
3. **Coastal & Islands** - Beach and marine experiences with conservation focus
4. **Impact** - Transparent reporting on conservation and community support
5. **Contact** - Inquiry form and trip planning

## Design System

### Color Palette (Ghana-inspired)
- **Deep Forest Green**: `#0B3B24` - Lush reserves
- **Kente Gold**: `#D99A00` - Heritage and warmth
- **Cocoa Brown**: `#6B3E1D` - Earthy authenticity
- **Atlantic Blue**: `#145C9E` - Coastal and marine
- **Warm Sand**: `#F5E8D0` - Background/negative space
- **Text Dark**: `#1A1A1A` - Primary text on light backgrounds
- **Text Light**: `#FDF6EC` - Text on dark backgrounds

### Typography
- **Headings**: Playfair Display (serif)
- **Body**: Poppins (sans-serif)
- **Base size**: 16px

### Button Styles
- **Primary**: Gold fill, dark text
- **Secondary**: Green outline, transforms on hover
- **Tertiary**: Blue text link

## Project Structure

```
tour-afric/
├── index.html              # Home page
├── adventures.html         # Adventures listing
├── coastal.html           # Coastal & Islands
├── impact.html            # Impact & Conservation
├── contact.html           # Contact form
├── css/
│   ├── variables.css      # CSS custom properties
│   └── styles.css         # Main stylesheet
├── js/
│   └── main.js           # Common JavaScript
├── images/               # Image assets (placeholders)
└── includes/
    ├── header.html       # Shared header component
    └── footer.html       # Shared footer component
```

## Accessibility Features

- WCAG 2.1 AA compliant
- Keyboard navigation support
- Proper ARIA labels on icon links
- Alt text on all images
- 4.5:1 minimum contrast ratios
- No nested interactive elements
- Focus states clearly visible

## Performance

- Lazy loading for images
- Responsive images with proper sizing
- Minimal external dependencies
- Semantic HTML structure
- Mobile-first responsive design

## Development

### Running Locally

Simply open `index.html` in a web browser, or use a local server:

```bash
# Using Python 3
python -m http.server 8000

# Using Node.js
npx http-server

# Using PHP
php -S localhost:8000
```

Then visit `http://localhost:8000` in your browser.

### Image Assets

**Note**: Current images are placeholders. Replace with actual high-quality photography:
- Hero images should be < 400KB
- Card images should use 4:3 aspect ratio
- Use WebP format when possible
- Provide responsive srcset for different screen sizes

### Content Updates

- Header/footer updates: Edit `includes/header.html` and `includes/footer.html`
- Color changes: Edit CSS variables in `css/variables.css`
- Add new destinations: Follow existing card structure in pages

## Browser Support

- Chrome (latest)
- Firefox (latest)
- Safari (latest)
- Edge (latest)
- Mobile browsers (iOS Safari, Chrome Mobile)

## Future Enhancements

- [ ] Backend integration for contact form
- [ ] CMS for destination content management
- [ ] Image optimization pipeline
- [ ] Multi-language support
- [ ] Online booking system integration
- [ ] Blog section for travel stories
- [ ] Interactive map with destinations
- [ ] Real-time availability calendar

## Contributing

This is a project for TOUR-AFRIC. For content updates or feature requests, please contact the development team.

## License

© 2024 TOUR-AFRIC. All rights reserved.

## Contact

- Email: info@tourafric.com
- Phone: +233 123 456 789
- Location: Accra, Ghana
