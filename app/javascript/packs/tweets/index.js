window.addEventListener('click', function (e) {
    var nav = document.querySelector('nav');
    
    if (!nav || !e.target.closest('button')) { return; }
    
    nav.setAttribute('aria-expanded', (nav.getAttribute('aria-expanded') !== 'true').toString())
  }, false);