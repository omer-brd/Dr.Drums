<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Survey.aspx.cs" Inherits="Content_Survey" ClientIDMode="Static"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../Style/Survey.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="container" name="container" runat="server">
  <header class="header">
    <h1 id="title" class="text-center">Survey</h1>
    <p id="description" class="description text-center">
      Thank you for taking the time to help us improve the site.
    </p>
  </header>
    <div class="form-group">
      <label id="name-label" for="name">Name:</label>
      <input type="text" name="name" id="name" class="form-control" placeholder="Enter your name" required runat="server"/>
    </div>
    <div class="form-group">
      <label id="number-label" for="number">Age:</label>
      <input type="number" name="age" id="number" min="15" max="99" class="form-control" placeholder="Age" runat="server"/>
    </div>
    <div class="form-group">
      <p>Which option best describes your current role?</p>
      <select id="role" name="role" class="form-control" required runat="server">
        <option disabled selected >Select current role</option>
        <option value="Student" id="Student" name="Student" runat="server">Student</option>
        <option value="FullTimeJob" id="FullTimeJob" name="FullTimeJob" runat="server">Full Time Job</option>
        <option value="FullTimeLearner" runat="server">Full Time Learner</option>
          <option value="Other" runat="server">Other</option>
        <option value="PreferNo" runat="server">Prefer not to say</option>
      </select>
    </div>
    <div class="form-group">
      <p>
        What is your favorite music?
      </p>
      <select id="mostlike" name="mostlike" class="form-control" required runat="server">
        <option disabled selected>Select an option</option>
        <option value="Rock">Rock</option>
        <option value="Pop">Pop</option>
        <option value="Metal">Metal</option>
        <option value="Jazz">Jazz</option>
        <option value="Electronic">Electronic</option>
        <option value="Funk">Funk</option>
        <option value="Reggae">Reggae</option>
        <option value="Hip hop">Hip Hop</option>
      </select>
    </div>
    <div class="form-group">
      <p>Do you prefer electronic or acoustic drums?</p>
      <label>
      <input name="Both" id="Both" value="Both" type="radio" class="input-radio" runat="server"/>Both
      </label>
      <label>
      <input name="Acoustic" id="Acoustic" value="Acoustic" type="radio" class="input-radio" runat="server"/>Acoustic
      </label>
      <label>
      <input name="Electronic2" id="Electronic2" value="Electronic2" type="radio" class="input-radio" runat="server"/>Electronic
      </label>
    </div>
    <div class="form-group">
      <p>
        What is your favorite drum companies?
      </p>
      <label>
        <input name="Pearl" id="Pearl" value="Pearl" type="checkbox" class="input-checkbox" runat="server"/>Pearl
      </label>
      <label>
        <input name="DW" id="DW" value="DW" type="checkbox" class="input-checkbox" runat="server"/>DW
      </label>
      <label>
        <input name="Ludwig" id="Ludwig" value="Ludwig" type="checkbox" class="input-checkbox" runat="server"/>Ludwig
      </label>
      <label>
        <input name="Tama" id="Tama" value="Tama" type="checkbox" class="input-checkbox" runat="server"/>Tama
      </label>
      <label>
        <input name="Gretsch" id="Gretsch" value="Gretsch" type="checkbox" class="input-checkbox" runat="server"/>Gretsch
      </label>
      <label>
        <input name="Sonor" id="Sonor" value="Sonor" type="checkbox" class="input-checkbox" runat="server"/>Sonor
      </label>
    </div>
    <div class="form-group">
      <p>Would you recommend Dr. Drums to a friend?</p>
      <label>
      <input name="user-recommend" value="definitely" type="radio" class="input-radio" checked/>Definitely
      </label>
      <label>
      <input name="user-recommend" value="maybe" type="radio" class="input-radio"/>Maybe
      </label>
      <label>
      <input name="user-recommend" value="not-sure" type="radio" class="input-radio"/>Not sure
      </label>
    </div>
      <p>Any comments or suggestions?</p>
      <textarea id="comments" rows="5" cols="60" class="input-textarea" name="comment" placeholder="Enter your comment here..."></textarea>
    <br />
    <div class="form-group">
      <button type="submit" id="submit" name="submit" class="submit-button" runat="server">Submit</button>
    </div>
</div>
<div id="statistics" name="statistics" runat="server">
          <header class="header">
    <h1 class="text-center">Result</h1>
  </header>
    <div class="form-group">
      <p>Which option best describes your current role?</p>
        <label>Student: <%=Application["Student"] %></label><br />
        <label>Full Time Job: <%=Application["FullTimeJob"] %></label><br />
        <label>Full Time Learner: <%=Application["FullTimeLearner"] %></label><br />
    </div>
    <div class="form-group">
      <p>
        What is your favorite music?
      </p>
        <label>Rock: <%=Application["Rock"] %></label><br />
        <label>Pop: <%=Application["Pop"] %></label><br />
        <label>Metal: <%=Application["Metal"] %></label><br />
        <label>Jazz: <%=Application["Jazz"] %></label><br />
        <label>Electronic: <%=Application["Electronic"] %></label><br />
        <label>Funk: <%=Application["Funk"] %></label><br />
        <label>Reggae: <%=Application["Reggae"] %></label><br />
        <label>Hip Hop: <%=Application["Hip Hop"] %></label><br />
    </div>
    <div class="form-group">
      <p>Do you prefer electronic or acoustic drums?</p>
        <label>Both: <%=Application["Both"] %></label><br />
        <label>Electronic: <%=Application["Electronic2"] %></label><br />
        <label>Acoustic: <%=Application["Acoustic"] %></label><br />
    </div>
    <div class="form-group">
      <p>
        What is your favorite drum companies?
      </p>
      <label>Pearl: <%=Application["Pearl"] %></label><br />
      <label>DW: <%=Application["DW"] %></label><br />
      <label>Ludwig: <%=Application["Ludwig"] %></label><br />
      <label>Tama: <%=Application["Tama"] %></label><br />
      <label>Gretsch: <%=Application["Gretsch"] %></label><br />
      <label>Sonor: <%=Application["Sonor"] %></label><br />
    </div>
</div>
</asp:Content>

