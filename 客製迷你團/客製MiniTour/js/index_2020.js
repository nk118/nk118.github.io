$(document).ready(function() {
  // 網頁go top
  $("#gotop").click(function() {
    $("html,body").animate({
      scrollTop: 0
    }, 500);
  });
  $(window).scroll(function() {
    if ($(this).scrollTop() > 300) {
      $('#gotop').fadeIn("fast");
    } else {
      $('#gotop').stop().fadeOut("fast");
    }
  });

  // banner-slider
  $('#banner-owl-carousel').owlCarousel({
    animateOut: 'fadeOut',
    animateIn: 'fadeInRight',
    items: 1,
    nav: false,
    responsiveClass: true,
    loop: true,
    smartSpeed: 450,
    autoplay: true,
    autoplayTimeout: 5000,
    dots: true
  });

  // flatpickr設定(日曆選單)
  $(function() {
    /*declaring return datepicker*/
    var FLATPICKER_BACK = flatpickr('#flatpickrBack', {
      disableMobile: true,
      //   defaultDate: "today"
    });
    /*declaring outbound datepicker*/
    $("#flatpickrGo").flatpickr({
      minDate: "today",
      disableMobile: true,
      // defaultDate: "today",
      /* setting initial date of return picker to the one selected in 
      outbound*/
      onChange: function(dateStr, dateObj) {
        FLATPICKER_BACK.set("minDate", dateObj);
        FLATPICKER_BACK.setDate(dateObj);
      }
    });
  });

  // PopularCountry
  $(".PopularCountry-tab").simpleTab({
    defaultSkin: true,
    fadeEffect: true,
    startIndex: 2
  });

  $('.PopularCountry-owl-carousel').owlCarousel({
    nav: true,
    responsiveClass: true,
    loop: false,
    margin: 20,
    smartSpeed: 450,
    // autoHeight:true,
    dots: false,
    navText: ["<img src='images/20_back.svg'>", "<img src='images/20_next.svg'>"],
    responsive: {
      0: {
        items: 1
      },
      376: {
        items: 2
      },
      768: {
        items: 3
      },
      1024: {
        items: 4
      }

    }
  });

  // Taiwan
  $(".Taiwan-tab").simpleTab({
    defaultSkin: true,
    fadeEffect: true,
    // startIndex: 1
  });

  // Europe
  $(".Europe-tab").simpleTab({
    defaultSkin: true,
    fadeEffect: true
  });

  // SpecialEvent (simpletab.js)
  $(".SpecialEvent-tab").simpleTab({
    defaultSkin: true,
    fadeEffect: true
  });

  // 超過三筆備用
  //    $('.SpecialEvent-owl-carousel').owlCarousel({
  //        nav: true,
  //        responsiveClass: true,
  //        loop: false,
  //        margin: 20,
  //        smartSpeed: 450,
  //        autoplay: false,
  //        dots: false,
  //        responsive: {
  //            0: {
  //                items: 1
  //            },
  //            576: {
  //                items: 2
  //            },
  //            769: {
  //                items: 3
  //            }
  //
  //        }
  //    });

  // Brand (simpletab.js)
  $(".Brand-tab").simpleTab({
    defaultSkin: true,
    fadeEffect: true
  });


  // AsiaSelect (easyTabs.js)
  $(".AsiaSelect-nav-tab").tabs({
    type: "click",
    speed: 300,
    animation: "fade"
  });

  // RecentlyHot {
  $('#RecentlyHot-owl-carousel').owlCarousel({
    nav: true,
    responsiveClass: true,
    loop: true,
    autoplay: true,
    autoplayTimeout: 5000,
    margin: 20,
    smartSpeed: 450,
    dots: false,
    navText: ["<img src='images/20_back.svg'>", "<img src='images/20_next.svg'>"],
    responsive: {
      0: {
        items: 1.4
      },
      768: {
        items: 3
      },
      1024: {
        items: 4
      }

    }
  });


  // index-link
  $('#indexLink-owl-carousel').owlCarousel({
    nav: true,
    responsiveClass: true,
    loop: false,
    margin: 15,
    smartSpeed: 450,
    //        autoplay: true,
    autoplayTimeout: 5000,
    dots: false,
    navText: ["<img src='images/20_back.svg'>", "<img src='images/20_next.svg'>"],
    responsive: {
      0: {
        items: 3
      },
      500: {
        items: 4
      },
      576: {
        items: 5,
        autoplay: false,
      },
      768: {
        items: 5,
        autoplay: false,
      },
      769: {
        items: 4
      },
      1200: {
        items: 6,
        autoplay: false,
      }

    }
  });

});

// PopularCountry hover tabs 
// function openCity(evt, cityName) {  
//     tabcontentc = document.getElementsByClassName("tabcontentc");
//     for (i = 0; i < tabcontentc.length; i++) {
//         tabcontentc[i].style.display = "none";
//     }

//     tablinks = document.getElementsByClassName("tablinks");
//     for (i = 0; i < tablinks.length; i++) {
//       tablinks[i].className = tablinks[i].className.replace(" active", "");
//     }

//     document.getElementById(cityName).style.display = "block";
//     evt.currentTarget.className += " active";
// }

// SpecialEvent hover tabs
function specialProject(evt, special) {
  tabcontentb = document.getElementsByClassName("tabcontentb");
  for (i = 0; i < tabcontentb.length; i++) {
    tabcontentb[i].style.display = "none";
  }

  tablinksb = document.getElementsByClassName("tablinksb");
  for (i = 0; i < tablinksb.length; i++) {
    tablinksb[i].className = tablinksb[i].className.replace(" active", "");
  }

  document.getElementById(special).style.display = "block";
  evt.currentTarget.className += " active";
}

// AsiaSelect hover tabs
function openAsia(evt, asiaName) {
  tabcontenta = document.getElementsByClassName("tabcontenta");
  for (i = 0; i < tabcontenta.length; i++) {
    tabcontenta[i].style.display = "none";
  }

  tablinksa = document.getElementsByClassName("tablinksa");
  for (i = 0; i < tablinksa.length; i++) {
    tablinksa[i].className = tablinksa[i].className.replace(" active", "");
  }

  document.getElementById(asiaName).style.display = "block";
  evt.currentTarget.className += " active";
}
