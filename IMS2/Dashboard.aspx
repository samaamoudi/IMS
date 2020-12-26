<%@ Page Title="" Language="C#" MasterPageFile="~/CaseHandler.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="IMS2.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
* {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}

/* Float four columns side by side */
.column {
  float: left;
  width: 25%;
  padding: 0 10px;
}

/* Remove extra left and right margins, due to padding */
.row {margin: 0 -5px;}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive columns */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
}

/* Style the counter cards */
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  padding: 16px;
  text-align: center;
  background-color: #f1f1f1;
}
</style>


<h2>Dashboard</h2>


<div class="row">
  <div class="column">
    <div class="card">
      <h3>Total Cases</h3>
      <p><asp:Label ID="lb1" runat="server" Text=""></asp:Label>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <h3>Total Legal and IA Cases</h3>
      <p><asp:Label ID="lb2" runat="server" Text=""></asp:Label>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <h3>Total HR Cases</h3>
      <p><asp:Label ID="lb3" runat="server" Text=""></asp:Label>
    </div>
  </div>
  
  
  </div>
    <br />
    <br />
<div class="row">
  <div class="column">
    <div class="card">
      <h3>Total Open Cases</h3>
      <p><asp:Label ID="lb4" runat="server" Text=""></asp:Label>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <h3>Total Completed Cases 2</h3>
      <p><asp:Label ID="lb5" runat="server" Text=""></asp:Label>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <h3>Total New Caes</h3>
      <p><asp:Label ID="lb6" runat="server" Text=""></asp:Label>
</p>
      
    </div>
  </div>
    </div>
</asp:Content>
