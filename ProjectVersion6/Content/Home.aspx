<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Content_Home" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Dr. Drums</title>
    <link href="../Style/Home.css" rel="stylesheet" />
    <link href="../Style/NavigationBar.css" rel="stylesheet" />
    <link href='https://fonts.googleapis.com/css?family=Orbitron' rel='stylesheet' type='text/css'>
    <script src="../JS/Home.js"></script>
</head>
<body onload="greeting();startTime();">
    <h1>
        <b> Dr. Drums </b> drum store
        <a>
            <br>
            <form name="PasswordForm" onsubmit="return ClickSubmit ()">
                Email:
                <input type="email" name="email" size="25">
                <br>
                Password:
                <input type="password" name="password" size="20">
                <br>
                <input type="submit" value="Log in">
                <br>
            </form>
                 Don't have an account?
                <button onclick="SignUp();"> Sign up </button>
        </a>
        <p id="clock"></p>
    </h1>
    <ul >
        <li><a href="Home.aspx">Home</a></li>
        <li><a href="SignUp.aspx">Sign Up</a></li>
        <li><a href="PasswordReset.aspx">Reset Password</a></li>
        <li><a href="ReleventSites.aspx">Relevent Sites</a></li>
        <li><a href="About.aspx">About</a></li>
    </ul>
    <div class="btn-group">
        <a href="Snares.aspx"><button> Snares </button></a>
        <a href="Toms.aspx"><button> Toms </button></a>
        <a href="BassDrum.aspx"><button> Bass drums </button></a>
        <a href="HiHats.aspx"><button> Hi hats </button></a>
        <a href="Crashes.aspx"><button> Crashes </button></a>
        <a href="Rides.aspx"><button> Rides </button></a>
        <a href="Pedals.aspx"><button> Pedals </button></a>
        <a href="Stands.aspx"><button> Stands </button></a>
    </div>
    <div class="btn-group2">
        <a href="AcousticDrumSets.aspx"><button> Acoustic drum sets </button></a>
        <a href="ElectronicDrumSets.aspx"><button> Electronic drum sets </button></a>
    </div>
</body>
</html>
