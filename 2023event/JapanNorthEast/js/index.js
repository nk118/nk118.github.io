$(window).load(function () {
    var $win = $(window),
        $ad = $('#abgne_float_ad').css('opacity', 0).show(),
        _width = $ad.width(),
        _height = $ad.height(),
        _diffY = 300,
        _diffX = 20, //距離右及下方邊距
        _moveSpeed = 800, // 移動的速度
        currentNavNo = 0;

    $ad.css({
        top: $(document).height(),
        left: $win.width() - _width - _diffX,
        opacity: 1,
    });

    $win.bind('scroll resize', function () {
        var $this = $(this);

        $ad.stop().animate(
            {
                top: $this.scrollTop() + $this.height() - _height - _diffY,
                left: $this.scrollLeft() + $this.width() - _width - _diffX,
            },
            _moveSpeed
        );
    }).scroll();

    //整頁捲動-------?被點
    $('#menu li').click(function () {
        //?被捲動
        indexNo = $(this).index();
        targetTop = $('section')
            .eq(indexNo + 1)
            .position().top;
        $('html,body').animate(
            {
                scrollTop: targetTop,
            },
            500
        );
    });
});
$(document).ready(function () {
    // header-banner animation
    setTimeout(() => {
        $('.head-season.spring').addClass('head-season-fadeInDown');
    }, 0);
    setTimeout(() => {
        $('.head-season.summer').addClass('head-season-fadeInUp');
    }, 350);
    setTimeout(() => {
        $('.head-season.autumn').addClass('head-season-fadeInDown');
    }, 700);
    setTimeout(() => {
        $('.head-season.winter').addClass('head-season-fadeInUp');
    }, 1050);
    setTimeout(() => {
        $('.logo').addClass('logo-animation');
    }, 2000);

    // nav-banner owl-carousel
    $('#nav-banner-owl').owlCarousel({
        items: 1,
        nav: false,
        dot: true,
        responsiveClass: true,
        loop: true,
        smartSpeed: 600,
        autoplay: false,
    });

    //統一nav-content高度
    let contentAreaMaxHeight = $('.nav-content-area').height();
    let contentAreaHeight = $('.nav-season .nav-content .nav-content-area');
    contentAreaHeight.css('height', contentAreaMaxHeight);

    //aos
    AOS.init({
        once: true,
    });

    // 網頁go top
    $('.gotop').click(function () {
        $('html,body').animate(
            {
                scrollTop: 0,
            },
            500
        );
    });
    $(window).scroll(function () {
        if ($(this).scrollTop() > 300) {
            $('.gotop').fadeIn('fast');
        } else {
            $('.gotop').stop().fadeOut('fast');
        }
    });

    $(window).resize(function () {});
});
