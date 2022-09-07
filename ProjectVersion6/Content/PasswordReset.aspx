<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PasswordReset.aspx.cs" Inherits="Content_PasswordReset" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reset Password</title>
    <link href="../Style/PasswordReset.css" rel="stylesheet" />
    <script src="../JS/PasswordReset.js"></script>
</head>
<body>
    <br />
    <form name="PasswordForm" onsubmit="return ClickSubmit ()">
        <table align="center">
                <caption>Reset password</caption>
                <tr>
                    <td class="categories"> Username: </td>
                    <td>
                        <input type="text" name="username" />
                    </td>
                    <td id="usernameVal" class="val"></td>
                </tr>
                <tr>
                    <td class="categories"> Email: </td>
                    <td>
                        <input type="text" name="email" />
                    </td>
                    <td id="emailVal" class="val"></td>
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
                            <option value="jazz">Jazz</option>
                            <option value="reggae">Reggae</option>
                            <option value="hip hop">Hip Hop</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="reset" value="Reset" />
                    </td>
                    <td>
                        <input type="submit" value="Submit" />
                    </td>
                </tr>
        </table>

</body>
</html>
