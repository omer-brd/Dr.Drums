<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Toms.aspx.cs" Inherits="Content_Toms" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Toms</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href='https://fonts.googleapis.com/css?family=Orbitron' rel='stylesheet' type='text/css'>
    <link href="../Style/Shop.css" rel="stylesheet" />
    <link href="../Style/NavigationBar.css" rel="stylesheet" />
    <script src="../JS/Clock.js"></script>
</head>
<body onload="startTime();">
        <h1>
        <b> Dr. Drums </b> drum store
        <p id="clock"></p>
    </h1>
    <ul>
        <li><a href="Home.aspx">Home</a></li>
        <li><a href="SignUp.aspx">Sign Up</a></li>
        <li><a href="PasswordReset.aspx">Reset Password</a></li>
        <li><a href="ReleventSites.aspx">Relevent Sites</a></li>
        <li><a href="About.aspx">About</a></li>
    </ul>
    <h2>Toms</h2>
    <table align="center">
       <tr>
        <td>
            <h3>Ludwig Classic Maple Mounted Tom</h3>
            <img src="../Images/tom1.jpg" style="width:80%" height="300"/>
            <p class="size">size: 7" x 8"</p>
            <p class="company">Company: Ludwig</p>
            <p class="price">price: $329</p>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
        </td>
        <td>
            <h3>Tama Starclassic Maple Mounted Tom </h3>
            <img src="../Images/tom2.jpg" style="width:80%" height="290"/>
            <p class="size">size: 10" x 12"</p>
            <p class="company">Company: Tama</p>
            <p class="price">price: $585</p>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star"></span>
        </td>
        <td>
            <h3>Pearl Export EXX Floor Tom</h3>
            <img src="../Images/tom3.jpg" style="width:80%" height="400"/>
            <p class="size">size: 14" x 14"</p>
            <p class="company">Company: Pearl</p>
            <p class="price">price: $172</p>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star"></span>
        </td>
      </tr>
      <tr>
        <td>
            <h3>DW Design Series Clear Acrylic Tom</h3>
            <img src="../Images/tom4.jpg" style="width:80%" height="270"/>
            <p class="size">size: 7" x 8"</p>
            <p class="company">Company: DW</p>
            <p class="price">price: $189</p>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
        </td>
        <td>
            <h3>Sonor SQ1 Mounted Tom </h3>
            <img src="../Images/tom5.jpg" style="width:80%" height="290"/>
            <p class="size">size: 8" x 12"</p>
            <p class="company">Company: Sonor</p>
            <p class="price">price: $565</p>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
        </td>
        <td>
            <h3>Mapex Armory Mounted Tom</h3>
            <img src="../Images/tom6.jpg" style="width:80%" height="270"/>
            <p class="size">size: 8" x 7"</p>
            <p class="company">Company: Mapex</p>
            <p class="price">price: $159</p>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
        </td>
      </tr>
      <tr>
        <td>
            <h3>Sonor SQ1 Floor Tom</h3>
            <img src="../Images/tom7.jpg" style="width:80%" height="400"/>
            <p class="size">size: 14" x 13"</p>
            <p class="company">Company: Sonor</p>
            <p class="price">price: $699</p>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
        </td>
        <td>
            <h3>Ludwig Vistalite Tom</h3>
            <img src="../Images/tom8.jpg" style="width:80%" height="270"/>
            <p class="size">size: 10" x 14"</p>
            <p class="company">Company: Ludwig</p>
            <p class="price">price: $639</p>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
        </td>
        <td>
            <h3>Yamaha Recording Custom Floor Tom</h3>
            <img src="../Images/tom9.jpg" style="width:80%" height="400"/>
            <p class="size">size: 13" x 14"</p>
            <p class="company">Company: Yamaha</p>
            <p class="price">price: $725</p>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star "></span>
            <span class="fa fa-star "></span>
        </td>
      </tr>
    </table>
</body>
</html>