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
        <script async src="https://www.googletagmanager.com/gtag/js?id=AW-684764926">
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
                    <img src="./images/mothersday.jpg" class="web-img">
                    <img src="./images/mothersday-ph.jpg" class="mobile-img">
                </div>
                <!-- 地區 -->
                <div id="Country-block">
                    <div class="list-container">
                        <div class="title">
                            <span>精選航線寵愛價 五月FUN飛你的玩心</span>
                        </div>
                        <div style="margin-top: 1rem;">
                            <p>
                                適用對象：成人及兒童個人機票 (不適用嬰兒機票及特殊身分機票，如船員、勞工、學生等)
                            <br />
                                適用艙等：商務艙(D)、豪經艙(E)、經濟艙 (T/R/Q/H/N)
                            <br />
                                適用台灣地區出發之航線 ( 例外:東京成田/東京羽田/大阪/曼谷/帛琉 及 台中胡志明)
                            <br />
                                ※僅限 CI/AE 自營國際航線"單程"或"來回行程"(適用 不同航點進出)。
                            <br />
                                ※兩岸直航班機,AE 航班可直接開立。
                            <br />
                                ※不適用：與他航聯營航班不適用 (TPEAMS v.v. hard block 航班適用)
                            </p>
                        </div>
                        <div id="Europe">
                            <div class="container">
                                <!-- <h3 class="main-title"><span>歐洲熱銷行程</span></h3> -->
                                <div class="Europe-nav-tab">
                                    <span class="Europe-nav-tab-hidden">
                                        <ul class="tab Europe-tab" data-tab-name="tab6">
                                            <li>
                                                <a href="#Europe1">歐洲</a>
                                            </li>
                                            <li>
                                                <a href="#Europe2">美洲</a>
                                            </li>
                                            <li>
                                                <a href="#Europe3">紐澳</a>
                                            </li>
                                            <li>
                                                <a href="#Europe4">東北亞</a>
                                            </li>
                                            <li>
                                                <a href="#Europe5">東南亞</a>
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
                                                    <a href="https://cs.sabretn.com.tw/artisan/search/?trip=Return&depCity=TPE&arrCity=FCO&deptDate=2023-04-20&retDate=2023-04-28&paxTypeADT=1&airlineCode=CI&classOfService=Y&stopCount=2"
                                                        target="_blank" class="Europe-box">
                                                        <div class="img_box">
                                                            <img src="./images/roma.jpg" alt="" />
                                                            <!-- <span class="place">高雄出發</span> -->
                                                        </div>
                                                        <div class="txt_box">
                                                            <div class="list-title">羅馬</div>
                                                            <!-- <div class="remark">2日 | 六人成行、賓士接送</div> -->
                                                            <div class="txt_down_box">
                                                                <%-- <div class="date">
                                                                    08/04.07.14.15.16.17.20.21.22
                                                                </div> --%>
                                                                <div class="price">34,508</div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                    <a href="https://cs.sabretn.com.tw/artisan/search/?trip=Return&depCity=TPE&arrCity=VIE&deptDate=2023-06-05&retDate=2023-06-13&paxTypeADT=1&airlineCode=CI&classOfService=Y&stopCount=2"
                                                        target="_blank" class="Europe-box">
                                                        <div class="img_box">
                                                            <img src="./images/vienna.jpg" alt="" />
                                                            <!-- <span class="place">高雄出發</span> -->
                                                        </div>
                                                        <div class="txt_box">
                                                            <div class="list-title">維也納</div>
                                                            <!-- <div class="remark">2日 | 六人成行、賓士接送</div> -->
                                                            <div class="txt_down_box">
                                                                <%-- <div class="date">
                                                                    08/04.07.14.15.16.17.20.21.22
                                                                </div> --%>
                                                                <div class="price">41,559</div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                    <a href="https://cs.sabretn.com.tw/artisan/search/?trip=Return&depCity=TPE&arrCity=LHR&deptDate=2023-05-15&retDate=2023-06-09&paxTypeADT=1&airlineCode=CI&classOfService=Y&stopCount=2"
                                                        target="_blank" class="Europe-box">
                                                        <div class="img_box">
                                                            <img src="./images/london2.jpg" alt="" />
                                                            <!-- <span class="place">高雄出發</span> -->
                                                        </div>
                                                        <div class="txt_box">
                                                            <div class="list-title">倫敦</div>
                                                            <!-- <div class="remark">2日 | 六人成行、賓士接送</div> -->
                                                            <div class="txt_down_box">
                                                                <%-- <div class="date">
                                                                    08/04.07.14.15.16.17.20.21.22
                                                                </div> --%>
                                                                <div class="price">39,190</div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                    <a href="https://cs.sabretn.com.tw/artisan/search/?trip=Return&depCity=TPE&arrCity=FRA&deptDate=2023-05-23&retDate=2023-06-06&paxTypeADT=1&airlineCode=CI&classOfService=Y&stopCount=2"
                                                        target="_blank" class="Europe-box">
                                                        <div class="img_box">
                                                            <img src="./images/frankfurt.jpg" alt="" />
                                                            <!-- <span class="place">高雄出發</span> -->
                                                        </div>
                                                        <div class="txt_box">
                                                            <div class="list-title">法蘭克福</div>
                                                            <!-- <div class="remark">2日 | 六人成行、賓士接送</div> -->
                                                            <div class="txt_down_box">
                                                                <%-- <div class="date">
                                                                    08/04.07.14.15.16.17.20.21.22
                                                                </div> --%>
                                                                <div class="price">40,914</div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                    <a href="https://cs.sabretn.com.tw/artisan/search/?trip=Return&depCity=TPE&arrCity=AMS&deptDate=2023-05-16&retDate=2023-06-05&paxTypeADT=1&airlineCode=CI&classOfService=Y&stopCount=2"
                                                        target="_blank" class="Europe-box">
                                                        <div class="img_box">
                                                            <img src="./images/amsterdam.jpg" alt="" />
                                                            <!-- <span class="place">高雄出發</span> -->
                                                        </div>
                                                        <div class="txt_box">
                                                            <div class="list-title">阿姆斯特丹</div>
                                                            <!-- <div class="remark">2日 | 六人成行、賓士接送</div> -->
                                                            <div class="txt_down_box">
                                                                <%-- <div class="date">
                                                                    08/04.07.14.15.16.17.20.21.22
                                                                </div> --%>
                                                                <div class="price">37,727</div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tabContent active" id="Europe2">
                                            <div class="Europe-hidden">
                                                <div class="Europe-tool">
                                                    <a href="https://cs.sabretn.com.tw/artisan/search/?trip=Return&depCity=TPE&arrCity=LAX&deptDate=2023-06-06&retDate=2023-08-30&paxTypeADT=1&airlineCode=CI&classOfService=Y&stopCount=2"
                                                        target="_blank" class="Europe-box">
                                                        <div class="img_box">
                                                            <img src="./images/la2.jpg" alt="" />
                                                            <!-- <span class="place">高雄出發</span> -->
                                                        </div>
                                                        <div class="txt_box">
                                                            <div class="list-title">洛杉磯</div>
                                                            <!-- <div class="remark">2日 | 六人成行、賓士接送</div> -->
                                                            <div class="txt_down_box">
                                                                <%-- <div class="date">
                                                                    08/04.07.14.15.16.17.20.21.22
                                                                </div> --%>
                                                                <div class="price">35,101</div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                    <a href="https://cs.sabretn.com.tw/artisan/search/?trip=Return&depCity=TPE&arrCity=SFO&deptDate=2023-06-07&retDate=2023-08-22&paxTypeADT=1&airlineCode=CI&classOfService=Y&stopCount=2"
                                                        target="_blank" class="Europe-box">
                                                        <div class="img_box">
                                                            <img src="./images/lsls.jpg" alt="" />
                                                            <!-- <span class="place">高雄出發</span> -->
                                                        </div>
                                                        <div class="txt_box">
                                                            <div class="list-title">舊金山</div>
                                                            <!-- <div class="remark">2日 | 六人成行、賓士接送</div> -->
                                                            <div class="txt_down_box">
                                                                <%-- <div class="date">
                                                                    08/04.07.14.15.16.17.20.21.22
                                                                </div> --%>
                                                                <div class="price">33,200</div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                    <a href="https://cs.sabretn.com.tw/artisan/search/?trip=Return&depCity=TPE&arrCity=JFK&deptDate=2023-06-06&retDate=2023-08-20&paxTypeADT=1&airlineCode=CI&classOfService=Y&stopCount=2"
                                                        target="_blank" class="Europe-box">
                                                        <div class="img_box">
                                                            <img src="./images/ny.jpg" alt="" />
                                                            <!-- <span class="place">高雄出發</span> -->
                                                        </div>
                                                        <div class="txt_box">
                                                            <div class="list-title">紐約</div>
                                                            <!-- <div class="remark">2日 | 六人成行、賓士接送</div> -->
                                                            <div class="txt_down_box">
                                                                <%-- <div class="date">
                                                                    08/04.07.14.15.16.17.20.21.22
                                                                </div> --%>
                                                                <div class="price">42,008</div>
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
                                                            <div class="list-title">溫哥華</div>
                                                            <!-- <div class="remark">2日 | 六人成行、賓士接送</div> -->
                                                            <div class="txt_down_box">
                                                                <%-- <div class="date">
                                                                    08/04.07.14.15.16.17.20.21.22
                                                                </div> --%>
                                                                <div class="price">42,008</div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tabContent active" id="Europe3">
                                            <div class="Europe-hidden">
                                                <div class="Europe-tool">
                                                    <a href="https://cs.sabretn.com.tw/artisan/search/?trip=Return&depCity=TPE&arrCity=SYD&deptDate=2023-06-05&retDate=2023-06-15&paxTypeADT=1&airlineCode=CI&classOfService=Y&stopCount=2"
                                                        target="_blank" class="Europe-box">
                                                        <div class="img_box">
                                                            <img src="./images/sydney.jpg" alt="" />
                                                            <!-- <span class="place">高雄出發</span> -->
                                                        </div>
                                                        <div class="txt_box">
                                                            <div class="list-title">雪梨</div>
                                                            <!-- <div class="remark">2日 | 六人成行、賓士接送</div> -->
                                                            <div class="txt_down_box">
                                                                <%-- <div class="date">
                                                                    08/04.07.14.15.16.17.20.21.22
                                                                </div> --%>
                                                                <div class="price">32,041</div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                    <a href="https://cs.sabretn.com.tw/artisan/search/?trip=Return&depCity=TPE&arrCity=BNE&deptDate=2023-06-10&retDate=2023-09-10&paxTypeADT=1&airlineCode=CI&classOfService=Y&stopCount=2"
                                                        target="_blank" class="Europe-box">
                                                        <div class="img_box">
                                                            <img src="./images/brisbane.jpg" alt="" />
                                                            <!-- <span class="place">高雄出發</span> -->
                                                        </div>
                                                        <div class="txt_box">
                                                            <div class="list-title">布里斯本</div>
                                                            <!-- <div class="remark">2日 | 六人成行、賓士接送</div> -->
                                                            <div class="txt_down_box">
                                                                <%-- <div class="date">
                                                                    08/04.07.14.15.16.17.20.21.22
                                                                </div> --%>
                                                                <div class="price">32,877</div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                    <a href="https://cs.sabretn.com.tw/artisan/search/?trip=Return&depCity=TPE&arrCity=MEL&deptDate=2023-05-06&retDate=2023-05-16&paxTypeADT=1&airlineCode=CI&classOfService=Y&stopCount=2"
                                                        target="_blank" class="Europe-box">
                                                        <div class="img_box">
                                                            <img src="./images/Melbourne.jpg" alt="" />
                                                            <!-- <span class="place">高雄出發</span> -->
                                                        </div>
                                                        <div class="txt_box">
                                                            <div class="list-title">墨爾本</div>
                                                            <!-- <div class="remark">2日 | 六人成行、賓士接送</div> -->
                                                            <div class="txt_down_box">
                                                                <%-- <div class="date">
                                                                    08/04.07.14.15.16.17.20.21.22
                                                                </div> --%>
                                                                <div class="price">31,500</div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                    <a href="https://cs.sabretn.com.tw/artisan/search/?trip=Return&depCity=TPE&arrCity=AKL&deptDate=2023-05-19&retDate=2023-09-10&paxTypeADT=1&airlineCode=CI&classOfService=Y&stopCount=2"
                                                        target="_blank" class="Europe-box">
                                                        <div class="img_box">
                                                            <img src="./images/Auckland.jpg" alt="" />
                                                            <!-- <span class="place">高雄出發</span> -->
                                                        </div>
                                                        <div class="txt_box">
                                                            <div class="list-title">奧克蘭</div>
                                                            <!-- <div class="remark">2日 | 六人成行、賓士接送</div> -->
                                                            <div class="txt_down_box">
                                                                <%-- <div class="date">
                                                                    08/04.07.14.15.16.17.20.21.22
                                                                </div> --%>
                                                                <div class="price">31,508</div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tabContent" id="Europe4">
                                            <div class="Europe-hidden">
                                                <div class="Europe-tool">
                                                    <a href="https://cs.sabretn.com.tw/artisan/search/?trip=Return&depCity=TPE&arrCity=ICN&deptDate=2023-05-05&retDate=2023-05-11&paxTypeADT=1&airlineCode=CI&classOfService=Y&stopCount=2"
                                                        target="_blank" class="Europe-box">
                                                        <div class="img_box">
                                                            <img src="./images/korea2.jpg" alt="" />
                                                            <!-- <span class="place">高雄出發</span> -->
                                                        </div>
                                                        <div class="txt_box">
                                                            <div class="list-title">首爾</div>
                                                            <!-- <div class="remark">2日 | 六人成行、賓士接送</div> -->
                                                            <div class="txt_down_box">
                                                                <%-- <div class="date">
                                                                    08/04.07.14.15.16.17.20.21.22
                                                                </div> --%>
                                                                <div class="price">10,138</div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                    <a href="https://cs.sabretn.com.tw/artisan/search/?trip=Return&depCity=TPE&arrCity=PUS&deptDate=2023-05-09&retDate=2023-05-11&paxTypeADT=1&airlineCode=CI&classOfService=Y&stopCount=2"
                                                        target="_blank" class="Europe-box">
                                                        <div class="img_box">
                                                            <img src="./images/Busan.jpg" alt="" />
                                                            <!-- <span class="place">高雄出發</span> -->
                                                        </div>
                                                        <div class="txt_box">
                                                            <div class="list-title">釜山</div>
                                                            <!-- <div class="remark">2日 | 六人成行、賓士接送</div> -->
                                                            <div class="txt_down_box">
                                                                <%-- <div class="date">
                                                                    08/04.07.14.15.16.17.20.21.22
                                                                </div> --%>
                                                                <div class="price">11,022</div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                    <a href="https://cs.sabretn.com.tw/artisan/search/?trip=Return&depCity=TPE&arrCity=NGO&deptDate=2023-06-09&retDate=2023-06-16&paxTypeADT=1&airlineCode=CI&classOfService=Y&stopCount=2"
                                                        target="_blank" class="Europe-box">
                                                        <div class="img_box">
                                                            <img src="./images/jpn.jpg" alt="" />
                                                            <!-- <span class="place">高雄出發</span> -->
                                                        </div>
                                                        <div class="txt_box">
                                                            <div class="list-title">名古屋</div>
                                                            <!-- <div class="remark">2日 | 六人成行、賓士接送</div> -->
                                                            <div class="txt_down_box">
                                                                <%-- <div class="date">
                                                                    08/04.07.14.15.16.17.20.21.22
                                                                </div> --%>
                                                                <div class="price">11,898</div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                    <a href="https://cs.sabretn.com.tw/artisan/search/?trip=Return&depCity=TPE&arrCity=FUK&deptDate=2023-06-03&retDate=2023-06-10&paxTypeADT=1&airlineCode=CI&classOfService=Y&stopCount=2"
                                                        target="_blank" class="Europe-box">
                                                        <div class="img_box">
                                                            <img src="./images/Fukuoka.jpg" alt="" />
                                                            <!-- <span class="place">高雄出發</span> -->
                                                        </div>
                                                        <div class="txt_box">
                                                            <div class="list-title">福岡</div>
                                                            <!-- <div class="remark">2日 | 六人成行、賓士接送</div> -->
                                                            <div class="txt_down_box">
                                                                <%-- <div class="date">
                                                                    08/04.07.14.15.16.17.20.21.22
                                                                </div> --%>
                                                                <div class="price">11,439</div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tabContent" id="Europe5">
                                            <div class="Europe-hidden">
                                                <div class="Europe-tool">
                                                    <a href="https://cs.sabretn.com.tw/artisan/search/?trip=Return&depCity=TPE&arrCity=SIN&deptDate=2023-05-16&retDate=2023-05-20&paxTypeADT=1&airlineCode=CI&classOfService=Y&stopCount=2"
                                                        target="_blank" class="Europe-box">
                                                        <div class="img_box">
                                                            <img src="./images/sin.jpg" alt="" />
                                                            <!-- <span class="place">高雄出發</span> -->
                                                        </div>
                                                        <div class="txt_box">
                                                            <div class="list-title">新加坡</div>
                                                            <!-- <div class="remark">2日 | 六人成行、賓士接送</div> -->
                                                            <div class="txt_down_box">
                                                                <%-- <div class="date">
                                                                    08/04.07.14.15.16.17.20.21.22
                                                                </div> --%>
                                                                <div class="price">10,300</div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                    <a href="https://cs.sabretn.com.tw/artisan/search/?trip=Return&depCity=TPE&arrCity=KUL&deptDate=2023-05-25&retDate=2023-05-30&paxTypeADT=1&airlineCode=CI&classOfService=Y&stopCount=2"
                                                        target="_blank" class="Europe-box">
                                                        <div class="img_box">
                                                            <img src="./images/KualaLumpur.jpg" alt="" />
                                                            <!-- <span class="place">高雄出發</span> -->
                                                        </div>
                                                        <div class="txt_box">
                                                            <div class="list-title">吉隆坡</div>
                                                            <!-- <div class="remark">2日 | 六人成行、賓士接送</div> -->
                                                            <div class="txt_down_box">
                                                                <div class="date">
                                                                    08/04.07.14.15.16.17.20.21.22
                                                                </div>
                                                                <div class="price">10,133</div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                    <a href="https://cs.sabretn.com.tw/artisan/search/?trip=Return&depCity=TPE&arrCity=BKK&deptDate=2023-06-06&retDate=2023-06-09&paxTypeADT=1&airlineCode=CI&classOfService=Y&stopCount=2"
                                                        target="_blank" class="Europe-box">
                                                        <div class="img_box">
                                                            <img src="./images/bkbk.jpg" alt="" />
                                                            <!-- <span class="place">高雄出發</span> -->
                                                        </div>
                                                        <div class="txt_box">
                                                            <div class="list-title">曼谷</div>
                                                            <!-- <div class="remark">2日 | 六人成行、賓士接送</div> -->
                                                            <div class="txt_down_box">
                                                                <%-- <div class="date">
                                                                    08/04.07.14.15.16.17.20.21.22
                                                                </div> --%>
                                                                <div class="price">12,198</div>
                                                            </div>
                                                        </div>
                                                    </a>
                                                    <a href="https://cs.sabretn.com.tw/artisan/search/?trip=Return&depCity=TPE&arrCity=HAN&deptDate=2023-05-26&retDate=2023-06-27&paxTypeADT=1&airlineCode=CI&classOfService=Y&stopCount=2"
                                                        target="_blank" class="Europe-box">
                                                        <div class="img_box">
                                                            <img src="./images/Hanoi.jpg" alt="" />
                                                            <!-- <span class="place">高雄出發</span> -->
                                                        </div>
                                                        <div class="txt_box">
                                                            <div class="list-title">河內</div>
                                                            <!-- <div class="remark">2日 | 六人成行、賓士接送</div> -->
                                                            <div class="txt_down_box">
                                                                <%-- <div class="date">
                                                                    08/04.07.14.15.16.17.20.21.22
                                                                </div> --%>
                                                                <div class="price">9,305</div>
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