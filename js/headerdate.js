document.addEventListener("DOMContentLoaded", function () {

  const dateContent = document.getElementById("dateContent");
  const leftArrow = document.getElementById("leftArrow");
  const rightArrow = document.getElementById("rightArrow");

// 設定月份
  const months = [
    { month: "2023年12月", containerId: "mon" },
    { month: "2024年1月", containerId: "mon" },
    { month: "2024年2月", containerId: "thu" },
    { month: "2024年3月", containerId: "thu" },

  ];

  // 初始索引
  let currentIndex = 2; // 初始为2024年2月

  // 更新显示的日期内容和相应的 datemain-container
  function updateContent() {
    dateContent.textContent = months[currentIndex].month;

    // 获取所有 datemain-container 元素并设置显示/隐藏
    const allContainers = document.querySelectorAll(".datemain-container");
    allContainers.forEach(container => {
      if (container.id === months[currentIndex].containerId) {
        container.style.display = "block";
      } else {
        container.style.display = "none";
      }
    });
  }

  // 左箭頭
  leftArrow.addEventListener("click", function () {
    currentIndex = (currentIndex - 1 + months.length) % months.length;
    updateContent();
  });

  // 右箭頭
  rightArrow.addEventListener("click", function () {
    currentIndex = (currentIndex + 1) % months.length;
    updateContent();
  });

  // 初始日期内容和 datemain-container
  updateContent();
});