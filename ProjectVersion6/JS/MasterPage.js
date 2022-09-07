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
function ClickSubmit() {
    var check = true;
    check = Username() && check;
    check = Password() && check;
    if (check) {
        return true;
    }
    return false;
}
function Password() {
    var password = document.forms["form1"]["password"].value;
    if (password == "") {
        alert("password field is required");
        return false;
    }
    else if (password.length < 6) {
        alert("password must be at least 6 digits");
        return false;
    }
    else
        return true;
}
function Username() {
    var username = document.forms["form1"]["username"].value;
    var vertify = /^[a-zA-Z0-9]+$/.test(username);
    if (username == "") {
        alert("username field is required");
        return false;
    }
    else if (!vertify) {
        alert("not a vaild username");
        return false;
    }
    else 
        return true;
}
function SignUp() {
    window.open("SignUp2.aspx", "_self");
}