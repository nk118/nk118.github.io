// function showdate(){
//    let date = document.getElementById("tripdate");
//    let fix = $('.fix');
//    if (date.style.display === 'block') {
//         // 如果已经显示，则隐藏
//             date.style.display = 'none';
           
//             fix.removeClass('show');
           
//         } else {
//              // 如果隐藏，则显示
//              date.style.display = 'block';
//              fix.addClass('show');
//          }
      
//         }
function showdate() {
    let date = $("#tripdate");
    let fix = $('.fix');
    
    if (date.css('display') === 'block') {
        // 如果已经显示，则隐藏
        date.css('display', 'none');
        fix.removeClass('show');
    } else {
        // 如果隐藏，则显示
        date.css('display', 'block');
        fix.addClass('show');
    }
}
// }
// function showDate() {
//     let date = document.getElementById("tripdate");
//     let overlay = document.getElementById("overlay");

//     if (date.style.display === 'block') {
//         // 如果已经显示，则隐藏
//         date.style.display = 'none';
//         overlay.style.display = 'none';
//     } else {
//         // 如果隐藏，则显示
//         date.style.display = 'block';
//         overlay.style.display = 'block';
//     }
// }