window.addEventListener('click', function (e) {
    var nav = document.querySelector('nav');
    
    if (!nav || !e.target.closest('button')) { return; }
    
    nav.setAttribute('aria-expanded', (nav.getAttribute('aria-expanded') !== 'true').toString())
  }, false);


// All of these buttons designed by me: Ahmed Beheiry
/*
Github Repository:
https://github.com/ahmedbeheiry/fancy-buttons
*/

// find me on 
// My Website: http://www.ahmedbeheiry.co/
// FB: https://www.facebook.com/Ahmed.Beheiryy
// Linkedin: https://eg.linkedin.com/in/ahmedbeheiry

/********** Thanks for being here **********/
/* Demo purposes only */
$(".hover").mouseleave(
  function () {
    $(this).removeClass("hover");
  }
);
