<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="PasswordReset2.aspx.cs" Inherits="Content_PasswordReset2" ClientIDMode="Static" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../Style/PasswordReset.css" rel="stylesheet" />
    <script src="../JS/PasswordReset.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            <table align="center">
                <caption>Reset password</caption>
                <tr>
                    <td class="categories"> Username: </td>
                    <td>
                        <input class="inputs" type="text" name="username" id="username" />
                    </td>
                    <td id="usernameVal" class="val" runat="server"></td>
                </tr>
                <tr>
                    <td class="categories"> Password: </td>
                    <td>
                        <input class="inputs" type="text" id="password" name="password" onkeyup="validatePassword(this.value);" runat="server" />
                    </td>
                    <td id="passwordVal" class="val"></td>
                </tr>
                <tr>
                    <td class="categories"> Confirm password: </td>
                    <td>
                        <input class="inputs" type="password" name="confirm" id="confirm" />
                    </td>
                    <td id="confirmVal" class="val"></td>
                </tr>
                <tr>
                    <td class="categories"> Favorite Music: </td>
                    <td>
                        <select name="music" id="music">
                            <option value="rock">Rock</option>
                            <option value="pop">Pop</option>
                            <option value="metal">Metal</option>
                            <option value="jazz">Jazz</option>
                            <option value="electronic">Electronic</option>
                            <option value="funk">Funk</option>
                            <option value="jazz">Jazz</option>
                            <option value="reggae">Reggae</option>
                            <option value="hip hop">Hip Hop</option>
                        </select>
                    </td>
                    <td id="musicVal" class="val" runat="server"></td>
                </tr>
                <tr>
                    <td>
                        <input class="inputs" type="reset" value="Reset" />
                    </td>
                    <td>
                        <input class="inputs" type="submit" value="Submit" onclick="return ClickSubmit()"/>
                    </td>
                </tr>
        </table>
</asp:Content>

