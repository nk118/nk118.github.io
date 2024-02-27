let date = $("#tripdate");
let overlay = $("#overlay");

function showdate() {
    if (date.css('display') === 'block') {
        // 如果已经显示，则隐藏
        hideDateWithOverlay(date, overlay);
    } else {
        // 如果隐藏，则显示
        showDateWithOverlay(date, overlay);

        // 在这里设置你想要的背景颜色
        $("#overlay").css("background-color", "#99999999");

     
    }
}

function hideDateWithOverlay(date, overlay) {
    date.fadeOut();
    overlay.fadeOut();
    date.removeClass('show');
    overlay.removeClass('show');
    // 在这里重置背景颜色为原始颜色
    $("#overlay").css("background-color", "");
}

function showDateWithOverlay(date, overlay) {
    date.fadeIn();
    overlay.fadeIn();
    date.addClass('show');
    overlay.addClass('show');
}

$(document).ready(function () {
    $("#overlay").addClass('show');
});
$(".closeButton").on("click", function () {
     hideDateWithOverlay(date, overlay);
 });
 $(".overlay").on("click", function () {
    hideDateWithOverlay(date, overlay);
});
