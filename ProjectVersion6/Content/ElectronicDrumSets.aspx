<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ElectronicDrumSets.aspx.cs" Inherits="Content_ElectronicDrumSets" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>Electrinic Drum Sets</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href='https://fonts.googleapis.com/css?family=Orbitron' rel='stylesheet' type='text/css'>
    <link href="../Style/shop2.css" rel="stylesheet" />
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
    <h2>Electrinic Drum Sets</h2>
    <table class="table" align="center">
          <tr class="noBorder">
            <td class="td">
                <h3>Roland V-Drums TD-50KVX Electronic Drum Set</h3>
                <img src="../Images/elset1.jpg" style="width:50%" height="350"/>
                <p class="size">Drum Module: TD-50</p>
                <p class="company">Company: Roland</p>
                <p class="price">price: $8,099</p>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
            </td>
            <td class="td">
                    <table align="center" class="innertable">
                    <tr class="innertr">
                        <td class="innertd">&nbsp;Snare: PD-140DS</td>
                    </tr>
                    <tr class="innertr2">
                        <td class="innertd">&nbsp;Mounted Tom: PD-108-BC</td>
                    </tr>
                    <tr class="innertr">
                        <td class="innertd">&nbsp;Floor Tom: PD-128-BC</td>
                    </tr>
                    <tr class="innertr2">
                        <td class="innertd">&nbsp;Floor Tom: PD-128-BC </td>
                    </tr>
                    <tr class="innertr">
                        <td class="innertd">&nbsp;Bass Drum: KD-220</td>
                    </tr>
                    <tr class="innertr2">
                        <td class="innertd">&nbsp;Hi Hat: VH-13</td>
                    </tr>
                    <tr class="innertr">
                        <td class="innertd">&nbsp;Crash: CY-14C</td>
                    </tr>
                    <tr class="innertr2">
                        <td class="innertd">&nbsp;Crash/Ride: CY15R</td>
                    </tr>
                    <tr class="innertr">
                        <td class="innertd">&nbsp;Ride: CY-18DR</td>
                    </tr>
                </table>
            </td>
          </tr>
    </table>
    <br />
        <table class="table" align="center">
          <tr class="noBorder">
            <td class="td">
                <h3>Yamaha DTX760K Electronic Drum Set</h3>
                <img src="../Images/elset2.jpg" style="width:70%" height="350"/>
                <p class="size">Drum Module: DTX700</p>
                <p class="company">Company: Yamaha</p>
                <p class="price">price: $3,449</p>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
            </td>
            <td class="td">
                    <table align="center" class="innertable">
                    <tr class="innertr">
                    <td class="innertd">&nbsp;Snare: XP120SD</td>
                    </tr>
                    <tr class="innertr2">
                        <td class="innertd">&nbsp;Mounted Tom: XP100T</td>
                    </tr>
                    <tr class="innertr">
                        <td class="innertd">&nbsp;Floor Tom: XP120T</td>
                    </tr>
                    <tr class="innertr2">
                        <td class="innertd">&nbsp;Bass Drum: KP100</td>
                    </tr>
                    <tr class="innertr">
                        <td class="innertd">&nbsp;Hi Hat: PCY135</td>
                    </tr>
                    <tr class="innertr2">
                        <td class="innertd">&nbsp;Crash: PCY135</td>
                    </tr>
                    <tr class="innertr">
                        <td class="innertd">&nbsp;Crash: PCY135</td>
                    </tr>
                    <tr class="innertr2">
                        <td class="innertd">&nbsp;Ride: RHH135</td>
                    </tr>
                </table>
            </td>
          </tr>
    </table>
    <br />
        <table class="table" align="center">
          <tr class="noBorder">
            <td class="td">
                <h3>Roland V-Drums Acoustic Design VAD503 Electronic Drum Set</h3>
                <img src="../Images/elset3.jpg" style="width:70%" height="350"/>
                <p class="size">Drum Module: TD-27</p>
                <p class="company">Company: Roland</p>
                <p class="price">price: $3,999</p>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
            </td>
            <td class="td">
                    <table align="center" class="innertable">
                    <tr class="innertr">
                        <td class="innertd">&nbsp;Snare: PD-140DS</td>
                    </tr>
                    <tr class="innertr2">
                        <td class="innertd">&nbsp;Mounted Tom: PDA100</td>
                    </tr>
                    <tr class="innertr">
                        <td class="innertd">&nbsp;Floor Tom: PDA140F</td>
                    </tr>
                    <tr class="innertr2">
                        <td class="innertd">&nbsp;Bass Drum: KD-200-MS</td>
                    </tr>
                    <tr class="innertr">
                        <td class="innertd">&nbsp;Bass Drum: VH-10 </td>
                    </tr>
                    <tr class="innertr2">
                        <td class="innertd">&nbsp;Hi Hat: VH-13</td>
                    </tr>
                    <tr class="innertr">
                        <td class="innertd">&nbsp;Crash: CY-14C-T </td>
                    </tr>
                    <tr class="innertr2">
                        <td class="innertd">&nbsp;Ride: CY-18DR</td>
                    </tr>
                </table>
            </td>
          </tr>
    </table>
</body>
</html>