<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Snares.aspx.cs" Inherits="Content_Snares" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Snares</title>
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
    <h2>Snares</h2>
    <table align="center">
       <tr>
        <td>
            <h3>Ludwig Supralite Snare Drum</h3>
            <img src="../Images/snare1.jpg" style="width:80%" height="250"/>
            <p class="size">size: 5.5" x 14"</p>
            <p class="company">Company: Ludwig</p>
            <p class="price">price: $199</p>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
        </td>
        <td>
            <h3>DW Collector's Series Exotic Snare Drum</h3>
            <img src="../Images/snare2.jpg" style="width:80%" height="300"/>
            <p class="size">size: 8" x 14"</p>
            <p class="company">Company: DW</p>
            <p class="price">price: $929</p>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
        </td>
        <td>
            <h3>Pearl S1330B Piccolo Snare</h3>
            <img src="../Images/snare3.jpg" style="width:80%" height="200"/>
            <p class="size">size: 3" x 13"</p>
            <p class="company">Company: Pearl</p>
            <p class="price">price: $165</p>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
        </td>
      </tr>
      <tr>
        <td>
            <h3>Tama Starphonic Series Snare Drum</h3>
            <img src="../Images/snare4.jpg" style="width:80%" height="270"/>
            <p class="size">size: 6" x 14"</p>
            <p class="company">Company: Tama</p>
            <p class="price">price: $549</p>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
        </td>
        <td>
            <h3>Ludwig Legacy Mahogany "Jazz Fest" Snare Drum</h3>
            <img src="../Images/snare5.jpg" style="width:80%" height="270"/>
            <p class="size">size: 5.5" x 14"</p>
            <p class="company">Company: Ludwig</p>
            <p class="price">price: $769</p>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
        </td>
        <td>
            <h3>Ludwig Supraphonic LM402 Snare Drum</h3>
            <img src="../Images/snare6.jpg" style="width:80%" height="300"/>
            <p class="size">size: 6.5" x 14"</p>
            <p class="company">Company: Ludwig</p>
            <p class="price">price: $569</p>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
        </td>
      </tr>
      <tr>
        <td>
            <h3>Sonor Benny Greb Signature Snare</h3>
            <img src="../Images/snare7.jpg" style="width:80%" height="250"/>
            <p class="size">size: 	5.75" x 13"</p>
            <p class="company">Company: Sonor</p>
            <p class="price">price: $899</p>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
        </td>
        <td>
            <h3>PDP LTD Classic Wood Hoop Snare</h3>
            <img src="../Images/snare8.jpg" style="width:80%" height="300"/>
            <p class="size">size: 7" x 14"</p>
            <p class="company">Company: PDP</p>
            <p class="price">price: $229</p>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star"></span>
        </td>
        <td>
            <h3>Gretsch Drums Hammered Black Steel Snare Drum</h3>
            <img src="../Images/snare9.jpg" style="width:80%" height="270"/>
            <p class="size">size: 6.5" x 14"</p>
            <p class="company">Company: Gretsch</p>
            <p class="price">price: $349</p>
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