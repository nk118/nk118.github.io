// banner
function AutoOpenTab(
    evt,
    asiaName,
    strtabContentd,
    strtablinks,
    strCurrentTarget
) {
    tabContentd = document.getElementsByClassName(strtabContentd);
    for (i = 0; i < tabContentd.length; i++) {
        tabContentd[i].style.opacity = '0';
    }

    tablinks = document.getElementsByClassName(strtablinks);
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(
            ' ' + strCurrentTarget,
            ''
        );
    }

    document.getElementById(asiaName).style.opacity = '1';
    evt.currentTarget.className += ' ' + strCurrentTarget;
}
function AutoCloseTab(
    evt,
    asiaName,
    strtabContent,
    strtablinks,
    strCurrentTarget
) {
    tabContentd = document.getElementsByClassName(strtabContent);
    for (i = 0; i < tabContentd.length; i++) {
        tabContentd[i].style.opacity = '0';
    }

    tablinks = document.getElementsByClassName(strtablinks);
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(
            ' ' + strCurrentTarget,
            ''
        );
    }

    document.getElementById(asiaName).style.opacity = '1';
    evt.currentTarget.className += ' ' + strCurrentTarget;
}

$(document).ready(function () {
    // BannerHeight
    const BannerHeight = $('.img-map').height();
    $('.Brand-area').height(BannerHeight);

    // tabContentdWidth
    const BrandTabWidth = $('.img-map').width();
    // console.log(BrandTabWidth);
    $('.Brand-tab').width(BrandTabWidth);

    $(window).resize(function () {
        // BannerHeight
        const BannerHeight = $('.img-map').height();
        $('.Brand-area').height(BannerHeight);

        const BrandTabWidth = $('.img-map').width();
        // console.log(BrandTabWidth);
        $('.Brand-tab').width(BrandTabWidth);
    });
});

$(window).load(function () {
    var $win = $(window),
        $ad = $('#abgne_float_ad').css('opacity', 0).show(),
        _width = $ad.width(),
        _height = $ad.height(),
        _diffY = 100,
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
                scrollTop: 865,
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
    // banner owl-carousel
    $('#banner-owl-carousel').owlCarousel({
        animateOut: 'fadeOut',
        animateIn: 'fadeInRight',
        items: 1,
        nav: false,
        dot: true,
        responsiveClass: true,
        loop: true,
        smartSpeed: 450,
        autoplay: true,
        autoplayTimeout: 5000,
    });

    //aos
    AOS.init({
        once: true,
    });
});
