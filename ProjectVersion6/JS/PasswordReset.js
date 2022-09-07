function ClickSubmit() {
    Username();
    Password();
    Confirm();
    if (Username() && Password() && Confirm()) {
        return true;
    }
    return false;
}
function validatePassword(password) {

    if (password.length == 0) {
        document.getElementById("passwordVal").innerHTML = "";
        return;
    }
    var matchedCase = new Array();
    matchedCase.push("[$@$!%*#?&]");
    matchedCase.push("[A-Z]");
    matchedCase.push("[0-9]");
    matchedCase.push("[a-z]");

    var ctr = 0;
    for (var i = 0; i < matchedCase.length; i++) {
        if (new RegExp(matchedCase[i]).test(password)) {
            ctr++;
        }
    }
    var color = "";
    var strength = "";
    switch (ctr) {
        case 0:
        case 1:
        case 2:
            strength = "Very Weak";
            color = "red";
            break;
        case 3:
            strength = "Medium";
            color = "orange";
            break;
        case 4:
            strength = "Strong";
            color = "green";
            break;
    }
    document.getElementById("passwordVal").innerHTML = strength;
    document.getElementById("passwordVal").style.color = color;
    if (strength == "Strong") {
        return true;
    }
    return false;
}
function Password() {
    var password = document.forms["form1"]["password"].value;
    if (password == "") {
        document.getElementById("passwordVal").style.color = "red";
        document.getElementById("passwordVal").innerHTML = "this field is required";
        return false;
    }
    else if (password.length < 6) {
        document.getElementById("passwordVal").style.color = "red";
        document.getElementById("passwordVal").innerHTML = "password must be at least 6 digits";
        return false;
    }
    else if (!validatePassword(password)) {
        document.getElementById("passwordVal").style.color = "red";
        document.getElementById("passwordVal").innerHTML = "password must be strong";
        return false;
    }
    else {
        document.getElementById("passwordVal").innerHTML = "";
        return true;
    }
}
function Confirm() {
    var confirm = document.forms["form1"]["confirm"].value;
    var password = document.forms["form1"]["password"].value;
    if (confirm == "") {
        document.getElementById("confirmVal").innerHTML = "this field is required";
        return false;
    }
    else if (confirm != password) {
        document.getElementById("confirmVal").innerHTML = "confirm does not match password";
        return false;
    }
    else {
        document.getElementById("confirmVal").innerHTML = "";
        return true;
    }
}
function Username() {
    var username = document.forms["form1"]["username"].value;
    var vertify = /^[a-zA-Z0-9]+$/.test(username);
    if (username == "") {
        document.getElementById("usernameVal").innerHTML = "this field is required";
        return false;
    }
    else if (username.length < 2) {
        document.getElementById("usernameVal").innerHTML = "username must be at least 2 digits";
        return false;
    }
    else if (!vertify) {
        document.getElementById("usernameVal").innerHTML = "username must contain only numbers and letters";
        return false;
    }
    else {
        document.getElementById("usernameVal").innerHTML = "";
        return true;
    }
}