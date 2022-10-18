$(document).ready(function() {

    $('.tab_search').on('click', function() {
        $('.tab_search_field').toggleClass('show')
    });

    // 複製連結
    window.Clipboard = (function(window, document, navigator) {
        var textArea,
            copy;

        function isOS() {
            return navigator.userAgent.match(/ipad|iphone/i);
        }

        function createTextArea(text) {
            textArea = document.createElement('textArea');
            textArea.value = text;
            document.body.appendChild(textArea);
        }

        function selectText() {
            var range,
                selection;

            if (isOS()) {
                range = document.createRange();
                range.selectNodeContents(textArea);
                selection = window.getSelection();
                selection.removeAllRanges();
                selection.addRange(range);
                textArea.setSelectionRange(0, 999999);
            } else {
                textArea.select();
            }
        }

        function copyToClipboard() {
            document.execCommand("Copy");
            document.body.removeChild(textArea);
        }

        copy = function(text) {
            createTextArea(text);
            selectText();
            copyToClipboard();
        };

        return {
            copy: copy
        };
    })(window, document, navigator);

    $(".link").on("click", function() {
        // var $this = $(this),
        value = window.location.toString(); //$this.prev("input").val();
        window.Clipboard.copy(value);
        alert('連結已複製');
    });

    // 選單監控
    var spy = new ScrollSpy('.js-scrollspy', {
        nav: '.js-scrollspy-nav > li > a',
        className: 'is-inview',
        offset: 180,
    });


    // scrollpage
    $('a[href^="#"]').on('click', function(event) {
        let $target = $(this.getAttribute('href'));
        if ($target.length) {
            event.preventDefault();
            $('html,body').stop().animate({
                scrollTop: $target.offset().top - 150
            }, 500);
        }
    })


    window.onload =
        function() {
            var fixed = document.getElementById("fixed"),
                H = 0,
                Y = fixed
            while (Y) {
                H += Y.offsetTop;
                Y = Y.offsetParent;
            }
            window.onscroll = function() {
                windowWidth = $(window).width();
                var s = document.body.scrollTop || document.documentElement.scrollTop
                if (s > H) {
                    if (windowWidth > 1880) {
                        fixed.style = "position:fixed;top:95px;right44px;width:20.5%"
                    }
                    if (windowWidth < 1880) {
                        fixed.style = "position:fixed;top:95px;right44px;width:21%"
                    }
                    if (windowWidth < 1500) {
                        fixed.style = "position:fixed;top:95px;right44px;width:27%"
                    }
                } else {
                    fixed.style = ""
                }
            }
        }

    // 搜尋列表
    const Header = document.querySelector(".tab_search_field");
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

    headroom.init();

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