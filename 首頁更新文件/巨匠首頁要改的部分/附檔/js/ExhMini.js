$(document).ready(function() {
  $('.btn_label').click(function() {
    $(this).toggleClass('show');
    $(this).siblings('.btn_label').removeClass('show');
  });
});
