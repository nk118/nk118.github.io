// 模拟从数据库获取的值，这里是一个字符串数组
    var databaseValue = ['4/26','、', '4/26','、', '4/26','、', '4/26', '、','4/26', '、','4/26','、', '4/26'];

    // 将数组中的所有字符串连接起来
    var concatenatedText = databaseValue.join('');

    // 处理总字符串的显示
    var truncatedText;
    if (concatenatedText.length > 30) {
        // 如果内容长度超过六个字符，截断内容并显示
        truncatedText = concatenatedText.substring(0, 30) + '...';
    } else {
        // 如果内容长度没有超过六个字符，直接显示内容
        truncatedText = concatenatedText;
    }

    // 获取所有的 .result 元素
    var resultDivs = document.querySelectorAll('.result');

    // 将处理后的文本赋值给每个 .result 元素
    resultDivs.forEach(function(resultDiv) {
        resultDiv.textContent = truncatedText;
    });