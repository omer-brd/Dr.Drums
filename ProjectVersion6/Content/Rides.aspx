<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Rides.aspx.cs" Inherits="Content_Rides" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Rides</title>
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
    <h2>Rides</h2>
    <table align="center">
       <tr>
        <td>
            <h3>Sabian FRX Ride Cymbal</h3>
            <img src="../Images/ride1.jpg" style="width:80%" height="350"/>
            <p class="size">size: 20"</p>
            <p class="company">Company: Sabian</p>
            <p class="price">price: $384</p>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
        </td>
        <td>
            <h3>Paiste 2002 Ride Cymbal</h3>
            <img src="../Images/ride2.jpg" style="width:80%" height="350"/>
            <p class="size">size: 24"</p>
            <p class="company">Company: Paiste</p>
            <p class="price">price: $465</p>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
        </td>
        <td>
            <h3>Zildjian L80 Low Volume Ride Cymbal</h3>
            <img src="../Images/ride3.jpg" style="width:80%" height="350"/>
            <p class="size">size: 20"</p>
            <p class="company">Company: Zildjian</p>
            <p class="price">price: $139</p>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star"></span>
        </td>
      </tr>
      <tr>
        <td>
            <h3>Paiste Masters Dark Ride Cymbal</h3>
            <img src="../Images/ride4.jpg" style="width:80%" height="350"/>
            <p class="size">size: 20"</p>
            <p class="company">Company: Paiste</p>
            <p class="price">price: $440</p>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
        </td>
        <td>
            <h3>Meinl Cymbals Byzance Transition Ride Cymbal</h3>
            <img src="../Images/ride5.jpg" style="width:80%" height="350"/>
            <p class="size">size: 21"</p>
            <p class="company">Company: Meinl</p>
            <p class="price">price: $429</p>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
        </td>
        <td>
            <h3>Zildjian K Custom Hybrid Ride Cymbal</h3>
            <img src="../Images/ride6.jpg" style="width:80%" height="350"/>
            <p class="size">size: 20"</p>
            <p class="company">Company: Ludwig</p>
            <p class="price">price: $384</p>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star "></span>
            <span class="fa fa-star "></span>
        </td>
      </tr>
      <tr>
        <td>
            <h3>Sabian Artisan Medium Ride Cymbal</h3>
            <img src="../Images/ride7.jpg" style="width:80%" height="350"/>
            <p class="size">size: 22"</p>
            <p class="company">Company: Sabian</p>
            <p class="price">price: $599</p>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
        </td>
        <td>
            <h3>Meinl Cymbals Classics Custom Dark Crash-Ride Cymbal</h3>
            <img src="../Images/ride8.jpg" style="width:80%" height="350"/>
            <p class="size">size: 22"</p>
            <p class="company">Company: Meinl</p>
            <p class="price">price: $229</p>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star"></span>
        </td>
        <td>
            <h3>Sabian XSR Monarch Ride Cymbal</h3>
            <img src="../Images/ride9.jpg" style="width:80%" height="350"/>
            <p class="size">size: 20"</p>
            <p class="company">Company: Sabian</p>
            <p class="price">price: $194</p>
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