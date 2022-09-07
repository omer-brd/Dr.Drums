<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ReleventSites.aspx.cs" Inherits="Content_ReleventSites" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Relevent Sites</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href='https://fonts.googleapis.com/css?family=Orbitron' rel='stylesheet' type='text/css'>
    <link href="../Style/ReleventSites.css" rel="stylesheet" />
    <link href="../Style/NavigationBar.css" rel="stylesheet" />
    <script src="../JS/Clock.js"></script>
</head>
<body onload="startTime();">
    <h1 id="NavigationBar">
        <b> Dr. Drums </b> drum store
        <p id="clock"></p>
    </h1>
    <ul >
        <li><a href="Home.aspx">Home</a></li>
        <li><a href="SignUp.aspx">Sign Up</a></li>
        <li><a href="PasswordReset.aspx">Reset Password</a></li>
        <li><a href="ReleventSites.aspx">Relevent Sites</a></li>
        <li><a href="About.aspx">About</a></li>
    </ul>
    <div>
        <h1 class="heads">Ludwig <img src="../Images/ludwiglogo.png" width="150" height="50" hspace="20" /></h1> 
        <p class="par">website: <a href="https://www.ludwig-drums.com/" target="_blank">ludwig</a></p> <br />
        <p class="par">Ludwig Drums is a US musical instruments manufacturers, focused on percussion. The brand achieved significant popularity in the 1960s due to the endorsement of the Beatles <br /> drummer Ringo Starr.<br />
           Products manufactured by Ludwig include drum kits and hardware. The company also commercialises other percussion instruments (from the Muser Mallet Company acquired in 1965) <br />such as marimbas, vibraphones, xylophones and bar chimes</p> <br />
        <p class="par">
            <img src="../Images/ludwigset1.jpg" width="300" height="200" hspace="80"/>
            <img src="../Images/ludwigset2.jpg" width="200" height="200" hspace="80"/> 
            <img src="../Images/ludwigset3.jpg" width="300" height="200" hspace="80"/>
        </p> <br />
    </div>
    <div>
        <h1 class="heads">Pearl<img src="../Images/pearllogo.png" width="100" height="50" hspace="20" /></h1> 
        <p class="par">website: <a href="https://pearldrum.com/" target="_blank">pearl</a></p> <br />
        <p class="par">Pearl Corporation is organized and functions as a wholesale distributor of drums, percussion musical instruments and flutes for the United States. <br />
           The majority of drums and related items are manufactured by Pearl Musical Instrument company and imported directly from company owned factories located in Taiwan and China. </p> <br />
        <p class="par">
            <img src="../Images/pearlset1.jpg" width="200" height="200" hspace="80" />
            <img src="../Images/pearlset2.jpg" width="300" height="200" hspace="80" />
            <img src="../Images/pearlset3.jpg" width="200" height="200" hspace="80" />
        </p> <br />
    </div>
    <div>
        <h1 class="heads">Sonor<img src="../Images/sonorlogo.png" width="200" height="40" hspace="20" /></h1> 
        <p class="par">website: <a href="https://www.sonor.com/" target="_blank">sonor</a></p> <br />
        <p class="par">Sonor is a German musical instrument manufacturing company headquartered in Berlin. Having established 1875, it is one of the oldest percussion companies in the world. <br /> Sonor currently manufactures drum kits and hardware. Apart from drum kits, Sonor also manufactured a wide range of other percussion instruments through its history.<br /> 
           Some of them were frame drums, bongo drums, djembes, Cajons, timbales, congas, tambourines, maracas, guiros, glockenspiel, cymbals and mallets.</p> <br />
        <p class="par">
            <img src="../Images/sonorset1.jpg" width="250" height="200" hspace="80" />
            <img src="../Images/sonorset2.jpg" width="300" height="200" hspace="80" />
            <img src="../Images/sonorset3.jpg" width="300" height="200" hspace="80" />
        </p> <br />
    </div>
    <div>
        <h1 class="heads">DW drums<img src="../Images/dwlogo.png" width="100" height="50" hspace="20" /></h1> 
        <p class="par">website: <a href="http://www.dwdrums.com/" target="_blank">dw drums</a></p> <br />
        <p class="par">Drum Workshop (also known as DW Drums or DW) is an American drum kit and hardware manufacturing company based in Oxnard, California. Current products by DW include <br /> drum kits, snare drums, hardware and bass pedals.<br />
           Drum Workshop was founded in 1972 as a teaching studio by Don Lombardi. It originally offered private lessons and the occasional workshop. Lombardi, along with student John Good, began a small drum equipment sales operation to cover the facility's operation costs.</p> <br />
        <p class="par">
            <img src="../Images/dwset1.jpg" width="275" height="200" hspace="80" />
            <img src="../Images/dwset2.jpg" width="300" height="200" hspace="80" />
            <img src="../Images/dwset3.jpg" width="275" height="200" hspace="80" />
        </p> <br />
    </div>
</body>
</html>

