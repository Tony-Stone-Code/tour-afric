// TOUR-AFRIC Common JavaScript

// Load header and footer components
function loadComponents() {
  fetch('includes/header.html')
    .then(response => response.text())
    .then(data => {
      const headerPlaceholder = document.getElementById('header-placeholder');
      if (headerPlaceholder) {
        headerPlaceholder.innerHTML = data;
      }
    });
  
  fetch('includes/footer.html')
    .then(response => response.text())
    .then(data => {
      const footerPlaceholder = document.getElementById('footer-placeholder');
      if (footerPlaceholder) {
        footerPlaceholder.innerHTML = data;
      }
    });
}

// Smooth scroll for anchor links
document.addEventListener('DOMContentLoaded', function() {
  // Load header and footer
  loadComponents();
  // Smooth scrolling for anchor links
  const anchorLinks = document.querySelectorAll('a[href^="#"]');
  anchorLinks.forEach(link => {
    link.addEventListener('click', function(e) {
      const href = this.getAttribute('href');
      if (href !== '#' && href !== '') {
        const target = document.querySelector(href);
        if (target) {
          e.preventDefault();
          target.scrollIntoView({ behavior: 'smooth' });
        }
      }
    });
  });
  
  // Add current page class to nav links
  const currentPage = window.location.pathname.split('/').pop() || 'index.html';
  const navLinks = document.querySelectorAll('.nav-menu a');
  navLinks.forEach(link => {
    if (link.getAttribute('href') === currentPage) {
      link.style.color = 'var(--ghana-gold)';
      link.style.fontWeight = '700';
    }
  });
});

// Image lazy loading fallback for older browsers
if (!('loading' in HTMLImageElement.prototype)) {
  // Fallback for browsers that don't support native lazy loading
  const script = document.createElement('script');
  script.src = 'https://cdnjs.cloudflare.com/ajax/libs/lazysizes/5.3.2/lazysizes.min.js';
  script.integrity = 'sha512-Q3MYbhx8o3zMBnZjB8wuZb4sTqyYmLjZ4bKNZ3j1p4hZxOlj7Vj5Y5nPQb2pJNnCVmQqW3OvENsqnTVrJg7qGg==';
  script.crossOrigin = 'anonymous';
  document.body.appendChild(script);
}
