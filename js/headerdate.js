$(document).ready(function () {
    // 定义 currentMonth 和 currentYear 变量
    var currentMonth = new Date().getMonth() ; 
    var currentYear = new Date().getFullYear();

    // 初始显示第一筆資料的年月
    displayMonth(2024, 1); // 假设第一筆資料的年月是2024年1月

    // 点击右箭头切换下一个月
    $("#rightArrow").on("click", function () {
        getNextMonth();
    });

    // 点击左箭头切换上一个月
    $("#leftArrow").on("click", function () {
        getPrevMonth();
    });

    // 显示特定年月的内容
    function displayMonth(year, month) {
        console.log("Displaying Month: ", year, month);

        // 更新日期内容
        $("#dateContent").text(year + "年" + month + "月");

        // 隐藏所有日期内容
        $(".datemain-container").removeClass("active");

        // 显示对应年月的内容
        var targetContainer = $(".datemain-container[trip-date='" + year + "-" + month + "']");
        console.log("Target Container: ", targetContainer);
        if (targetContainer.length > 0) {
            targetContainer.addClass("active");
        }
    }

    // 获取下一个月
    function getNextMonth() {
        var nextMonth = currentMonth + 1;
        var nextYear = currentYear;

        if (nextMonth > 12) {
            nextMonth = 1;
            nextYear++;
        }

        currentMonth = nextMonth;
        currentYear = nextYear;
        displayMonth(currentYear, currentMonth);
    }

    // 获取上一个月
    function getPrevMonth() {
        var prevMonth = currentMonth - 1;
        var prevYear = currentYear;

        if (prevMonth < 1) {
            prevMonth = 12;
            prevYear--;
        }

        currentMonth = prevMonth;
        currentYear = prevYear;
        displayMonth(currentYear, currentMonth);
    }
});
