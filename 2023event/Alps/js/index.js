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
        targetTop = $('section').eq(indexNo).position().top;
        $('html,body').animate(
            {
                scrollTop: targetTop,
            },
            500
        );
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
$(document).ready(function () {
    // banner owl-carousel
    $('#banner-owl-carousel').owlCarousel({
        items: 1,
        nav: false,
        dot: true,
        responsiveClass: true,
        loop: true,
        smartSpeed: 600,
        autoplay: true,
        autoplayTimeout: 5000,
    });
    //hover menu button
    $('#menu li').mouseover(
        // console.log($(this).find('.active'))
        function () {
            $(this)
                .find('.active')
                .attr('src', function (index, attr) {
                    return attr.replace('-1.png', '-2.png');
                });
        }
    );
    $('#menu li').mouseout(function () {
        $(this)
            .find('.active')
            .attr('src', function (index, attr) {
                return attr.replace('-2.png', '-1.png');
            });
    });
    //aos
    AOS.init({
        once: true,
    });
});
