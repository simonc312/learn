$(document).ready(function () {
  var urltabnames = ["home", "application", "dashboard", "about", "events", "sign_up", "donate", "admin"];
  for (var i = 0; i < urltabnames.length; i++) {
    if (window.location.href.indexOf(urltabnames[i]) > -1) {
      //alert(tabnames[i]);
      var id = "#" + urltabnames[i];
      $(id).css({
        "color": "gold",
        "font-weight": "bold",
        "border-bottom": "1px solid gold"
      });
      break;
    }
  }
});

function validateSignUpForm() {
  var email = document.getElementById("user_email").value;
  var atpos = email.indexOf("@");
  var dotpos = email.lastIndexOf(".");
  var pass = document.getElementById("user_password").value;
  var cpass = document.getElementById("user_password_confirmation").value;
  if (pass.length < 8) {
    alert("Password must be 8 characters or more");
    return false;
  }
  if (pass != cpass) {
    alert("Passwords must match");
    return false;
  }
  if (atpos < 1 || dotpos < atpos + 2 || dotpos + 2 >= x.length) {
    alert("Not a valid e-mail address");
    return false;
  }
}

function validateSignInForm() {
  var email = document.getElementById("user_email").value;
  var atpos = email.indexOf("@");
  var dotpos = email.lastIndexOf(".");
  var pass = document.getElementById("user_password").value;
  if (pass.length < 8) {
    alert("Incorrect password");
    return false;
  }
  if (atpos < 1 || dotpos < atpos + 2 || dotpos + 2 >= x.length) {
    alert("Not a valid e-mail address");
    return false;
  }


}
