$(document).ready(function () {
    // 定义 currentMonth 和 currentYear 变量
    var currentMonth = 0;  // 将初始月份设为0，以确保在第一个月显示有数据的月份
    var currentYear = 2024; // 设定一个默认年份，你也可以根据实际情况设定

    // 初始显示第一筆資料的年月
    displayInitialMonth();

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
     
        // 更新日期内容
        $("#dateContent").text(year + " 年 " + month + " 月");

        // 隐藏所有日期内容
        $(".datemain-container").removeClass("active");

        // 显示对应年月的内容
        var targetContainer = $(".datemain-container[trip-date='" + year + "-" + month + "']");
       
        if (targetContainer.length > 0) {
            targetContainer.addClass("active");
        }
    }

    // 获取下一个月
    function getNextMonth() {
        for (var nextMonth = currentMonth + 1; ; nextMonth++) {
            var nextYear = currentYear;
    
            if (nextMonth > 12) {
                nextMonth = 1;
                nextYear++;
            }
    
            var targetContainer = $(".datemain-container[trip-date='" + nextYear + "-" + nextMonth + "']");
    
            if (targetContainer.length > 0) {
                currentMonth = nextMonth;
                currentYear = nextYear;
                displayMonth(currentYear, currentMonth);
                break;
            }
            
        }
    if (targetContainer.length ===0) {
        displayInitialMonth();
    }
      
     
    }

    // 获取上一个月
    function getPrevMonth() {
        for (var prevMonth = currentMonth - 1; ; prevMonth--) {
            var prevYear = currentYear;

            if (prevMonth < 1) {
                prevMonth = 12;
                prevYear--;
            }

            if ($(".datemain-container[trip-date='" + prevYear + "-" + prevMonth + "']").length > 0) {
                currentMonth = prevMonth;
                currentYear = prevYear;
                displayMonth(currentYear, currentMonth);
                break;
            }
        }
    }

    // 初始显示第一筆資料的年月
    function displayInitialMonth() {
        // 找到第一笔数据的年月
        var initialContainer = $(".datemain-container:first");
        var tripDate = initialContainer.attr("trip-date");
        var [year, month] = tripDate.split("-").map(Number);

        // 初始显示
        displayMonth(year, month);
    }
    
});
