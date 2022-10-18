$(document).ready(function() {
  var $li = $(".first li");
  var windowWidth = $(window).width();

  // if (windowWidth > 991) {
  $(".first").each(function() {
    $($(this).find("li:eq(0)").addClass("active").find("a").attr("href"))
      .siblings(".ul_inner")
      .hide();
  });

  $li.mouseenter(function() {
    $($(this).find("a").attr("href")).show().siblings(".ul_inner").hide();
    $(this).addClass("active").siblings(".active").removeClass("active");
  });

  $(".program_btn").click(function(event) {
    event.stopPropagation();
    $(".program_menu").addClass("active");
  });

  $(document).click(function() {
    $(".program_menu").removeClass("active");
  });




  // 禁止選單點選時，而馬上關閉
  $("body").on("click", ".menu_btn", function(e) {
    e.stopPropagation();
    $(".menu_btn_box").addClass("active");
  });


  $('.m_ul_inner').hide();
  $('.menu_btn_ul li').click(function() {
    $(this).children('.m_ul_inner').slideToggle();
    $(this).siblings().children('.m_ul_inner').slideUp();
    $(this).toggleClass('active');
    $(this).siblings().removeClass('active');
  });


  $(".menu_close").click(function() {
    $(".menu_btn_box").removeClass("active");
    return false;
  });

  $(".platform_btn").click(function() {
    $(".platform_menu_box").addClass("active");
    return false;
  });

  $(".menu_close").click(function() {
    $(".menu_btn_box").removeClass("active");
    return false;
  });

  $(".platform_menu_close").click(function() {
    $(".platform_menu_box").removeClass("active");
    return false;
  });
  //}

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
