// MOBILE MENU
$(document).ready(function() {
"use strict";
$("#menu").mmenu({
"classes": "mm-slide",
"offCanvas": {
"position": "right"
},
"footer": {
"add": true,
"title": "Copyrights 2019 Biwott. all rights reserved."
},

"header": {
"title": "Biwott",
"add": true,
"update": true
},

});
});



// <!-- Sticky Header -->
//Add a sticky header to the default Header tag
// <!-- Header One -->
$(window).scroll(function() {
    if ($(this).scrollTop() > 1){
        $('header').addClass("sticky");
    }
    else{
        $('header').removeClass("sticky");
    }
});


// <!-- Header Two -->
$(window).scroll(function() {
    if ($(this).scrollTop() > 1){
        $('.header-two').addClass("sticky");
    }
    else{
        $('.header-two').removeClass("sticky");
    }
});



//PreLoader
jQuery(window).load(function() { // makes sure the whole site is loaded
jQuery('#status').fadeOut(); // will first fade out the loading animation
jQuery('#preloader').delay(350).fadeOut('slow'); // will fade out the white DIV that covers the website.
jQuery('body').delay(350).css({'overflow':'visible'});
})


// <!-- Back to Top -->
jQuery(document).ready(function($){
// browser window scroll (in pixels) after which the "back to top" link is shown
var offset = 300,
//browser window scroll (in pixels) after which the "back to top" link opacity is reduced
offset_opacity = 1200,
//duration of the top scrolling animation (in ms)
scroll_top_duration = 1400,
//grab the "back to top" link
$back_to_top = $('.cd-top');

//hide or show the "back to top" link
$(window).scroll(function(){
( $(this).scrollTop() > offset ) ? $back_to_top.addClass('cd-is-visible') : $back_to_top.removeClass('cd-is-visible cd-fade-out');
if( $(this).scrollTop() > offset_opacity ) {
$back_to_top.addClass('cd-fade-out');
}
});



//smooth scroll to top
$back_to_top.on('click', function(event){
event.preventDefault();
$('body,html').animate({
scrollTop: 0 ,
}, scroll_top_duration
);
});

});



//smooth scroll
$('a[href^="#"]').on('click', function(event) {

    var target = $( $(this).attr('href') );

    if( target.length ) {
        event.preventDefault();
        $('html, body').animate({
            scrollTop: target.offset().top
        }, 1000);
    }

});