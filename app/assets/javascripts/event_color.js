$(document).ready(function () {
  $('.color').each(function () {
    $(this).css('background-color', $(this).attr('id'), 'font-size', 0);
  });
});
