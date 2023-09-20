$(document).ready(function() {
  // 忘記密碼
  $($('#menu button').eq(0).addClass('active').find('a').attr('href')).siblings('.content').hide();

  $('#menu button').click(function() {
    $($(this).find('a').attr('href')).show().siblings('.content').hide();
    $(this).addClass('active').siblings('.active').removeClass('active');
  });

  // 大tab

  $('.nav-pills, .pull-right').tabdrop()

  var $btn = $('.VOLG-tab button.tablinksd');
  $($btn.eq(0).find('a').attr('href')).siblings('.tab_inner').hide();

  $btn.click(function() {
    $($(this).find('a').attr('href')).show().siblings('.tab_inner').hide();
    $(this).addClass('active').siblings('.active').removeClass('active');
  });

  // tab導覽
  var $li = $('.first li');

  $(".first").each(function(index) {
    $($(this).find("li:eq(0)").addClass('active').find('a').attr('href')).siblings('.ul_inner').hide();
  });

  $li.click(function() {
    $($(this).find('a').attr('href')).show().siblings('.ul_inner').hide();
    $(this).addClass('active').siblings('.active').removeClass('active');
  });

  // 禁止dropdown-menu選單點選時，而馬上關閉
  $(".list").on("click", function(e) {
    e.stopPropagation();
  });

  // checkbox
  $('.list .ul_inner label input').click(function() {
    if ($(this).prop('checked')) {
      $(this).closest('.ul_inner').siblings().not('.third_list').find('label input:checkbox').prop('checked', false);
    }
  });

  // 個別
  // $('label .all').click(function() {
  //     if ($(this).prop('checked')) {
  //         $(this).closest('label').siblings().find('.individual:checkbox').prop('checked', false);
  //     }
  // });

  // $('label .individual').click(function() {
  //     if ($(this).prop('checked')) {
  //         $(this).closest('label').siblings().find('.all:checkbox').prop('checked', false);
  //     }
  // });

  // 全選
  $(".ul_inner label .all").click(function() {
    if (this.checked == true) {
      $("label .individual:not('.third_list .individual')").prop("checked", true);
      $(this).closest('.ul_inner').siblings().not('.third_list').find('label input:checkbox').prop('checked', false);
    } else {
      $("label .individual:not('.third_list .individual')").prop("checked", false);
    };
  });

  $(".third_list label .all").click(function() {
    if (this.checked == true) {
      $("label .individual:not('.ul_inner .individual')").prop("checked", true);
    } else {
      $("label .individual:not('.ul_inner .individual')").prop("checked", false);
    };
  });

  $('label .individual').click(function() {
    $(this).closest('label').siblings().find('.all:checkbox').prop('checked', false);
    if ($(this).prop("checked")) {
      $(this).prop("checked", true)
    } else {
      $(this).prop("checked", false)
    };
  });

  // 最新文章
  $('.volg-owl').owlCarousel({
    nav: false,
    responsiveClass: true,
    loop: true,
    dots: true,
    autoplay: true,
    margin: 20,
    autoplayTimeout: 10000,
    autoplayHoverPause: true,
    responsive: {
      0: {
        items: 1
      }
    }
  })

  // 專欄作家
  $('.author_box').owlCarousel({
    nav: true,
    responsiveClass: true,
    loop: true,
    dots: false,
    autoplay: true,
    margin: 20,
    autoplayTimeout: 5000,
    autoplayHoverPause: true,
    navText: ["<img src='images/20_back02.svg'>", "<img src='images/20_next02.svg'>"],
    responsive: {
      0: {
        items: 1
      },
      500: {
        items: 2
      },
      768: {
        items: 3
      },
      1024: {
        items: 4
      },
      1360: {
        items: 5
      }
    }
  })

  // 匠玩podcast
  $('.e_down_box').owlCarousel({
    nav: false,
    loop: true,
    margin: 20,
    autoplayTimeout: 5000,
    autoplayHoverPause: true,
    responsive: {
      0: {
        items: 1,
        dots: true,
        autoplay: true,
      },
      500: {
        items: 2,
        dots: true,
        autoplay: true,
      },
      768: {
        items: 3,
        dots: true,
        autoplay: true,
      },
      1024: {
        items: 4,
        dots: false,
        autoplay: false
      }
    }
  })

  // 禁止往上
  $('.stop_top').on('click', function(event) {
    event.preventDefault();
    $('html,body').stop();
  });

  // scrollbar
  $(".VOLG-tab").overlayScrollbars({
    className: "os-theme-thin-dark"
  });

  // tab_e
  $('.tab_e').owlCarousel({
    loop: true,
    nav: true,
    dots: false,
    autoplay: true,
    autoplayTimeout: 8000,
    autoplayHoverPause: true,
    items: 1
  })

});
