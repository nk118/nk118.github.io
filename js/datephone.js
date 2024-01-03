
// 模拟从数据库获取的值，这里是一个字符串数组
var databaseValue = ['04/26', '、', '04/26', '、', '04/26', '、', '04/26', '、', '04/26', '、', '04/26', '、', '04/26'];

// 将数组中的所有字符串连接起来
var concatenatedText = databaseValue.join('');

// 处理总字符串的显示
var truncatedText;

// 根据媒体查询应用不同的截断文本长度
if (window.innerWidth < 600) {
    truncatedText = concatenatedText.substring(0, 17) + '...'; // 在手机屏幕下只显示3个字符
} else {
    truncatedText = concatenatedText.substring(0, 35) + '...'; // 修改其他屏幕下的截断长度
}

// 获取所有的 .result 元素
var resultDivs = document.querySelectorAll('.result');

// 将处理后的文本赋值给每个 .result 元素
resultDivs.forEach(function (resultDiv) {
    resultDiv.textContent = truncatedText;
});
