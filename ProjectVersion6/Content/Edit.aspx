<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Edit.aspx.cs" Inherits="Content_Edit" ClientIDMode="Static" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server" >
    <link href="../Style/SignUp.css" rel="stylesheet" />
    <script src="../JS/SignUp.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <table align="center">
            <caption>Edit User</caption>
            <tr>
                <td class="categories"> Username: </td>
                <td>
                    <input class="inputs" type="text" name="username" id="username" runat="server"/>
                </td>
                <td id="usernameVal" class="val" runat="server"></td>
            </tr>
            <tr>
                <td class="categories"> Password: </td>
                <td>
                    <input class="inputs" type="text" name="password" id="password" runat="server" onkeyup="validatePassword(this.value);" />
                </td>
                <td id="passwordVal" class="val"></td>
            </tr>
            <tr>
                <td class="categories"> Confirm password: </td>
                <td>
                    <input class="inputs" type="password" name="confirm" />
                </td>
                <td id="confirmVal" class="val"></td>
            </tr>
            <tr>
                <td class="categories"> Email: </td>
                <td>
                    <input class="inputs" type="text" name="email" id="email" runat="server"/>
                </td>
                <td id="emailVal" class="val" runat="server"></td>
            </tr>
            <tr>
                <td class="categories"> Phone Number: </td>
                <td>
                    <input class="inputs" type="text" name="phone" id="phone" runat="server"/>
                </td>
                <td id="phoneVal" class="val"></td>
            </tr>
            <tr>
                <td class="categories"> Favorite Music: </td>
                <td>
                    <select name="music" id="music" runat="server">
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
                <td class="categories"> Gender: </td>
                <td class="genderTd">
                    <input class="inputs" type="radio" name="gender" value="male" id="male" runat="server"> Male <br />
                    <input class="inputs" type="radio" name="gender" value="female" id="female" runat="server"> Female <br />
                    <input class="inputs" type="radio" name="gender" value="other" id="other" runat="server"> Other <br />
                </td>
                <td id="radioVal" class="val"></td>
            </tr>
            <tr>
                <td class="categories"> Birthday: </td>
                <td>
                    <input class="inputs" type="date" name="birthday" id="birthday" runat="server" />
                </td>
                <td id="birthdayVal" class="val"></td>
            </tr>
            <tr name="adminDiv" id="adminDiv" runat="server">
                <td class="categories"> Admin: </td>
                <td>
                    <select name="admin" id="admin" runat="server">
                        <option value="false">False</option>
                        <option value="true">True</option>
                    </select>
                </td>
                <td id="adminVal" class="val"></td>
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
                    <input class="inputs" type="reset" value="Reset" name="reset" />
                </td>
                <td>
                    <input class="inputs" type="submit" value="Submit" name="submit" id="submit" onclick="return ClickSubmit()" runat="server" />
                </td>
            </tr>
        </table>
</asp:Content>