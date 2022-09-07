function ClickSubmit() {
    Username();
    Password(); 
    Confirm();
    Email();
    Phone();
    Radio();
    Birthday();
    Robot();
    if (Username() && Password() && Confirm() && Email() && Phone() && Radio() && Birthday() && Robot()) {
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
    if (strength = "Strong")
        return true;
    return false;
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

function Email() {
    var email = document.forms["form1"]["email"].value;
    var vertify = /^[.@a-zA-Z0-9_-]+$/.test(email);
    var counter = 0, counter2 = 0;
    for (var i = 0; i < email.length; i++) {
        if (email[i] == '@')
            counter += 1;
    }
    for (var i = 0; i < email.length; i++) {
        if (email[i] == '@') {
            if (email[i + 1] == '.') {

            }
        }
    }
    if (email == "") {
        document.getElementById("emailVal").innerHTML = "this field is required";
        return false;
    }
    else if (!vertify) {
        document.getElementById("emailVal").innerHTML = "email must contain only numbers, letters, hyphen and underscore";
        return false;
    }
    else if (counter != 1) {
        document.getElementById("emailVal").innerHTML = "email must contain one '@'";
        return false;
    }
    else if (email.indexOf('@') + 1 >= email.lastIndexOf('.')) {
        document.getElementById("emailVal").innerHTML = "the last '.' must be at after the last '@'";
        return false;
    }
    else if (email.length - 1 == email.lastIndexOf('.')) {
        document.getElementById("emailVal").innerHTML = "the last '.' must not be the last character";
        return false;
    }
    else if (email.indexOf('.') == email.indexOf('@') + 1) {
        document.getElementById("emailVal").innerHTML = "'.' must not be onward '@'";
        return false;
    }
    else {
        document.getElementById("emailVal").innerHTML = "";
        return true;
    }
}

function Phone() {
    var phone = document.forms["form1"]["phone"].value;
    var vertify = /^[0-9]+$/.test(phone);
    var vertify2 = phone.substring(0, 2) == "05";
    if (phone == "") {
        document.getElementById("phoneVal").innerHTML = "this field is required";
        return false;
    }
    else if (phone.length != 10) {
        document.getElementById("phoneVal").innerHTML = "phone number must be 10 digits";
        return false;
    }
    else if (!vertify) {
        document.getElementById("phoneVal").innerHTML = "phone number must be only numbers";
        return false;
    }
    else if (!vertify2) {
        document.getElementById("phoneVal").innerHTML = "not a vaild phone number";
        return false;
    }
    else {
        document.getElementById("phoneVal").innerHTML = "";
        return true;
    }
}

function Radio() {
    var vertify = document.getElementById("male").checked || document.getElementById("female").checked || document.getElementById("other").checked;
    if (!vertify) {
        document.getElementById("radioVal").innerHTML = "this field is required";
        return false;
    }
    else {
        document.getElementById("radioVal").innerHTML = "";
        return true;
    }
}

function Birthday() {
    var birthday = document.forms["form1"]["birthday"].value;
    var today = new Date();
    var year = today.getFullYear();
    var vertify = birthday.substring(0, 4) > year - 15;
    if (birthday == "") {
        document.getElementById("birthdayVal").innerHTML = "this field is required";
        return false;
    }
    else if (vertify) {
        document.getElementById("birthdayVal").innerHTML = "you must be at least 15 years old to enter this site";
        return false;
    }
    else {
        document.getElementById("birthdayVal").innerHTML = "";
        return true;
    }
}

function Robot() {
    var response = grecaptcha.getResponse();
    if (response.length == 0) {
        document.getElementById("robotVal").innerHTML = "this field is required";
        return false;
    }
    else {
        document.getElementById("robotVal").innerHTML = "";
        return true;
    }  
}