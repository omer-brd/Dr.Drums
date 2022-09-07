<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HiHats.aspx.cs" Inherits="Content_HiHats" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Hi hats</title>
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
    <h2>Hi Hats</h2>
    <table align="center">
       <tr>
        <td>
            <h3>Paiste Formula 602 Modern Essentials Hi-hat Cymbals</h3>
            <img src="../Images/hihat1.jpg" style="width:80%" height="250"/>
            <p class="size">size: 15"</p>
            <p class="company">Company: Paiste</p>
            <p class="price">price: $620</p>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
        </td>
        <td>
            <h3>Sabian B8X Hi-hat Cymbals</h3>
            <img src="../Images/hihat2.jpg" style="width:80%" height="230"/>
            <p class="size">size: 14"</p>
            <p class="company">Company: Sabian</p>
            <p class="price">price: $110</p>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star"></span>
        </td>
        <td>
            <h3>Zildjian A Zildjian New Beat Hi-hat Cymbals</h3>
            <img src="../Images/hihat3.jpg" style="width:80%" height="250"/>
            <p class="size">size: 13"</p>
            <p class="company">Company: Zildjian</p>
            <p class="price">price: $1324</p>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star"></span>
        </td>
      </tr>
      <tr>
        <td>
            <h3>Meinl Cymbals Byzance Extra Dry Medium Thin Hi-hat Cymbals</h3>
            <img src="../Images/hihat4.jpg" style="width:80%" height="250"/>
            <p class="size">size: 16"</p>
            <p class="company">Company: Meinl</p>
            <p class="price">price: $589</p>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
        </td>
        <td>
            <h3>Sabian AAX X-Plosion Hi-hat Cymbals - Brilliant Finish</h3>
            <img src="../Images/hihat5.jpg" style="width:80%" height="270"/>
            <p class="size">size: 14"</p>
            <p class="company">Company: Sabian</p>
            <p class="price">price: $354</p>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star"></span>
        </td>
        <td>
            <h3>ZildjianK Custom Special Dry Hi-hat Cymbals</h3>
            <img src="../Images/hihat6.jpg" style="width:80%" height="250"/>
            <p class="size">size: 15"</p>
            <p class="company">Company: Ludwig</p>
            <p class="price">price: $529</p>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
        </td>
      </tr>
      <tr>
        <td>
            <h3>Paiste 900 Series Heavy Hi-hat Cymbals</h3>
            <img src="../Images/hihat7.jpg" style="width:80%" height="250"/>
            <p class="size">size: 15"</p>
            <p class="company">Company: Paiste</p>
            <p class="price">price: $260</p>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
        </td>
        <td>
            <h3>Meinl Cymbals Pure Alloy Medium Hi-hat Cymbals </h3>
            <img src="../Images/hihat8.jpg" style="width:80%" height="250"/>
            <p class="size">size: 14"</p>
            <p class="company">Company: Meinl</p>
            <p class="price">price: $329</p>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star"></span>
        </td>
        <td>
            <h3>Paiste 2002 Sound Edge Hi-hat Cymbals</h3>
            <img src="../Images/hihat9.jpg" style="width:80%" height="250"/>
            <p class="size">size: 14"</p>
            <p class="company">Company: Paiste</p>
            <p class="price">price: $400</p>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
        </td>
      </tr>
    </table>
</body>
</html>