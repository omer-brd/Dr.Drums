﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="Content_SignUp" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Sign up</title>
    <link href="../Style/SignUp.css" rel="stylesheet" />
    <script src="../JS/SignUp.js"></script>
</head>
<body>
    <br />
    <form name="PasswordForm" onsubmit="return ClickSubmit()">
        <table align="center">
            <caption>Sign up</caption>
            <tr>
                <td class="categories"> Username: </td>
                <td>
                    <input type="text" name="username" />
                </td>
                <td id="usernameVal" class="val"></td>
            </tr>
            <tr>
                <td class="categories"> Password: </td>
                <td>
                    <input type="password" name="password"  onkeyup="validatePassword(this.value);" />
                </td>
                <td id="passwordVal" class="val"></td>
            </tr>
            <tr>
                <td class="categories"> Confirm password: </td>
                <td>
                    <input type="password" name="confirm" />
                </td>
                <td id="confirmVal" class="val"></td>
            </tr>
            <tr>
                <td class="categories"> Email: </td>
                <td>
                    <input type="text" name="email" />
                </td>
                <td id="emailVal" class="val"></td>
            </tr>
            <tr>
                <td class="categories"> Phone Number: </td>
                <td>
                    <input type="text" name="phone" />
                </td>
                <td id="phoneVal" class="val"></td>
            </tr>
            <tr>
                <td class="categories"> Favorite Music: </td>
                <td>
                    <select name="music">
                        <option value="rock">Rock</option>
                        <option value="pop">Pop</option>
                        <option value="metal">Metal</option>
                        <option value="jazz">Jazz</option>
                        <option value="electronic">Electronic</option>
                        <option value="funk">Funk</option>
                        <option value="reggae">Reggae</option>
                        <option value="hip hop">Hip Hop</option>
                    </select>
                </td>
                <td id="musicVal" class="val"></td>
            </tr>
            <tr>
                <td id="categories"> Gender: </td>
                <td class="genderTd">
                    <input type="radio" name="gender" value="male" id="male"> Male <br />
                    <input type="radio" name="gender" value="female" id="female"> Female <br />
                    <input type="radio" name="gender" value="other" id="other"> Other <br />
                </td>
                <td id="radioVal" class="val"></td>
            </tr>
            <tr>
                <td id="categories"> Birthday: </td>
                <td>
                    <input type="date" name="birthday" />
                </td>
                <td id="birthdayVal" class="val"></td>
            </tr>
            <tr>
                <td id="categories" name="robot"></td>
                <td>
                    <div class="g-recaptcha" data-sitekey="6Le6WtYUAAAAAJ2izXZwba_tkSE9SHmljHw91BO4" data-callback="verifyCaptcha"></div>
                    <div id="g-recaptcha-error"></div>
                    <script src='https://www.google.com/recaptcha/api.js'></script>
                </td>
                <td id="robotVal" class="val"></td>
            </tr>
                     <tr>
                <td>
                    <input type="reset" value="Reset" name="reset" />
                </td>
                <td>
                    <input type="submit" value="Submit" name="submit"/>
                </td>
            </tr>
        </table>
        </form>
</body>
</html>
