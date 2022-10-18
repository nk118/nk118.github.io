$(document).ready(function() {
  // 忘記密碼
  $(function() {
    $($('#menu button').eq(0).addClass('active').find('a').attr('href')).siblings('.content').hide();

    $('#menu button').click(function() {
      $($(this).find('a').attr('href')).show().siblings('.content').hide();
      $(this).addClass('active').siblings('.active').removeClass('active');
    });
  });

  // 大tab
  $(function() {
    var $btn = $('.VOLG-tab button.tablinksd');
    $($btn.eq(0).find('a').attr('href')).siblings('.tab_inner').hide();

    $btn.click(function() {
      $($(this).find('a').attr('href')).show().siblings('.tab_inner').hide();
      $(this).addClass('active').siblings('.active').removeClass('active');
    });
  });

  // 禁止往上
  $('.stop_top').on('click', function(event) {
    event.preventDefault();
    $('html,body').stop();
  });

  // scrollbar
  $(function() {
    $(".VOLG-tab").overlayScrollbars({
      className: "os-theme-thin-dark"
    });
  });

  // 燈箱
  var $a = $('.fancybox a')
  $a.on('click', function() {
    $(this).next('.modal').fadeIn('slow').addClass('show');
  });

  $('.close').on('click', function() {
    $('.modal').fadeOut('fast').removeClass('show');
  });

  $('.modal').on('click', function() {
    $('.modal').fadeOut('fast').removeClass('show');
  });
})
