// Code By Webdevtrick ( https://webdevtrick.com )
"use strict";
var underlineMenuItems = document.querySelectorAll("ul-tab li");
underlineMenuItems[0].classList.add("active");
underlineMenuItems.forEach(function(item) {
  item.addEventListener("click", function() {
    underlineMenuItems.forEach(function(item) { return item.classList.remove("active"); });
    item.classList.add("active");
  });
});
