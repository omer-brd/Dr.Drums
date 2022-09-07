<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Content_Admin" ClientIDMode="Static" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../Style/Admin.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Admin Page</h2>
    <div id="div1">
        Search by column: 
        <select id="Columns2" runat="server">
            <option value="Username">Username</option>
            <option value="Email">Email</option>
            <option value="Password">Password</option>
            <option value="All">All</option>
        </select>
        <input type="text" name="filter" id="filter" size="12"/> &nbsp &nbsp &nbsp
        <input type="button" value="Filter" name="btnFilter" id="btnFilter" onserverclick ="ClickFilter" runat="server" />
        <br />
        <label for="Columns">Sort by column:</label>
        <select id="Columns" runat="server">
            <option value="Username">Username</option>
            <option value="Email">Email</option>
            <option value="Password">Password</option>
            <option value="Admin">Admin</option>
            <option value="Birthday">Birthday</option>
            <option value="Phone">Phone</option>
            <option value="FavMusic">FavMusic</option>
            <option value="Gender">Gender</option>
        </select>
        <input type="radio" id="ASC" name="order" value="ASC" checked/>
        <label for="ASC">ASC</label>
        <input type="radio" id="DESC" name="order" value="DESC"/>
        <label for="DESC">DESC</label> &nbsp &nbsp &nbsp
        <input type="button" value="Sort" name="btnSort" id="Button1" runat="server" onserverclick="Click_Sort"/>
        <br />
        Delete selected row: &nbsp
        <input type="button" value="Delete" name="btnDelete" id="btnDelete" runat="server" onserverclick="Delete"/>
        <br />
        Edit selected row: &nbsp
         <input type="button" value="Edit" name="btnEdit" id="btnEdit" runat="server" onserverclick="Edit" />
    </div>
    <br />
    <div runat="server" id="tableDiv">
    </div>
    <br />
    <h3>Logged in visitors currently in site: <%=Application["loginvisitors"]%></h3>
    <h3>Total visitors in site: <%=Application["totalvisitors"]%></h3>
</asp:Content>

