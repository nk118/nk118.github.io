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
  })

  // AirTicket
  $(".AirTicket-tab").simpleTab({
    defaultSkin: true,
    fadeEffect: true,
  })

  // packages
  $(".packages-tab").simpleTab({
    defaultSkin: true,
    fadeEffect: true,
  })

  // PopularCountry
  $(".PopularCountry-owl-carousel").owlCarousel({
    nav: true,
    responsiveClass: true,
    loop: false,
    margin: 20,
    smartSpeed: 450,
    // autoHeight:true,
    dots: false,
    navText: [
      "<img src='images/20_back.svg'>",
      "<img src='images/20_next.svg'>",
    ],
    responsive: {
      0: {
        items: 1,
      },
      376: {
        items: 2,
      },
      768: {
        items: 3,
      },
      1024: {
        items: 4,
      },
    },
  })
})
