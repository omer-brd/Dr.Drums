function startTime() {
    var today = new Date();
    var h = today.getHours();
    var m = today.getMinutes();
    m = checkTime(m);
    h = checkTime(h);
    document.getElementById('clock').innerHTML =
        h + ":" + m;
    var t = setTimeout(startTime, 500);
}
function checkTime(i) {
    if (i < 10) { i = "0" + i };
    return i;
}
function greeting() {
    setTimeout(function () {
        var today = new Date();
        var h = today.getHours();
        if (h <= 12 && h > 3)
            alert("good morning");
        else if (h <= 17 && h > 12)
            alert("good afternoon");
        else if (h <= 21 && h > 17)
            alert("good evening");
        else
            alert("good night");
    }, 300);
}
function ClickSubmit() {
    Password();
    Email();

    if (Password() && Email()) {
        alert("welcome back");
        return true;
    }
    return false;
}
function Password() {
    var password = document.forms["PasswordForm"]["password"].value;
    if (password == "") {
        alert("this field is required");
        return false;
    }
    else if (password.length < 6) {
        alert("password must be at least 6 digits");
        return false;
    }
    else 
        return true;
}
function Email() {
    var email = document.forms["PasswordForm"]["email"].value;
    var vertify = /^[.@a-zA-Z0-9_-]+$/.test(email);
    var counter = 0;
    for (var i = 0; i < email.length; i++) {
        if (email[i] == '@')
            counter += 1;
    }
    if (email == "") {
        alert("this field is required");
        return false;
    }
    else if (!vertify || counter > 1 || email.indexOf('@') + 1 >= email.lastIndexOf('.')) {
        alert("not a vaild email");
        return false;
    }
    else {
        return true;
    }
}
