$(document).ready(function() {
    // 搜尋列表
    const Header = document.querySelector(".tab_search_field");
    // construct an instance of Headroom, passing the header elemen.
    const headroom = new Headroom(Header, {
        offset: 0,
        tolerance: {
            up: 0,
            down: 0
        },
        classes: {
            initial: "header--fixed",
            pinned: "slideDown",
            unpinned: "slideUp",
            top: "top",
            notTop: "not-top"
        }
    });

    // initialise
    headroom.init();

    // When the page is at the top, remove the slideDown class.
    window.addEventListener("scroll", () => {
        if (window.pageYOffset === 0) {
            Header.classList.remove("slideDown");
        }
    });
    // $(window).on('scroll', function() {
    //     nowloc = $(window).scrollTop();
    //     windowWidth = $(window).width();
    //     if (windowWidth > 800) {
    //         $('.tab_search_field').css({
    //             display: 'none'
    //         });
    //     }
    //     if (windowWidth <= 800) {
    //         $('.tab_search_field').css({
    //             display: 'flex'
    //         });
    //         if (nowloc > 300) {
    //             $('.tab_search_field').animate({}, 5000, function() {
    //                 $(this).css({ 'transform': 'translateY(144px)' });
    //             });
    //         } else {
    //             $('.tab_search_field').animate({}, 5000, function() {
    //                 $(this).css({ 'transform': 'translateY(96px)' });
    //             })
    //         };
    //     }

    //     if (windowWidth <= 500) {
    //         if (nowloc > 300) {
    //             $('.tab_search_field').animate({}, 5000, function() {
    //                 $(this).css({ 'transform': 'translateY(133px)' });
    //             });
    //         } else {
    //             $('.tab_search_field').animate({}, 5000, function() {
    //                 $(this).css({ 'transform': 'translateY(86px)' });
    //             })
    //         };
    //     }
    // });

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
})