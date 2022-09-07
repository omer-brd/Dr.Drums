<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="About2.aspx.cs" Inherits="Content_About2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../Style/About.css" rel="stylesheet" />
    <script src="../JS/About.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
</asp:Content>

