$(document).ready(function() {
  var $li = $(".first li");
  var windowWidth = $(window).width();

  if (windowWidth > 991) {
    $(".first").each(function() {
      $($(this).find("li:eq(0)").addClass("active").find("a").attr("href"))
        .siblings(".ul_inner")
        .hide();
    });

    $li.mouseenter(function() {
      $($(this).find("a").attr("href")).show().siblings(".ul_inner").hide();
      $(this).addClass("active").siblings(".active").removeClass("active");
    });

    $(".program_btn").click(function() {
      $(".program_menu").toggleClass("active");
    });
  } else {
    $(".menu_btn").click(function() {
      $(".menu_btn_box").toggleClass("active");
    });

    // 有問題
    // $(".cancel").click(function() {
    //   $(".menu_btn_box").removeClass("active");
    // });

    // 禁止選單點選時，而馬上關閉
    $(".menu_btn_ul li").on("click", function(e) {
      e.stopPropagation();
    });

    $('.m_ul_inner').hide();
    $('.menu_btn_ul li').click(function() {
      $(this).children('.m_ul_inner').slideToggle();
      $(this).siblings().children('.m_ul_inner').slideUp();
      $(this).toggleClass('active');
      $(this).siblings().removeClass('active');
    })

    $(".platform_btn").click(function() {
      $(".platform_menu_box").toggleClass("active");
    });

    // $(".cancel").click(function() {
    //   $(this).closest('.platform_menu_box').removeClass("active");
    // });
  }

  // 網頁go top
  $(".gotop").click(function() {
    $("html,body").animate({
      scrollTop: 0
    }, 500);
  });
  $(window).scroll(function() {
    if ($(this).scrollTop() > 300) {
      $('.gotop').fadeIn("fast");
    } else {
      $('.gotop').stop().fadeOut("fast");
    }
  });
});
