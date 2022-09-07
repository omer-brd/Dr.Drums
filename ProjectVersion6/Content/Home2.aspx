<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Home2.aspx.cs" Inherits="Content_Home2" ClientIDMode="Static"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../Style/Home.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="btns1" class="btn-group" runat="server">
        <a href="Snares2.aspx"><button> Snares </button></a>
        <a href="Toms2.aspx"><button> Toms </button></a>
        <a href="BassDrum2.aspx"><button> Bass drums </button></a>
        <a href="HiHats2.aspx"><button> Hi hats </button></a>
        <a href="Crashes2.aspx"><button> Crashes </button></a>
        <a href="Rides2.aspx"><button> Rides </button></a>
        <a href="Pedals2.aspx"><button> Pedals </button></a>
        <a href="Stands2.aspx"><button> Stands </button></a>
    </div>
    <div id="btns2" class="btn-group2" runat="server">
        <a href="AcousticDrumSets2.aspx"><button> Acoustic drum sets </button></a>
        <a href="ElectronicDrumSets2.aspx"><button> Electronic drum sets </button></a>
    </div>
    <div id="warning" runat="server" align="center">
        <br /><br /><br /><br /><br /><br />
        <h2>Please log in to see the content of this site</h2>
    </div>
</asp:Content>
