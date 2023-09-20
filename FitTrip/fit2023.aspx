<%@ Page Language="C#" %>
<%@ Register Src="~/WebControl/Header_20.ascx" TagName="Header" tagprefix="uc1" %>
<%@ Register Src="~/WebControl/Footer_20.ascx" TagName="Foot" TagPrefix="uc2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>
            凱旋旅行社(巨匠旅遊)｜Artisan Tour
        </title>
        <meta name="Description" content="【旅遊看巨匠，世界不一樣】歐洲、遊輪、紐澳、南亞、中東、美洲、非洲、海島、南亞、日本、中國、機+酒，盡心提供最符合您期待的旅遊規畫，是我們的責任。 " />
        <meta name="keywords" content="高人氣評價,歐洲旅遊,東歐旅遊,西歐旅遊,南歐旅遊,北歐旅遊,紐西蘭旅遊,澳洲旅遊,中東旅遊,美國旅遊,加拿大旅遊,郵輪,非洲旅遊,歐洲自由行,南亞旅遊" />
        <link rel="shortcut icon" href="https://www.artisan.com.tw/images/artisan.ico">
        <link rel="stylesheet" href="/css/normalize.css" />
        <link rel="stylesheet" href="./css/fit230110.css">
        <!-- owl -->
        <link rel="stylesheet" href="/css/owl.carousel.min.css" />
        <link rel="stylesheet" href="/css/owl.theme.default.min.css" />
        <!-- flatpickr -->
        <link rel="stylesheet" href="/css/flatpickr.css" />
        <!-- style -->
        <link rel="stylesheet" type="text/css" href="/css/all.min.css" />
        <link rel="stylesheet" type="text/css" href="/slick/slick.css" />
        <link rel="stylesheet" type="text/css" href="/slick/slick-theme.css" />
        <link rel="stylesheet" type="text/css" href="/css/layout_2022.css" />
        <link rel="stylesheet" type="text/css" href="/css/memberArea.css" />
        <link rel="stylesheet" type="text/css" href="/css/memberLogin_style.css" />

        <script src="/js/jquery-1.12.4.min.js" type="text/javascript"></script>
        <link rel="stylesheet" type="text/css" href="/css/jquery-ui.min.css" />
        <script type="text/javascript" src="/js/main-1.js"></script>

        <!-- Yahoo 關鍵字廣告 -->
        <script type="application/javascript">
            (function (w, d, t, r, u) {
                w[u] = w[u] || [];
                w[u].push({
                    'projectId': '10000',
                    'properties': {
                        'pixelId': '10072098'
                    }
                });
                var s = d.createElement(t);
                s.src = r;
                s.async = true;
                s.onload = s.onreadystatechange = function () {
                    var y, rs = this.readyState,
                        c = w[u];
                    if (rs && rs != "complete" && rs != "loaded") {
                        return
                    }
                    try {
                        y = YAHOO.ywa.I13N.fireBeacon;
                        w[u] = [];
                        w[u].push = function (p) {
                            y([p])
                        };
                        y(c)
                    } catch (e) {}
                };
                var scr = d.getElementsByTagName(t)[0],
                    par = scr.parentNode;
                par.insertBefore(s, scr)
            })(window, document, "script", "https://s.yimg.com/wi/ytc.js", "dotq");
        </script>
        <script>
            (function (w, d, t, r, u) {
                var f, n, i;
                w[u] = w[u] || [], f = function () {
                        var o = {
                            ti: "25034919"
                        };
                        o.q = w[u], w[u] = new UET(o), w[u].push("pageLoad")
                    }, n = d.createElement(t), n.src = r, n.async = 1, n.onload = n.onreadystatechange =
                    function () {
                        var s = this.readyState;
                        s && s !== "loaded" && s !== "complete" || (f(), n.onload = n.onreadystatechange = null)
                    }, i = d.getElementsByTagName(t)[0], i.parentNode.insertBefore(n, i)
            })(window, document, "script", "//bat.bing.com/bat.js", "uetq");
        </script>
        <!-- End Yahoo 關鍵字廣告 -->

        <!-- Global site tag (gtag.js) - Google Ads: 770077597 -->
        <script async src="https://www.googletagmanager.com/gtag/js?id=AW-770077597"></script>
        <script>
            window.dataLayer = window.dataLayer || [];

            function gtag() {
                dataLayer.push(arguments);
            }
            gtag('js', new Date());
            gtag('config', 'AW-770077597');
        </script>
        <!-- End Global site tag (gtag.js) -->

        <!-- Facebook Pixel Code -->
        <script>
            ! function (f, b, e, v, n, t, s) {
                if (f.fbq) return;
                n = f.fbq = function () {
                    n.callMethod ? n.callMethod.apply(n, arguments) : n.queue.push(arguments)
                };
                if (!f._fbq) f._fbq = n;
                n.push = n;
                n.loaded = !0;
                n.version = '2.0';
                n.queue = [];
                t = b.createElement(e);
                t.async = !0;
                t.src = v;
                s = b.getElementsByTagName(e)[0];
                s.parentNode.insertBefore(t, s)
            }(window, document, 'script', 'https://connect.facebook.net/en_US/fbevents.js');
            fbq('init', '222499921858853');
            fbq('track', 'PageView');
        </script>
        <noscript><img height="1" width="1"
                src="https://www.facebook.com/tr?id=222499921858853&ev=PageView&noscript=1" /></noscript>
        <!-- End Facebook Pixel Code -->

        <!-- Facebook Pixel Code -->
        <script>
            ! function (f, b, e, v, n, t, s) {
                if (f.fbq) return;
                n = f.fbq = function () {
                    n.callMethod ?
                        n.callMethod.apply(n, arguments) : n.queue.push(arguments)
                };
                if (!f._fbq) f._fbq = n;
                n.push = n;
                n.loaded = !0;
                n.version = '2.0';
                n.queue = [];
                t = b.createElement(e);
                t.async = !0;
                t.src = v;
                s = b.getElementsByTagName(e)[0];
                s.parentNode.insertBefore(t, s)
            }(window, document, 'script',
                'https://connect.facebook.net/en_US/fbevents.js');
            fbq('init', '745798809194089');
            fbq('track', 'PageView');
        </script>
        <noscript>
            <img height="1" width="1" src="https://www.facebook.com/tr?id=745798809194089&ev=PageView&noscript=1" />
        </noscript>
        <!-- End Facebook Pixel Code -->

        <!-- Yahoo Code -->
        <script type="application/javascript">
            (function (w, d, t, r, u) {
                w[u] = w[u] || [];
                w[u].push({
                    'projectId': '10000',
                    'properties': {
                        'pixelId': '10094316'
                    }
                });
                var s = d.createElement(t);
                s.src = r;
                s.async = true;
                s.onload = s.onreadystatechange = function () {
                    var y, rs = this.readyState,
                        c = w[u];
                    if (rs && rs != "complete" && rs != "loaded") {
                        return
                    }
                    try {
                        y = YAHOO.ywa.I13N.fireBeacon;
                        w[u] = [];
                        w[u].push = function (p) {
                            y([p])
                        };
                        y(c)
                    } catch (e) {}
                };
                var scr = d.getElementsByTagName(t)[0],
                    par = scr.parentNode;
                par.insertBefore(s, scr)
            })(window, document, "script", "https://s.yimg.com/wi/ytc.js", "dotq");
        </script>
        <!-- End Yahoo Code -->

        <!-- LINE Tag Base Code -->
        <!-- Do Not Modify -->
        <script>
            (function (g, d, o) {
                g._ltq = g._ltq || [];
                g._lt = g._lt || function () {
                    g._ltq.push(arguments)
                };
                var h = location.protocol === 'https:' ? 'https://d.line-scdn.net' : 'http://d.line-cdn.net';
                var s = d.createElement('script');
                s.async = 1;
                s.src = o || h + '/n/line_tag/public/release/v1/lt.js';
                var t = d.getElementsByTagName('script')[0];
                t.parentNode.insertBefore(s, t);
            })(window, document);
            _lt('init', {
                customerType: 'lap',
                tagId: '64603059-bbc0-431b-950b-b4645e962010'
            });
            _lt('send', 'pv', ['64603059-bbc0-431b-950b-b4645e962010']);
        </script>
        <noscript>
            <img height="1" width="1" style="display:none"
                src="https://tr.line.me/tag.gif?c_t=lap&t_id=64603059-bbc0-431b-950b-b4645e962010&e=pv&noscript=1" />
        </noscript>
        <!-- End LINE Tag Base Code -->

        <!-- Global site tag (gtag.js) - Google Ads: 684764926 -->
        <scriptasync src="https://www.googletagmanager.com/gtag/js?id=AW-684764926">
            </script>
            <script>
                window.dataLayer = window.dataLayer || [];

                function gtag() {
                    dataLayer.push(arguments);
                }
                gtag('js', new Date());

                gtag('config', 'AW-684764926');
            </script>


            <!-- Google Tag Manager -->
            <script>
                (function (w, d, s, l, i) {
                    w[l] = w[l] || [];
                    w[l].push({
                        'gtm.start': new Date().getTime(),
                        event: 'gtm.js'
                    });
                    var f = d.getElementsByTagName(s)[0],
                        j = d.createElement(s),
                        dl = l != 'dataLayer' ? '&l=' + l : '';
                    j.async = true;
                    j.src =
                        'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
                    f.parentNode.insertBefore(j, f);
                })(window, document, 'script', 'dataLayer', 'GTM-WGXR6LC');
            </script>
            <!-- End Google Tag Manager -->

            <!-- Google Tag Manager (noscript) -->
            <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-WGXR6LC" height="0" width="0"
                    style="display:none;visibility:hidden"></iframe></noscript>
            <!-- End Google Tag Manager (noscript) -->


            <!-- Global site tag (gtag.js) - Google Analytics -->
            <script async src="https://www.googletagmanager.com/gtag/js?id=UA-132434383-1"></script>
            <script>
                window.dataLayer = window.dataLayer || [];

                function gtag() {
                    dataLayer.push(arguments);
                }
                gtag('js', new Date());

                gtag('config', 'UA-132434383-1');
            </script>

            <script>
                (function (w, d, s, r, c, a, m) {
                    w[c] = w[c] || function () {
                        (w[c].q = w[c].q || []).push(arguments)
                    }
                    a = d.createElement(s);
                    a.async = 1;
                    a.src = r + '&' + Math.random();
                    m = d.getElementsByTagName(s)[0];
                    m.parentNode.insertBefore(a, m);
                })(window, document, 'script',
                    '//www.techsolutions.com.tw/analytics.js?id=5e4f558baa4065e4&d=https://adbert.techsolutions.com.tw',
                    'atm');
                atm('send', 'pageview');
            </script>
    </head>

    <body>
        <form id="form1" runat="server">

            <script type="text/javascript">
                //<![CDATA[
                var theForm = document.forms['form1'];
                if (!theForm) {
                    theForm = document.form1;
                }

                function __doPostBack(eventTarget, eventArgument) {
                    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
                        theForm.__EVENTTARGET.value = eventTarget;
                        theForm.__EVENTARGUMENT.value = eventArgument;
                        theForm.submit();
                    }
                }
                //]]>
            </script>


            <div class="aspNetHidden">

                <input type="hidden" name="__EVENTVALIDATION" id="__EVENTVALIDATION"
                    value="/wEdABkJ+wPymnvPlhOV7huNxxcmGJFKGrixhNRIBkKHiTebmJdHjsaBD0tCA6n9BB0cd7+yU0Ap1yl3DzfJB0KnmnIp0rkHEi+mkA4PV7NC/fzgTkixE8BKSD0hlfwN20rmgKvfrDAVdjbLocpLWIv+fP4MMAc1euT+9OTL3ZN5Lx7AbIdDzKZ8fTpfS2upIzElKx9bOnQFKnqDLVt2LS60TXk3vco2NXpdty870kZpf8tlQPUzCYEeidKtBUiYaqYwK6W76eup43O0XQpNaTfg6PH6ZDkiAoeOUUcz8UNmzinT2T2Rtx1EdDrbfmA1saunWbkLFU/TaCWxJFjVL8tKMkEFnTNjdTIGOXzTzcifEpru++YUOoJfnk+g45n5wyXOa/JJZan7N14vOTOpa5gD3cvCJ45H0TkFdkyS+VIJczeW3GghWYWlEQ3nAHSsDlufCUtYAGTVl3TdAKE/3wV46EOoQkkDEhjY0Gvbz3Ykn5t1KREghZBVv0boc2NaC2/zVFS1N82k7PQIfi8qeAF/PEMhvIMBV+2XBlPo4PAAeIzjFPcJgwjHeEpV0EW1QB53ZMg=" />
            </div>
            <div id="wrapper-main">
                <!-- Header -->
                <uc1:Header ID="Header1" runat="server" />
                <!-- /Header -->
                
                <!-- banner -->
                <div class="banner-area">
                    <div class="white-mask">
                    </div>
                    <img src="./images/fit-banner.jpg" class="web-img">
                    <img src="./images/fit-banner-ph.jpg" class="mobile-img">
                </div>
                <!-- 地區 -->
                <div id="Country-block">
                    <div class="list-container">
                        <div class="title">
                            <span>華航機微酒自由行優惠中</span><br />
                            <span class="title2">價格已含住宿及機票</span></div>
                        <div id="Europe">
                            <div class="container">
                                <!-- <h3 class="main-title"><span>歐洲熱銷行程</span></h3> -->
                                <div class="Europe-nav-tab">
                                    <span class="Europe-nav-tab-hidden">
                                        <ul class="tab Europe-tab" data-tab-name="tab6">
                                            <li>
                                                <a href="#Europe1">東北亞</a>
                                            </li>
                                            <li>
                                                <a href="#Europe2">歐洲</a>
                                            </li>
                                            <li>
                                                <a href="#Europe3">美洲</a>
                                            </li>
                                            <li>
                                                <a href="#Europe4">東南亞</a>
                                            </li>
                                        </ul>
                                    </span>
                                </div>
                            </div>
                            <div class="containerA">
                                <div class="Europe-nav-tab">
                                    <div class="Europe-area">
                                        <div class="tabContent" id="Europe1">
                                            <div class="Europe-hidden">
                                                <div class="Europe-tool">
                                                    <a href="https://pkg.sabretn.com.tw//PKG/FNH/FNH.jsp?modeid=131&modecode=artisan&DEPAirportcde=TPE&DEPCityname=台灣桃園國際機場(TPE)台灣,台北桃園&ARRAirportcde=NRT&ARRCityname=成田國際機場(NRT)日本,本州關東(東京)&DEPAirportcde2=NRT&DEPCityname2=成田國際機場(NRT)日本,本州關東(東京)&ARRAirportcde2=TPE&ARRCityname2=台灣桃園國際機場(TPE)台灣,台北桃園&goDate=2023-04-09&bkDate=2023-04-12&goTime=00:00~23:59&backTime=00:00~23:59&rooms=1&adult=2&adultshare=2,0,0,0&child=0&childshare=0,0,0,0&childAge1=0&childAge2=0&childAge3=0&childAge4=0&checkindate=2023-04-09&checkoutdate=2023-04-12&airlineCode=CI"
                                                        target="_blank" class="Europe-box">
                                                        <div class="img_box">
                                                            <img src="./images/jpto.jpg" alt="東京機加酒4天3夜" />
                                                            <!-- <span class="place">高雄出發</span> -->
                                                        </div>
                                                        <div class="txt_box">
                                                            <div class="list-title">東京機加酒4天3夜</div>
                                                            <!-- <div class="remark">2日 | 六人成行、賓士接送</div> -->
                                                            <div class="txt_down_box">
                                                                <div class="date">
                                                                    08/04.07.14.15.16.17.20.21.22
                                                                </div>
                                                                <div class="price">15,688</div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                    <a href="https://pkg.sabretn.com.tw//PKG/FNH/FNH.jsp?modeid=131&modecode=artisan&DEPAirportcde=TPE&DEPCityname=台灣桃園國際機場(TPE)台灣,台北桃園&ARRAirportcde=ICN&ARRCityname=仁川國際機場(ICN)韓國,南韓首爾&DEPAirportcde2=ICN&DEPCityname2=仁川國際機場(ICN)韓國,南韓首爾&ARRAirportcde2=TPE&ARRCityname2=台灣桃園國際機場(TPE)台灣,台北桃園&goDate=2023-04-09&bkDate=2023-04-12&goTime=00:00~23:59&backTime=00:00~23:59&rooms=1&adult=2&adultshare=2,0,0,0&child=0&childshare=0,0,0,0&childAge1=0&childAge2=0&childAge3=0&childAge4=0&checkindate=2023-04-09&checkoutdate=2023-04-12&airlineCode=CI"
                                                        class="Europe-box">
                                                        <div class="img_box">
                                                            <img src="./images/korea2.jpg" alt="" />
                                                            <!-- <span class="place">高雄出發</span> -->
                                                        </div>
                                                        <div class="txt_box">
                                                            <div class="list-title">首爾機加酒4天3夜</div>
                                                            <!-- <div class="remark">2日 | 六人成行、賓士接送</div> -->
                                                            <div class="txt_down_box">
                                                                <div class="date">
                                                                    08/04.07.14.15.16.17.20.21.22
                                                                </div>
                                                                <div class="price">13,688</div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                    <a href="https://pkg.sabretn.com.tw//PKG/FNH/FNH.jsp?modeid=131&modecode=artisan&DEPAirportcde=TPE&DEPCityname=台灣桃園國際機場(TPE)台灣,台北桃園&ARRAirportcde=KIX&ARRCityname=關西國際機場(KIX)日本,本州關西(近畿)大阪&DEPAirportcde2=KIX&DEPCityname2=關西國際機場(KIX)日本,本州關西(近畿)大阪&ARRAirportcde2=TPE&ARRCityname2=台灣桃園國際機場(TPE)台灣,台北桃園&goDate=2023-04-09&bkDate=2023-04-12&goTime=00:00~23:59&backTime=00:00~23:59&rooms=1&adult=2&adultshare=2,0,0,0&child=0&childshare=0,0,0,0&childAge1=0&childAge2=0&childAge3=0&childAge4=0&checkindate=2023-04-09&checkoutdate=2023-04-12&airlineCode=CI"
                                                        target="_blank" class="Europe-box">
                                                        <div class="img_box">
                                                            <img src="./images/jpa.jpg" alt="" />
                                                            <!-- <span class="place">高雄出發</span> -->
                                                        </div>
                                                        <div class="txt_box">
                                                            <div class="list-title">大阪機加酒4天3夜</div>
                                                            <!-- <div class="remark">2日 | 六人成行、賓士接送</div> -->
                                                            <div class="txt_down_box">
                                                                <div class="date">
                                                                    08/04.07.14.15.16.17.20.21.22
                                                                </div>
                                                                <div class="price">15,588</div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                    <a href="https://pkg.sabretn.com.tw//PKG/FNH/FNH.jsp?modeid=131&modecode=artisan&DEPAirportcde=TPE&DEPCityname=台灣桃園國際機場(TPE)台灣,台北桃園&ARRAirportcde=NGO&ARRCityname=中部國際機場(NGO)日本,本州中部名古屋&DEPAirportcde2=NGO&DEPCityname2=中部國際機場(NGO)日本,本州中部名古屋&ARRAirportcde2=TPE&ARRCityname2=台灣桃園國際機場(TPE)台灣,台北桃園&goDate=2023-05-22&bkDate=2023-05-25&goTime=00:00~23:59&backTime=00:00~23:59&rooms=1&adult=2&adultshare=2,0,0,0&child=0&childshare=0,0,0,0&childAge1=0&childAge2=0&childAge3=0&childAge4=0&checkindate=2023-05-22&checkoutdate=2023-05-25&airlineCode=CII"
                                                        target="_blank" class="Europe-box">
                                                        <div class="img_box">
                                                            <img src="./images/jpn.jpg" alt="" />
                                                            <!-- <span class="place">高雄出發</span> -->
                                                        </div>
                                                        <div class="txt_box">
                                                            <div class="list-title">名古屋機加酒4天3夜</div>
                                                            <!-- <div class="remark">2日 | 六人成行、賓士接送</div> -->
                                                            <div class="txt_down_box">
                                                                <div class="date">
                                                                    08/04.07.14.15.16.17.20.21.22
                                                                </div>
                                                                <div class="price">13,688</div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                    <a href="https://pkg.sabretn.com.tw//PKG/FNH/FNH.jsp?modeid=131&modecode=artisan&DEPAirportcde=TPE&DEPCityname=%E5%8F%B0%E7%81%A3%E6%A1%83%E5%9C%92%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(TPE)%E5%8F%B0%E7%81%A3,%E5%8F%B0%E5%8C%97%E6%A1%83%E5%9C%92&ARRAirportcde=FUK&ARRCityname=%E7%A6%8F%E5%B2%A1%E6%A9%9F%E5%A0%B4(FUK)%E6%97%A5%E6%9C%AC,%E4%B9%9D%E5%B7%9E%E7%A6%8F%E5%B2%A1&DEPAirportcde2=FUK&DEPCityname2=%E7%A6%8F%E5%B2%A1%E6%A9%9F%E5%A0%B4(FUK)%E6%97%A5%E6%9C%AC,%E4%B9%9D%E5%B7%9E%E7%A6%8F%E5%B2%A1&ARRAirportcde2=TPE&ARRCityname2=%E5%8F%B0%E7%81%A3%E6%A1%83%E5%9C%92%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(TPE)%E5%8F%B0%E7%81%A3,%E5%8F%B0%E5%8C%97%E6%A1%83%E5%9C%92&goDate=2023-04-17&bkDate=2023-04-21&goTime=00:00~23:59&backTime=00:00~23:59&rooms=1&adult=2&adultshare=2,0,0,0&child=0&childshare=0,0,0,0&childAge1=0&childAge2=0&childAge3=0&childAge4=0&checkindate=2023-04-17&checkoutdate=2023-04-21&airlineCode=CI"
                                                        target="_blank" class="Europe-box">
                                                        <div class="img_box">
                                                            <img src="./images/jpf.jpg" alt="" />
                                                            <!-- <span class="place">高雄出發</span> -->
                                                        </div>
                                                        <div class="txt_box">
                                                            <div class="list-title">福岡機加酒5天4夜</div>
                                                            <!-- <div class="remark">2日 | 六人成行、賓士接送</div> -->
                                                            <div class="txt_down_box">
                                                                <div class="date">
                                                                    08/04.07.14.15.16.17.20.21.22
                                                                </div>
                                                                <div class="price">14,588</div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                    <a href="https://pkg.sabretn.com.tw//PKG/FNH/FNH.jsp?modeid=131&modecode=artisan&DEPAirportcde=TPE&DEPCityname=%E5%8F%B0%E7%81%A3%E6%A1%83%E5%9C%92%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(TPE)%E5%8F%B0%E7%81%A3,%E5%8F%B0%E5%8C%97%E6%A1%83%E5%9C%92&ARRAirportcde=CTS&ARRCityname=%E6%96%B0%E5%8D%83%E6%AD%B2%E6%A9%9F%E5%A0%B4(CTS)%E6%97%A5%E6%9C%AC,%E5%8C%97%E6%B5%B7%E9%81%93%E6%9C%AD%E5%B9%8C&DEPAirportcde2=CTS&DEPCityname2=%E6%96%B0%E5%8D%83%E6%AD%B2%E6%A9%9F%E5%A0%B4(CTS)%E6%97%A5%E6%9C%AC,%E5%8C%97%E6%B5%B7%E9%81%93%E6%9C%AD%E5%B9%8C&ARRAirportcde2=TPE&ARRCityname2=%E5%8F%B0%E7%81%A3%E6%A1%83%E5%9C%92%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(TPE)%E5%8F%B0%E7%81%A3,%E5%8F%B0%E5%8C%97%E6%A1%83%E5%9C%92&goDate=2023-04-17&bkDate=2023-04-21&goTime=00:00~23:59&backTime=00:00~23:59&rooms=1&adult=2&adultshare=2,0,0,0&child=0&childshare=0,0,0,0&childAge1=0&childAge2=0&childAge3=0&childAge4=0&checkindate=2023-04-17&checkoutdate=2023-04-21&airlineCode=CI"
                                                        target="_blank" class="Europe-box">
                                                        <div class="img_box">
                                                            <img src="./images/jph.jpg" alt="" />
                                                            <!-- <span class="place">高雄出發</span> -->
                                                        </div>
                                                        <div class="txt_box">
                                                            <div class="list-title">北海道機加酒5天4夜</div>
                                                            <!-- <div class="remark">2日 | 六人成行、賓士接送</div> -->
                                                            <div class="txt_down_box">
                                                                <div class="date">
                                                                    08/04.07.14.15.16.17.20.21.22
                                                                </div>
                                                                <div class="price">19,988</div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                    <a href="https://pkg.sabretn.com.tw//PKG/FNH/FNH.jsp?modeid=131&modecode=artisan&DEPAirportcde=TPE&DEPCityname=台灣桃園國際機場(TPE)台灣,台北桃園&ARRAirportcde=OKA&ARRCityname=那霸機場(OKA)日本,沖繩&DEPAirportcde2=OKA&DEPCityname2=那霸機場(OKA)日本,沖繩&ARRAirportcde2=TPE&ARRCityname2=台灣桃園國際機場(TPE)台灣,台北桃園&goDate=2023-05-09&bkDate=2023-05-11&goTime=00:00~23:59&backTime=00:00~23:59&rooms=1&adult=2&adultshare=2,0,0,0&child=0&childshare=0,0,0,0&childAge1=0&childAge2=0&childAge3=0&childAge4=0&checkindate=2023-05-09&checkoutdate=2023-05-11&airlineCode=CI"
                                                        target="_blank" class="Europe-box">
                                                        <div class="img_box">
                                                            <img src="./images/jpo.jpg" alt="" />
                                                            <!-- <span class="place">高雄出發</span> -->
                                                        </div>
                                                        <div class="txt_box">
                                                            <div class="list-title">沖繩機加酒3天2夜</div>
                                                            <!-- <div class="remark">2日 | 六人成行、賓士接送</div> -->
                                                            <div class="txt_down_box">
                                                                <div class="date">
                                                                    08/04.07.14.15.16.17.20.21.22
                                                                </div>
                                                                <div class="price">11,688</div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tabContent" id="Europe2">
                                            <div class="Europe-hidden">
                                                <div class="Europe-tool">
                                                    <a href="https://pkg.sabretn.com.tw//PKG/FNH/FNH.jsp?modeid=131&modecode=artisan&DEPAirportcde=TPE&DEPCityname=%E5%8F%B0%E7%81%A3%E6%A1%83%E5%9C%92%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(TPE)%E5%8F%B0%E7%81%A3,%E5%8F%B0%E5%8C%97%E6%A1%83%E5%9C%92&ARRAirportcde=LHR&ARRCityname=%E5%B8%8C%E6%96%AF%E6%B4%9B%E6%A9%9F%E5%A0%B4(LHR)%E8%8B%B1%E5%9C%8B,%E5%80%AB%E6%95%A6&DEPAirportcde2=LHR&DEPCityname2=%E5%B8%8C%E6%96%AF%E6%B4%9B%E6%A9%9F%E5%A0%B4(LHR)%E8%8B%B1%E5%9C%8B,%E5%80%AB%E6%95%A6&ARRAirportcde2=TPE&ARRCityname2=%E5%8F%B0%E7%81%A3%E6%A1%83%E5%9C%92%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(TPE)%E5%8F%B0%E7%81%A3,%E5%8F%B0%E5%8C%97%E6%A1%83%E5%9C%92&goDate=2023-04-22&bkDate=2023-04-29&goTime=00:00~23:59&backTime=00:00~23:59&rooms=1&adult=2&adultshare=2,0,0,0&child=0&childshare=0,0,0,0&childAge1=0&childAge2=0&childAge3=0&childAge4=0&checkindate=2023-04-22&checkoutdate=2023-04-29&airlineCode=CI"
                                                        target="_blank" class="Europe-box">
                                                        <div class="img_box">
                                                            <img src="./images/london2.jpg" alt="" />
                                                            <!-- <span class="place">高雄出發</span> -->
                                                        </div>
                                                        <div class="txt_box">
                                                            <div class="list-title">倫敦機加酒8天7夜</div>
                                                            <!-- <div class="remark">2日 | 六人成行、賓士接送</div> -->
                                                            <div class="txt_down_box">
                                                                <div class="date">
                                                                    08/04.07.14.15.16.17.20.21.22
                                                                </div>
                                                                <div class="price">45,222</div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                    <a href="https://pkg.sabretn.com.tw//PKG/FNH/FNH.jsp?modeid=131&modecode=artisan&DEPAirportcde=TPE&DEPCityname=%E5%8F%B0%E7%81%A3%E6%A1%83%E5%9C%92%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(TPE)%E5%8F%B0%E7%81%A3,%E5%8F%B0%E5%8C%97%E6%A1%83%E5%9C%92&ARRAirportcde=FCO&ARRCityname=%E9%81%94%E6%96%87%E8%A5%BF-%E8%8F%B2%E7%83%8F%E7%B1%B3%E5%A5%87%E8%AB%BE%E6%A9%9F%E5%A0%B4(FCO)%E7%BE%A9%E5%A4%A7%E5%88%A9,%E7%BE%85%E9%A6%AC&DEPAirportcde2=FCO&DEPCityname2=%E9%81%94%E6%96%87%E8%A5%BF-%E8%8F%B2%E7%83%8F%E7%B1%B3%E5%A5%87%E8%AB%BE%E6%A9%9F%E5%A0%B4(FCO)%E7%BE%A9%E5%A4%A7%E5%88%A9,%E7%BE%85%E9%A6%AC&ARRAirportcde2=TPE&ARRCityname2=%E5%8F%B0%E7%81%A3%E6%A1%83%E5%9C%92%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(TPE)%E5%8F%B0%E7%81%A3,%E5%8F%B0%E5%8C%97%E6%A1%83%E5%9C%92&goDate=2023-04-22&bkDate=2023-04-29&goTime=00:00~23:59&backTime=00:00~23:59&rooms=1&adult=2&adultshare=2,0,0,0&child=0&childshare=0,0,0,0&childAge1=0&childAge2=0&childAge3=0&childAge4=0&checkindate=2023-04-22&checkoutdate=2023-04-29&airlineCode=CI"
                                                        target="_blank" class="Europe-box">
                                                        <div class="img_box">
                                                            <img src="./images/roma.jpg" alt="" />
                                                            <!-- <span class="place">高雄出發</span> -->
                                                        </div>
                                                        <div class="txt_box">
                                                            <div class="list-title">羅馬機加酒8天7夜</div>
                                                            <!-- <div class="remark">2日 | 六人成行、賓士接送</div> -->
                                                            <div class="txt_down_box">
                                                                <div class="date">
                                                                    08/04.07.14.15.16.17.20.21.22
                                                                </div>
                                                                <div class="price">42,177</div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                    <a href="https://pkg.sabretn.com.tw//PKG/FNH/FNH.jsp?modeid=131&modecode=artisan&DEPAirportcde=TPE&DEPCityname=%E5%8F%B0%E7%81%A3%E6%A1%83%E5%9C%92%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(TPE)%E5%8F%B0%E7%81%A3,%E5%8F%B0%E5%8C%97%E6%A1%83%E5%9C%92&ARRAirportcde=VIE&ARRCityname=%E7%B6%AD%E4%B9%9F%E7%B4%8D%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(VIE)%E5%A5%A7%E5%9C%B0%E5%88%A9,%E7%B6%AD%E4%B9%9F%E7%B4%8D&DEPAirportcde2=VIE&DEPCityname2=%E7%B6%AD%E4%B9%9F%E7%B4%8D%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(VIE)%E5%A5%A7%E5%9C%B0%E5%88%A9,%E7%B6%AD%E4%B9%9F%E7%B4%8D&ARRAirportcde2=TPE&ARRCityname2=%E5%8F%B0%E7%81%A3%E6%A1%83%E5%9C%92%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(TPE)%E5%8F%B0%E7%81%A3,%E5%8F%B0%E5%8C%97%E6%A1%83%E5%9C%92&goDate=2023-04-20&bkDate=2023-04-25&goTime=00:00~23:59&backTime=00:00~23:59&rooms=1&adult=2&adultshare=2,0,0,0&child=0&childshare=0,0,0,0&childAge1=0&childAge2=0&childAge3=0&childAge4=0&checkindate=2023-04-20&checkoutdate=2023-04-25&airlineCode=CI"
                                                        target="_blank" class="Europe-box">
                                                        <div class="img_box">
                                                            <img src="./images/vienna.jpg" alt="" />
                                                            <!-- <span class="place">高雄出發</span> -->
                                                        </div>
                                                        <div class="txt_box">
                                                            <div class="list-title">維也納機加酒8天7夜</div>
                                                            <!-- <div class="remark">2日 | 六人成行、賓士接送</div> -->
                                                            <div class="txt_down_box">
                                                                <div class="date">
                                                                    08/04.07.14.15.16.17.20.21.22
                                                                </div>
                                                                <div class="price">38,988</div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                    <a href="https://pkg.sabretn.com.tw//PKG/FNH/FNH.jsp?modeid=131&modecode=artisan&DEPAirportcde=TPE&DEPCityname=%E5%8F%B0%E7%81%A3%E6%A1%83%E5%9C%92%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(TPE)%E5%8F%B0%E7%81%A3,%E5%8F%B0%E5%8C%97%E6%A1%83%E5%9C%92&ARRAirportcde=AMS&ARRCityname=%E5%8F%B2%E5%9F%BA%E6%B5%A6%E6%A9%9F%E5%A0%B4(AMS)%E8%8D%B7%E8%98%AD,%E9%98%BF%E5%A7%86%E6%96%AF%E7%89%B9%E4%B8%B9&DEPAirportcde2=AMS&DEPCityname2=%E5%8F%B2%E5%9F%BA%E6%B5%A6%E6%A9%9F%E5%A0%B4(AMS)%E8%8D%B7%E8%98%AD,%E9%98%BF%E5%A7%86%E6%96%AF%E7%89%B9%E4%B8%B9&ARRAirportcde2=TPE&ARRCityname2=%E5%8F%B0%E7%81%A3%E6%A1%83%E5%9C%92%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(TPE)%E5%8F%B0%E7%81%A3,%E5%8F%B0%E5%8C%97%E6%A1%83%E5%9C%92&goDate=2023-04-22&bkDate=2023-04-29&goTime=00:00~23:59&backTime=00:00~23:59&rooms=1&adult=2&adultshare=2,0,0,0&child=0&childshare=0,0,0,0&childAge1=0&childAge2=0&childAge3=0&childAge4=0&checkindate=2023-04-22&checkoutdate=2023-04-29&airlineCode=CI"
                                                        target="_blank" class="Europe-box">
                                                        <div class="img_box">
                                                            <img src="./images/amsterdam.jpg" alt="" />
                                                            <!-- <span class="place">高雄出發</span> -->
                                                        </div>
                                                        <div class="txt_box">
                                                            <div class="list-title">阿姆斯特丹機加酒6天5夜</div>
                                                            <!-- <div class="remark">2日 | 六人成行、賓士接送</div> -->
                                                            <div class="txt_down_box">
                                                                <div class="date">
                                                                    08/04.07.14.15.16.17.20.21.22
                                                                </div>
                                                                <div class="price">42,688</div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                    <a href="https://pkg.sabretn.com.tw//PKG/FNH/FNH.jsp?modeid=131&modecode=artisan&DEPAirportcde=TPE&DEPCityname=%E5%8F%B0%E7%81%A3%E6%A1%83%E5%9C%92%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(TPE)%E5%8F%B0%E7%81%A3,%E5%8F%B0%E5%8C%97%E6%A1%83%E5%9C%92&ARRAirportcde=FRA&ARRCityname=%E6%B3%95%E8%98%AD%E5%85%8B%E7%A6%8F%E6%A9%9F%E5%A0%B4(FRA)%E5%BE%B7%E5%9C%8B,%E6%B3%95%E8%98%AD%E5%85%8B%E7%A6%8F&DEPAirportcde2=FRA&DEPCityname2=%E6%B3%95%E8%98%AD%E5%85%8B%E7%A6%8F%E6%A9%9F%E5%A0%B4(FRA)%E5%BE%B7%E5%9C%8B,%E6%B3%95%E8%98%AD%E5%85%8B%E7%A6%8F&ARRAirportcde2=TPE&ARRCityname2=%E5%8F%B0%E7%81%A3%E6%A1%83%E5%9C%92%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(TPE)%E5%8F%B0%E7%81%A3,%E5%8F%B0%E5%8C%97%E6%A1%83%E5%9C%92&goDate=2023-04-22&bkDate=2023-04-28&goTime=00:00~23:59&backTime=00:00~23:59&rooms=1&adult=2&adultshare=2,0,0,0&child=0&childshare=0,0,0,0&childAge1=0&childAge2=0&childAge3=0&childAge4=0&checkindate=2023-04-22&checkoutdate=2023-04-28&airlineCode=CI"
                                                        target="_blank" class="Europe-box">
                                                        <div class="img_box">
                                                            <img src="./images/frankfurt.jpg" alt="" />
                                                            <!-- <span class="place">高雄出發</span> -->
                                                        </div>
                                                        <div class="txt_box">
                                                            <div class="list-title">法蘭克福機加酒7天6夜</div>
                                                            <!-- <div class="remark">2日 | 六人成行、賓士接送</div> -->
                                                            <div class="txt_down_box">
                                                                <div class="date">
                                                                    08/04.07.14.15.16.17.20.21.22
                                                                </div>
                                                                <div class="price">45,688</div>
                                                            </div>
                                                        </div>
                                                    </a>

                                                </div>
                                            </div>

                                        </div>
                                        <div class="tabContent active" id="Europe3">
                                            <div class="Europe-hidden">
                                                <div class="Europe-tool">
                                                    <a href="https://pkg.sabretn.com.tw//PKG/FNH/FNH.jsp?modeid=131&modecode=artisan&DEPAirportcde=TPE&DEPCityname=%E5%8F%B0%E7%81%A3%E6%A1%83%E5%9C%92%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(TPE)%E5%8F%B0%E7%81%A3,%E5%8F%B0%E5%8C%97%E6%A1%83%E5%9C%92&ARRAirportcde=LAX&ARRCityname=%E6%B4%9B%E6%9D%89%E7%A3%AF%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(LAX)%E7%BE%8E%E5%9C%8B,%E6%B4%9B%E6%9D%89%E7%A3%AF&DEPAirportcde2=LAX&DEPCityname2=%E6%B4%9B%E6%9D%89%E7%A3%AF%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(LAX)%E7%BE%8E%E5%9C%8B,%E6%B4%9B%E6%9D%89%E7%A3%AF&ARRAirportcde2=TPE&ARRCityname2=%E5%8F%B0%E7%81%A3%E6%A1%83%E5%9C%92%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(TPE)%E5%8F%B0%E7%81%A3,%E5%8F%B0%E5%8C%97%E6%A1%83%E5%9C%92&goDate=2023-04-22&bkDate=2023-04-27&goTime=00:00~23:59&backTime=00:00~23:59&rooms=1&adult=2&adultshare=2,0,0,0&child=0&childshare=0,0,0,0&childAge1=0&childAge2=0&childAge3=0&childAge4=0&checkindate=2023-04-22&checkoutdate=2023-04-27&airlineCode=CI"
                                                        target="_blank" class="Europe-box">
                                                        <div class="img_box">
                                                            <img src="./images/la2.jpg" alt="" />
                                                            <!-- <span class="place">高雄出發</span> -->
                                                        </div>
                                                        <div class="txt_box">
                                                            <div class="list-title">洛杉磯機加酒6天5夜</div>
                                                            <!-- <div class="remark">2日 | 六人成行、賓士接送</div> -->
                                                            <div class="txt_down_box">
                                                                <div class="date">
                                                                    08/04.07.14.15.16.17.20.21.22
                                                                </div>
                                                                <div class="price">35,888</div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                    <a href="https://pkg.sabretn.com.tw//PKG/FNH/FNH.jsp?modeid=131&modecode=artisan&DEPAirportcde=TPE&DEPCityname=%E5%8F%B0%E7%81%A3%E6%A1%83%E5%9C%92%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(TPE)%E5%8F%B0%E7%81%A3,%E5%8F%B0%E5%8C%97%E6%A1%83%E5%9C%92&ARRAirportcde=SFO&ARRCityname=%E8%88%8A%E9%87%91%E5%B1%B1%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(SFO)%E7%BE%8E%E5%9C%8B,%E8%88%8A%E9%87%91%E5%B1%B1&DEPAirportcde2=SFO&DEPCityname2=%E8%88%8A%E9%87%91%E5%B1%B1%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(SFO)%E7%BE%8E%E5%9C%8B,%E8%88%8A%E9%87%91%E5%B1%B1&ARRAirportcde2=TPE&ARRCityname2=%E5%8F%B0%E7%81%A3%E6%A1%83%E5%9C%92%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(TPE)%E5%8F%B0%E7%81%A3,%E5%8F%B0%E5%8C%97%E6%A1%83%E5%9C%92&goDate=2023-04-17&bkDate=2023-04-21&goTime=00:00~23:59&backTime=00:00~23:59&rooms=1&adult=2&adultshare=2,0,0,0&child=0&childshare=0,0,0,0&childAge1=0&childAge2=0&childAge3=0&childAge4=0&checkindate=2023-04-17&checkoutdate=2023-04-21&airlineCode=CI"
                                                        target="_blank" class="Europe-box">
                                                        <div class="img_box">
                                                            <img src="./images/lsls.jpg" alt="" />
                                                            <!-- <span class="place">高雄出發</span> -->
                                                        </div>
                                                        <div class="txt_box">
                                                            <div class="list-title">舊金山機加酒5天4夜</div>
                                                            <!-- <div class="remark">2日 | 六人成行、賓士接送</div> -->
                                                            <div class="txt_down_box">
                                                                <div class="date">
                                                                    08/04.07.14.15.16.17.20.21.22
                                                                </div>
                                                                <div class="price">32,066</div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                    <a href="https://pkg.sabretn.com.tw//PKG/FNH/FNH.jsp?modeid=131&modecode=artisan&DEPAirportcde=TPE&DEPCityname=%E5%8F%B0%E7%81%A3%E6%A1%83%E5%9C%92%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(TPE)%E5%8F%B0%E7%81%A3,%E5%8F%B0%E5%8C%97%E6%A1%83%E5%9C%92&ARRAirportcde=NYC&ARRCityname=%E7%B4%90%E7%B4%84(NYC)%E7%BE%8E%E5%9C%8B,%E7%B4%90%E7%B4%84&DEPAirportcde2=NYC&DEPCityname2=%E7%B4%90%E7%B4%84(NYC)%E7%BE%8E%E5%9C%8B,%E7%B4%90%E7%B4%84&ARRAirportcde2=TPE&ARRCityname2=%E5%8F%B0%E7%81%A3%E6%A1%83%E5%9C%92%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(TPE)%E5%8F%B0%E7%81%A3,%E5%8F%B0%E5%8C%97%E6%A1%83%E5%9C%92&goDate=2023-05-11&bkDate=2023-05-16&goTime=00:00~23:59&backTime=00:00~23:59&rooms=1&adult=2&adultshare=2,0,0,0&child=0&childshare=0,0,0,0&childAge1=0&childAge2=0&childAge3=0&childAge4=0&checkindate=2023-05-11&checkoutdate=2023-05-16&airlineCode=CI"
                                                        target="_blank" class="Europe-box">
                                                        <div class="img_box">
                                                            <img src="./images/ny.jpg" alt="" />
                                                            <!-- <span class="place">高雄出發</span> -->
                                                        </div>
                                                        <div class="txt_box">
                                                            <div class="list-title">紐約機加酒6天5夜</div>
                                                            <!-- <div class="remark">2日 | 六人成行、賓士接送</div> -->
                                                            <div class="txt_down_box">
                                                                <div class="date">
                                                                    08/04.07.14.15.16.17.20.21.22
                                                                </div>
                                                                <div class="price">42,288</div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                    <a href="https://pkg.sabretn.com.tw//PKG/FNH/FNH.jsp?modeid=131&modecode=artisan&DEPAirportcde=TPE&DEPCityname=%E5%8F%B0%E7%81%A3%E6%A1%83%E5%9C%92%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(TPE)%E5%8F%B0%E7%81%A3,%E5%8F%B0%E5%8C%97%E6%A1%83%E5%9C%92&ARRAirportcde=YVR&ARRCityname=%E6%BA%AB%E5%93%A5%E8%8F%AF%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(YVR)%E5%8A%A0%E6%8B%BF%E5%A4%A7,%E6%BA%AB%E5%93%A5%E8%8F%AF&DEPAirportcde2=YVR&DEPCityname2=%E6%BA%AB%E5%93%A5%E8%8F%AF%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(YVR)%E5%8A%A0%E6%8B%BF%E5%A4%A7,%E6%BA%AB%E5%93%A5%E8%8F%AF&ARRAirportcde2=TPE&ARRCityname2=%E5%8F%B0%E7%81%A3%E6%A1%83%E5%9C%92%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(TPE)%E5%8F%B0%E7%81%A3,%E5%8F%B0%E5%8C%97%E6%A1%83%E5%9C%92&goDate=2023-05-11&bkDate=2023-05-16&goTime=00:00~23:59&backTime=00:00~23:59&rooms=1&adult=2&adultshare=2,0,0,0&child=0&childshare=0,0,0,0&childAge1=0&childAge2=0&childAge3=0&childAge4=0&checkindate=2023-05-11&checkoutdate=2023-05-16&airlineCode=CI"
                                                        target="_blank" class="Europe-box">
                                                        <div class="img_box">
                                                            <img src="./images/vancouver2.jpg" alt="" />
                                                            <!-- <span class="place">高雄出發</span> -->
                                                        </div>
                                                        <div class="txt_box">
                                                            <div class="list-title">溫哥華機加酒6天5夜</div>
                                                            <!-- <div class="remark">2日 | 六人成行、賓士接送</div> -->
                                                            <div class="txt_down_box">
                                                                <div class="date">
                                                                    08/04.07.14.15.16.17.20.21.22
                                                                </div>
                                                                <div class="price">39,668</div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tabContent" id="Europe4">
                                            <div class="Europe-hidden">
                                                <div class="Europe-tool">
                                                    <a href="https://pkg.sabretn.com.tw//PKG/FNH/FNH.jsp?modeid=131&modecode=artisan&DEPAirportcde=TPE&DEPCityname=%E5%8F%B0%E7%81%A3%E6%A1%83%E5%9C%92%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(TPE)%E5%8F%B0%E7%81%A3,%E5%8F%B0%E5%8C%97%E6%A1%83%E5%9C%92&ARRAirportcde=SIN&ARRCityname=%E6%96%B0%E5%8A%A0%E5%9D%A1%E6%A8%9F%E5%AE%9C%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(SIN)%E6%96%B0%E5%8A%A0%E5%9D%A1,%E6%96%B0%E5%8A%A0%E5%9D%A1&DEPAirportcde2=SIN&DEPCityname2=%E6%96%B0%E5%8A%A0%E5%9D%A1%E6%A8%9F%E5%AE%9C%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(SIN)%E6%96%B0%E5%8A%A0%E5%9D%A1,%E6%96%B0%E5%8A%A0%E5%9D%A1&ARRAirportcde2=TPE&ARRCityname2=%E5%8F%B0%E7%81%A3%E6%A1%83%E5%9C%92%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(TPE)%E5%8F%B0%E7%81%A3,%E5%8F%B0%E5%8C%97%E6%A1%83%E5%9C%92&goDate=2023-05-11&bkDate=2023-05-15&goTime=00:00~23:59&backTime=00:00~23:59&rooms=1&adult=2&adultshare=2,0,0,0&child=0&childshare=0,0,0,0&childAge1=0&childAge2=0&childAge3=0&childAge4=0&checkindate=2023-05-11&checkoutdate=2023-05-15&airlineCode=CI"
                                                        target="_blank" class="Europe-box">
                                                        <div class="img_box">
                                                            <img src="./images/sin.jpg" alt="" />
                                                            <!-- <span class="place">高雄出發</span> -->
                                                        </div>
                                                        <div class="txt_box">
                                                            <div class="list-title">新加坡機加酒5天4夜</div>
                                                            <!-- <div class="remark">2日 | 六人成行、賓士接送</div> -->
                                                            <div class="txt_down_box">
                                                                <div class="date">
                                                                    08/04.07.14.15.16.17.20.21.22
                                                                </div>
                                                                <div class="price">13,998</div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                    <a href="https://pkg.sabretn.com.tw//PKG/FNH/FNH.jsp?modeid=131&modecode=artisan&DEPAirportcde=TPE&DEPCityname=%E5%8F%B0%E7%81%A3%E6%A1%83%E5%9C%92%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(TPE)%E5%8F%B0%E7%81%A3,%E5%8F%B0%E5%8C%97%E6%A1%83%E5%9C%92&ARRAirportcde=BKK&ARRCityname=%E8%98%87%E6%B1%AA%E7%B4%8D%E8%93%AC%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(BKK)%E6%B3%B0%E5%9C%8B,%E6%9B%BC%E8%B0%B7&DEPAirportcde2=BKK&DEPCityname2=%E8%98%87%E6%B1%AA%E7%B4%8D%E8%93%AC%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(BKK)%E6%B3%B0%E5%9C%8B,%E6%9B%BC%E8%B0%B7&ARRAirportcde2=TPE&ARRCityname2=%E5%8F%B0%E7%81%A3%E6%A1%83%E5%9C%92%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(TPE)%E5%8F%B0%E7%81%A3,%E5%8F%B0%E5%8C%97%E6%A1%83%E5%9C%92&goDate=2023-05-11&bkDate=2023-05-15&goTime=00:00~23:59&backTime=00:00~23:59&rooms=1&adult=2&adultshare=2,0,0,0&child=0&childshare=0,0,0,0&childAge1=0&childAge2=0&childAge3=0&childAge4=0&checkindate=2023-05-11&checkoutdate=2023-05-15&airlineCode=CI"
                                                        target="_blank" class="Europe-box">
                                                        <div class="img_box">
                                                            <img src="./images/bkbk.jpg" alt="" />
                                                            <!-- <span class="place">高雄出發</span> -->
                                                        </div>
                                                        <div class="txt_box">
                                                            <div class="list-title">曼谷機加酒5天4夜</div>
                                                            <!-- <div class="remark">2日 | 六人成行、賓士接送</div> -->
                                                            <div class="txt_down_box">
                                                                <div class="date">
                                                                    08/04.07.14.15.16.17.20.21.22
                                                                </div>
                                                                <div class="price">11,688</div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                    <a href="https://pkg.sabretn.com.tw//PKG/FNH/FNH.jsp?modeid=131&modecode=artisan&DEPAirportcde=TPE&DEPCityname=%E5%8F%B0%E7%81%A3%E6%A1%83%E5%9C%92%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(TPE)%E5%8F%B0%E7%81%A3,%E5%8F%B0%E5%8C%97%E6%A1%83%E5%9C%92&ARRAirportcde=KUL&ARRCityname=%E5%90%89%E9%9A%86%E5%9D%A1%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4%20(KUL)%E9%A6%AC%E4%BE%86%E8%A5%BF%E4%BA%9E,%E5%90%89%E9%9A%86%E5%9D%A1&DEPAirportcde2=KUL&DEPCityname2=%E5%90%89%E9%9A%86%E5%9D%A1%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4%20(KUL)%E9%A6%AC%E4%BE%86%E8%A5%BF%E4%BA%9E,%E5%90%89%E9%9A%86%E5%9D%A1&ARRAirportcde2=TPE&ARRCityname2=%E5%8F%B0%E7%81%A3%E6%A1%83%E5%9C%92%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(TPE)%E5%8F%B0%E7%81%A3,%E5%8F%B0%E5%8C%97%E6%A1%83%E5%9C%92&goDate=2023-04-17&bkDate=2023-04-21&goTime=00:00~23:59&backTime=00:00~23:59&rooms=1&adult=2&adultshare=2,0,0,0&child=0&childshare=0,0,0,0&childAge1=0&childAge2=0&childAge3=0&childAge4=0&checkindate=2023-04-17&checkoutdate=2023-04-21&airlineCode=CI"
                                                        target="_blank" class="Europe-box">
                                                        <div class="img_box">
                                                            <img src="./images/kl.jpg" alt="" />
                                                            <!-- <span class="place">高雄出發</span> -->
                                                        </div>
                                                        <div class="txt_box">
                                                            <div class="list-title">吉隆坡機加酒5天4夜</div>
                                                            <!-- <div class="remark">2日 | 六人成行、賓士接送</div> -->
                                                            <div class="txt_down_box">
                                                                <div class="date">
                                                                    08/04.07.14.15.16.17.20.21.22
                                                                </div>
                                                                <div class="price">10,268</div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                    <a href="https://pkg.sabretn.com.tw//PKG/FNH/FNH.jsp?modeid=131&modecode=artisan&DEPAirportcde=TPE&DEPCityname=%E5%8F%B0%E7%81%A3%E6%A1%83%E5%9C%92%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(TPE)%E5%8F%B0%E7%81%A3,%E5%8F%B0%E5%8C%97%E6%A1%83%E5%9C%92&ARRAirportcde=DPS&ARRCityname=%E4%BC%8D%E6%8B%89%C2%B7%E8%B3%B4%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(DPS)%E5%8D%B0%E5%B0%BC,%E5%B3%87%E9%87%8C%E5%B3%B6&DEPAirportcde2=DPS&DEPCityname2=%E4%BC%8D%E6%8B%89%C2%B7%E8%B3%B4%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(DPS)%E5%8D%B0%E5%B0%BC,%E5%B3%87%E9%87%8C%E5%B3%B6&ARRAirportcde2=TPE&ARRCityname2=%E5%8F%B0%E7%81%A3%E6%A1%83%E5%9C%92%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(TPE)%E5%8F%B0%E7%81%A3,%E5%8F%B0%E5%8C%97%E6%A1%83%E5%9C%92&goDate=2023-05-11&bkDate=2023-05-15&goTime=00:00~23:59&backTime=00:00~23:59&rooms=1&adult=2&adultshare=2,0,0,0&child=0&childshare=0,0,0,0&childAge1=0&childAge2=0&childAge3=0&childAge4=0&checkindate=2023-05-11&checkoutdate=2023-05-15&airlineCode=CI"
                                                        target="_blank" class="Europe-box">
                                                        <div class="img_box">
                                                            <img src="./images/bali.jpg" alt="" />
                                                            <!-- <span class="place">高雄出發</span> -->
                                                        </div>
                                                        <div class="txt_box">
                                                            <div class="list-title">巴里島機加酒5天4夜</div>
                                                            <!-- <div class="remark">2日 | 六人成行、賓士接送</div> -->
                                                            <div class="txt_down_box">
                                                                <div class="date">
                                                                    08/04.07.14.15.16.17.20.21.22
                                                                </div>
                                                                <div class="price">16,988</div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                    <a href="https://pkg.sabretn.com.tw//PKG/FNH/FNH.jsp?modeid=131&modecode=artisan&DEPAirportcde=TPE&DEPCityname=%E5%8F%B0%E7%81%A3%E6%A1%83%E5%9C%92%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(TPE)%E5%8F%B0%E7%81%A3,%E5%8F%B0%E5%8C%97%E6%A1%83%E5%9C%92&ARRAirportcde=CEB&ARRCityname=%E9%BA%A5%E5%85%8B%E5%9D%A6-%E5%AE%BF%E9%9C%A7%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(CEB)%E8%8F%B2%E5%BE%8B%E8%B3%93,%E5%AE%BF%E9%9C%A7&DEPAirportcde2=CEB&DEPCityname2=%E9%BA%A5%E5%85%8B%E5%9D%A6-%E5%AE%BF%E9%9C%A7%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(CEB)%E8%8F%B2%E5%BE%8B%E8%B3%93,%E5%AE%BF%E9%9C%A7&ARRAirportcde2=TPE&ARRCityname2=%E5%8F%B0%E7%81%A3%E6%A1%83%E5%9C%92%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(TPE)%E5%8F%B0%E7%81%A3,%E5%8F%B0%E5%8C%97%E6%A1%83%E5%9C%92&goDate=2023-05-11&bkDate=2023-05-15&goTime=00:00~23:59&backTime=00:00~23:59&rooms=1&adult=2&adultshare=2,0,0,0&child=0&childshare=0,0,0,0&childAge1=0&childAge2=0&childAge3=0&childAge4=0&checkindate=2023-05-11&checkoutdate=2023-05-15&airlineCode=CI"
                                                        target="_blank" class="Europe-box">
                                                        <div class="img_box">
                                                            <img src="./images/cube.jpg" alt="" />
                                                            <!-- <span class="place">高雄出發</span> -->
                                                        </div>
                                                        <div class="txt_box">
                                                            <div class="list-title">宿霧機加酒5天4夜</div>
                                                            <!-- <div class="remark">2日 | 六人成行、賓士接送</div> -->
                                                            <div class="txt_down_box">
                                                                <div class="date">
                                                                    08/04.07.14.15.16.17.20.21.22
                                                                </div>
                                                                <div class="price">8,088</div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                    <a href="https://pkg.sabretn.com.tw//PKG/FNH/FNH.jsp?modeid=131&modecode=artisan&DEPAirportcde=TPE&DEPCityname=%E5%8F%B0%E7%81%A3%E6%A1%83%E5%9C%92%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(TPE)%E5%8F%B0%E7%81%A3,%E5%8F%B0%E5%8C%97%E6%A1%83%E5%9C%92&ARRAirportcde=SGN&ARRCityname=%E6%96%B0%E5%B1%B1%E4%B8%80%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(SGN)%E8%B6%8A%E5%8D%97,%E8%83%A1%E5%BF%97%E6%98%8E%E5%B8%82&DEPAirportcde2=SGN&DEPCityname2=%E6%96%B0%E5%B1%B1%E4%B8%80%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(SGN)%E8%B6%8A%E5%8D%97,%E8%83%A1%E5%BF%97%E6%98%8E%E5%B8%82&ARRAirportcde2=TPE&ARRCityname2=%E5%8F%B0%E7%81%A3%E6%A1%83%E5%9C%92%E5%9C%8B%E9%9A%9B%E6%A9%9F%E5%A0%B4(TPE)%E5%8F%B0%E7%81%A3,%E5%8F%B0%E5%8C%97%E6%A1%83%E5%9C%92&goDate=&bkDate=&goTime=00:00~23:59&backTime=00:00~23:59&rooms=1&adult=2&adultshare=2,0,0,0&child=0&childshare=0,0,0,0&childAge1=0&childAge2=0&childAge3=0&childAge4=0&checkindate=&checkoutdate=&airlineCode=CI"
                                                        target="_blank" class="Europe-box">
                                                        <div class="img_box">
                                                            <img src="./images/hcm.jpg" alt="" />
                                                            <!-- <span class="place">高雄出發</span> -->
                                                        </div>
                                                        <div class="txt_box">
                                                            <div class="list-title">胡志明機加酒5天4夜</div>
                                                            <!-- <div class="remark">2日 | 六人成行、賓士接送</div> -->
                                                            <div class="txt_down_box">
                                                                <div class="date">
                                                                    08/04.07.14.15.16.17.20.21.22
                                                                </div>
                                                                <div class="price">11,688</div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- footer -->
	    <uc2:Foot ID="Foot" runat="server" />
            <!-- /footer -->
            </div>

            <!-- JQ -->
            <script src="https://www.artisan.com.tw/js/jquery-1.12.4.min.js"></script>
            <!-- owl -->
            <script src="/js/owl.carousel.min.js"></script>
            <!-- flatpickr -->
            <script src="/js/flatpickr.js"></script>
            <!-- 讓picture能在ie執行 -->
            <script src="/js/picturefill.min.js"></script>
            <!-- tab -->
            <script src="/js/jQuery.easyTabs.js"></script>
            <script src="/js/simpletab.js"></script>
            <!-- Pushy JS -->
            <script src="/js/pushy.min.js"></script>
            <!-- js -->
            <script src="/js/index_2020.js"></script>
            <!-- 彈跳視窗 -->
            <script src="/js/Popup.js"></script>
            <script src="/slick/slick.js" type="text/javascript" charset="utf-8"></script>

            <script src="/js/index_2022.js"></script>
            <!-- 側邊浮動公告 -->
            <script type="text/javascript">
                $(document).ready(function () {
                    $(window).load(function () {
                        // adv left
                        var $win2 = $(window),
                            $ad2 = $('#abgne_float_ad2').css('opacity', 0).show(),
                            _width2 = $ad2.width(),
                            _height2 = $ad2.height(),
                            _diffY2 = 80,
                            _diffX2 = 20,
                            _moveSpeed2 = 800;
                        $ad2.css({
                            top: _diffY2,
                            right: _diffX2,
                            opacity: 1
                        });

                        $win2.bind('scroll resize', function () {
                            var $this = $(this);

                            $ad2.stop().animate({
                                top: $this.scrollTop() + $this.height() -
                                    _height2 -
                                    _diffY2,
                                right: $this.scrollLeft() + _diffX2
                            }, _moveSpeed2);
                        }).scroll();
                        $('#abgne_float_ad2 .abgne_close_ad').click(function () {
                            $ad2.hide();
                        });
                    });
                });

                // $(window).on('load', function() {
                // $('.loading_mask').fadeOut(300);
                //公告圖
                // var nowDate = new Date();
                //公告關閉時間
                //月份從0開始
                // var endDate = new Date(2021, 4, 13);
                // if ((endDate - nowDate) > 0) {
                // $('.billboard').fadeIn(500);
                // $(".billboard_close,.billboard").on('click', function() {
                // $('.billboard').fadeOut(500);
                // });
                // }
                // });

                $(function () {
                    setTimeout(function () {
                        $(".billboard").fadeOut(500);
                    }, 10000);
                })

                $(".billboard_close,.billboard").on('click', function () {
                    $('.billboard').fadeOut(500);
                });
            </script>
            <!-- 側邊浮動公告 -->


            <script type="text/javascript">
                //<![CDATA[




                //]]>
            </script>
        </form>
    </body>

</html>