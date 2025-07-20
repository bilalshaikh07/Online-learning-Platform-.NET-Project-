/*
Template Name: Edotree – Online Course & Education HTML5 Template
Author: pillarix
Author URI: https://wrapbootstrap.com/user/pillarix
Version: 1.0
*/

/*
-- Tooltip
*/

(function($) {
  "use strict"; // Start of use strict

    // Tooltip
    var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
    var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
      return new bootstrap.Tooltip(tooltipTriggerEl)
    })

})(jQuery); // End of use strict