$(document).ready(function () {
    var scrollTimeout;
    // banner
    setTimeout(() => {
        $('.doble-snow').addClass('animation-move');
    }, 2000);

    // top-btn
    $('.top-btn').click(function () {
        $('html,body').animate(
            {
                scrollTop: 0,
            },
            500
        );
    });

    //整頁捲動-------?被點
    $('nav li').click(function () {
        //?被捲動
        indexNo = $(this).index();
        targetTop = $('section').eq(indexNo).position().top;
        console.log($('section').eq(indexNo));
        $('html,body').animate(
            {
                scrollTop: targetTop,
            },
            500
        );
    });

    // scroll效果
    $(window)
        .scroll(function () {
            let w_scrollTop = $(this).scrollTop();
            let width = $(this).width();
            window.clearTimeout(scrollTimeout);
            // scroll減少事件觸發
            scrollTimeout = window.setTimeout(function () {
                // gotop
                if (w_scrollTop > 300) {
                    $('.top-bar').stop().fadeIn('fast');
                } else {
                    $('.top-bar').stop().fadeOut('fast');
                }
            }, 200);
        })
        .scroll();

    // slick
    $('.slick-img').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 3000,
        arrows: true,
        fade: true,
        cssEase: 'linear',
        prevArrow: false,
        nextArrow:
            "<div><img src='./img/3.雪之大谷/圖片按鈕.png' class='btn-img'></div>",
        pauseOnHover: true,
    });
    $('.slick-img2').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 3000,
        arrows: true,
        fade: true,
        cssEase: 'linear',
        prevArrow: false,
        nextArrow:
            "<div><img src='./img/3.雪之大谷/圖片按鈕.png' class='btn2-img'></div>",
        pauseOnHover: true,
    });
});
