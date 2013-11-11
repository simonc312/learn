

$('input[type="email"]').focus(function() {
  $(this).addClass("focus");
});
$('input[type="email"]').blur(function() {
  $(this).removeClass("focus");
});
