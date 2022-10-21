$(document).ready(function () {
  // fit_slider
  $(".fit_slider_banner").owlCarousel({
    animateOut: "fadeOut",
    animateIn: "fadeInRight",
    items: 1,
    nav: false,
    loop: true,
    smartSpeed: 400,
    autoplay: true,
    autoplayTimeout: 10000,
    dots: false,
  });

  // AirTicket
  $(".AirTicket-tab").simpleTab({
    defaultSkin: true,
    fadeEffect: true,
  });

  // packages
  $(".packages-tab").simpleTab({
    defaultSkin: true,
    fadeEffect: true,
  });
});
