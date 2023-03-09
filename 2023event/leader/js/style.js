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
    //const BannerHeight = $('#Bcontent0 .img-map').height();
    //$('.Brand-area').height(BannerHeight);

    // tabContentdWidth
    //const BrandTabWidth = $('.img-map').width();
    // console.log(BrandTabWidth);
    //$('.Brand-tab').width(BrandTabWidth);

    // resize
    $(window).resize(function () {
        // BannerHeight
        const BannerHeight = $('.img-map').height();
        $('.Brand-area, .plaid-bg').height(BannerHeight);

        const BrandTabWidth = $('.img-map').width();
        // console.log(BrandTabWidth);
        $('.Brand-tab').width(BrandTabWidth);
    });

    // 地區變換按鈕
    $(function () {
        // 李宜珊
        $('#btn1 li').click(function () {
            var index = $(this).index();
            console.log(index);
            $('#list1 #item').eq(index).show().siblings().hide();
            $('#list2 #item').eq(index).show().siblings().hide();
            $('#area-view .img1').eq(index).show().siblings().hide();
        });
        // 薛宇航 
        $('#btn2 li').click(function () {
            var index = $(this).index();
            $('#list3 #item2').eq(index).show().siblings().hide();
            $('#list4 #item2').eq(index).show().siblings().hide();
            $('#area-view2 .img2').eq(index).show().siblings().hide();
        });
        // 謝哲彰
        $('#btn3 li').click(function () {
            var index = $(this).index();
            $('#list5 #item3').eq(index).show().siblings().hide();
            $('#list6 #item3').eq(index).show().siblings().hide();
            $('#area-view3 .img3').eq(index).show().siblings().hide();
        });
    });
});

$(window).load(function () {
    // BannerHeight
    const BannerHeight = $('#Bcontent0 .img-map').height();
    $('.Brand-area, .plaid-bg').height(BannerHeight);

    // tabContentdWidth
    const BrandTabWidth = $('.img-map').width();
    // console.log(BrandTabWidth);
    $('.Brand-tab').width(BrandTabWidth);

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
    $('#map_menu li').click(function () {
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
