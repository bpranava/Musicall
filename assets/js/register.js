$(document).ready(function() {
   // console.log("document is ready");
    $("#hideLogin").click(function() {
        $("#loginForm").hide();
        $("#registerForm").show();
    });

    $("#hideRegister").click(function() {
       // console.log("register  was pressed");
        $("#loginForm").show();
        $("#registerForm").hide();
    });
});