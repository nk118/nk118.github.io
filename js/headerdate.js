$(document).ready(function () {
  // 初始化当前日期
  var currentDate = new Date();
  var currentMonth = currentDate.getMonth() + 1; // 月份是从0开始的，所以要加1
  var currentYear = currentDate.getFullYear();
  
  // 判断当前月份是否有数据，如果没有则向前寻找最近的有数据的月份
  while (!$(".datemain-container[trip-date='" + currentYear + "-" + currentMonth + "']").find('.datemain').length > 0) {
      currentMonth--;
      if (currentMonth < 1) {
          currentMonth = 12;
          currentYear--;
      }
  }

  displayMonth(currentYear, currentMonth);

  // 点击右箭头切换下一个月
  $("#rightArrow").on("click", function () {
      var nextMonth = currentMonth + 1;
      var nextYear = currentYear;

      while (!$(".datemain-container[trip-date='" + nextYear + "-" + nextMonth + "']").find('.datemain').length > 0) {
          nextMonth++;
          if (nextMonth > 12) {
              nextMonth = 1;
              nextYear++;
          }

          // 如果超过当前年份之后仍然没有找到有数据的月份，不执行切换操作
          if (nextYear > currentYear + 1) {
              return;
          }
      }

      currentMonth = nextMonth;
      currentYear = nextYear;
      displayMonth(currentYear, currentMonth);
  });

  // 点击左箭头切换上一个月
  $("#leftArrow").on("click", function () {
      var prevMonth = currentMonth - 1;
      var prevYear = currentYear;

      while (!$(".datemain-container[trip-date='" + prevYear + "-" + prevMonth + "']").find('.datemain').length > 0) {
          prevMonth--;
          if (prevMonth < 1) {
              prevMonth = 12;
              prevYear--;
          }

          // 如果超过当前年份之前仍然没有找到有数据的月份，不执行切换操作
          if (prevYear < currentYear - 1) {
              return;
          }
      }

      currentMonth = prevMonth;
      currentYear = prevYear;
      displayMonth(currentYear, currentMonth);
  });

  // 显示特定年月的内容
  function displayMonth(year, month) {
      // 更新日期内容
      $("#dateContent").text(year + "年" + month + "月");

      // 隐藏所有日期内容
      $(".datemain-container").removeClass("active");

      // 显示对应年月的内容（仅当有数据时）
      var targetContainer = $(".datemain-container[trip-date='" + year + "-" + month + "']");
      if (targetContainer.find('.datemain').length > 0) {
          targetContainer.addClass("active");
      }
  }
});
