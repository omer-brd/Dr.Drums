<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Pedals.aspx.cs" Inherits="Content_Pedals" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Pedals</title>
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
    <h2>Pedals</h2>
    <table align="center">
       <tr>
        <td>
            <h3>Tama Dyna-Sync Single Bass Drum Pedal</h3>
            <img src="../Images/pedals1.jpg" style="width:60%" height="400"/>
            <p class="size">type: single</p>
            <p class="company">Company: Tama</p>
            <p class="price">price: $349</p>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star"></span>
        </td>
        <td>
            <h3>DW 5000 Series Accelerator Double Bass Drum Pedal</h3>
            <img src="../Images/pedals2.jpg" style="width:80%" height="350"/>
            <p class="size">type: double</p>
            <p class="company">Company: DW</p>
            <p class="price">price: $443</p>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
        </td>
        <td>
            <h3>Pearl P930 Longboard Bass Drum Pedal</h3>
            <img src="../Images/pedals3.jpg" style="width:60%" height="400"/>
            <p class="size">type: single</p>
            <p class="company">Company: Pearl</p>
            <p class="price">price: $99</p>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
        </td>
      </tr>
      <tr>
        <td>
            <h3>Sonor Giant Step Double Pedal</h3>
            <img src="../Images/pedals4.jpg" style="width:80%" height="350"/>
            <p class="size">type: double</p>
            <p class="company">Company: Sonor</p>
            <p class="price">price: $1299</p>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
        </td>
        <td>
            <h3>Tama HP600DTW Iron Cobra 600 Double Pedal</h3>
            <img src="../Images/pedals5.jpg" style="width:80%" height="350"/>
            <p class="size">type: double</p>
            <p class="company">Company: Tama</p>
            <p class="price">price: $279</p>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star "></span>
        </td>
        <td>
            <h3>DW 9000 Series Pedal - Double - Standard Footboard</h3>
            <img src="../Images/pedals6.jpg" style="width:80%" height="350"/>
            <p class="size">type: double</p>
            <p class="company">Company: DW</p>
            <p class="price">price: $649</p>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
        </td>
      </tr>
      <tr>
        <td>
            <h3>Pearl P-3002C Demon Chain Double Pedal</h3>
            <img src="../Images/pedals7.jpg" style="width:80%" height="330"/>
            <p class="size">type: double</p>
            <p class="company">Company: Pearl</p>
            <p class="price">price: $759</p>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
        </td>
        <td>
            <h3>Ludwig Atlas Pro Double Bass Drum Pedal</h3>
            <img src="../Images/pedals8.jpg" style="width:80%" height="330"/>
            <p class="size">type: double</p>
            <p class="company">Company: Ludwig</p>
            <p class="price">price: $399</p>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star checked"></span>
            <span class="fa fa-star"></span>
        </td>
        <td>
            <h3>DW DWCP3000 Kick Drum Pedal</h3>
            <img src="../Images/pedals9.jpg" style="width:60%" height="400"/>
            <p class="size">type: single</p>
            <p class="company">Company: DW</p>
            <p class="price">price: $149</p>
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