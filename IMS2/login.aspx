
<%--this is teh login page for the system both employees and case handler have the same one--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="IMS2.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
          <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="login.css" />
    <style>
        .example1 {

  padding: 10px;
  height: 400px;
  box-shadow: 10px 10px 8px lightgrey;
  position: center;
  width:300px;
  padding-left: 80px;
  padding-top: 60px;
  -moz-box-shadow: 2px 2px 4px 5px #ccc;
  -webkit-box-shadow: 2px 2px 4px 5px #ccc;
  box-shadow: 1px 1px 4px 1px #ccc;
 
}
.center {
  margin: auto;
  width: 60%;
/*padding: 90px;*/
padding-left: 400px;
padding-top: 150px;
 
 
}

.button {
  background-color: #d0524b; 
  border: none;
  color: white;
  padding: 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  width:200px;
}


.button3 {border-radius: 8px;}
  
.input {
  width: 40%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  border: 2px solid #ccc;
  -webkit-transition: 0.5s;
  transition: 0.5s;
  outline: none;
}

.input:focus {
  border: 2px solid #051e80;
}


        .auto-style2 {
            padding: 12px 20px;
            margin: 8px 0;
            box-sizing: border-box;
            border: 2px solid #ccc;
            -webkit-transition: 0.5s;
            transition: 0.5s;
            outline: none;
        }


    </style>
   
    <div class="center">
        <div class="example1" >

<%--    <div class="login">--%>
        <%--<h4 color="#051e80">Login to Your Account </h4>--%>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Login to Your Account " ForeColor="#051E80" Font-Size="Large"></asp:Label>
        <br />
            <br />
            <br />
            <label for="username">Username:</label>
           
            <br />
            <%--<input type="text" id="username" name="username">--%>
        <asp:TextBox ID="txtUserName" runat="server" maxlength="5" CssClass="auto-style2" placeholder="Employee ID" Height="20px" Width="217px"></asp:TextBox>
            <br />
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName"  ForeColor="Red" ErrorMessage="This Feild is required" Display="Dynamic"></asp:RequiredFieldValidator>
        
         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtUserName" Display="Dynamic" ErrorMessage="Please enter a valid employee ID" ForeColor="Red" ValidationExpression="^\d{5}$"></asp:RegularExpressionValidator>
        &nbsp;<br />
            <label for="password">Password:</label>
           
            <br />
           <%-- <input type="password" id="password" name="password">--%>
       <asp:TextBox ID="txtPWD" runat="server" TextMode="Password" CssClass="auto-style2" placeholder="Password" Height="25px" Width="217px"></asp:TextBox>
        
                        <br />
        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPWD" Display="Dynamic" ErrorMessage="This Feild is required"  ForeColor="Red"></asp:RequiredFieldValidator>
            
            <br />
          
             
            
             <input type="checkbox"><label class="check" for="checkbox">Keep me logged in</label>
                <br />
               <br />
            <asp:Button ID="btnSubmit" runat="server" Text="Login" class="button button3" OnClick="btnSubmit_Click" />
           <br />
        <asp:Label ID="lbMessage" runat="server" ForeColor="#CC3300"></asp:Label>
</div>
        </div>
      

</asp:Content>
