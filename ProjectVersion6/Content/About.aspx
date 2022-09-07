<%@ Page Language="C#" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="Content_About" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>About</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href='https://fonts.googleapis.com/css?family=Orbitron' rel='stylesheet' type='text/css'>
    <link href="../Style/About.css" rel="stylesheet" />
    <link href="../Style/NavigationBar.css" rel="stylesheet" />
    <script src="../JS/About.js"></script>
    <script src="../JS/Clock.js"></script>
</head>
<body onload="startTime();">
    <h1 id="NavigationBar">
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
    <div class="divs">
        <h1 class="heads">About</h1>
        <p class="par">Dr. Drums is a professional drum store that sells acoustic drum sets, electronic drum sets, <br /> drum parts and hardware.</p>
        <h1 class="heads">Contact us</h1>
        <p class="par">Email: dr.drums2019@gmail.com<br />
           Phone number: 0543417809
        </p> <br />
    </div>
    <br />
    <div class="divs">
        <h1 class="heads">My favorite drummers</h1>
        <div class="slideshow-container">

        <div class="mySlides fade">
          <img src="../Images/johnbonham.jpg" style="width:100%" height="600" />
          <div class="text">John Bonham</div>
        </div>
        <div class="mySlides fade">
          <img src="../Images/philrudd.jpg" style="width:100%" height="600" />
          <div class="text">Phil Rudd</div>
        </div>
        <div class="mySlides fade">
          <img src="../Images/rickallen.jpg" style="width:100%" height="600" />
          <div class="text">Rick Allen</div>
        </div>
        <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
        <a class="next" onclick="plusSlides(1)">&#10095;</a>
        </div>
        <br>
        <div style="text-align:center">
          <span class="dot" onclick="currentSlide(1)"></span> 
          <span class="dot" onclick="currentSlide(2)"></span> 
          <span class="dot" onclick="currentSlide(3)"></span> 
        </div>
    </div>
</body>
</html>

