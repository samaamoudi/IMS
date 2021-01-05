

<%--This page is for submitting a termination request to the vp after a case has been conducted and verict is termination  --%>


<%@ Page Title="" Language="C#" MasterPageFile="~/CaseHandler.Master" AutoEventWireup="true" CodeBehind="TerminationRequest.aspx.cs" Inherits="IMS2.TerminationRequest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

 
     
    <style>
    .select {
  width: 30%;
  padding: 16px 20px;
  border: none;
  border-radius: 4px;
  background-color: #f1f1f1;
}

  
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

.text{
color: #6d6d6d;
}
.groove {border-style: solid;
padding-top: 20px;
padding-left: 50px;
padding-right: 0px;
border-color: #d9d9d9;
}

.button {
 
  border: none;
  color: white;
  padding: 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  width: 15%;
  
}
.button2 {border-radius: 4px;
           background-color: #c93b2b; 
}
.button2:hover {
  background-color: #a43526;
  color: white;
}

.button3 {border-radius: 4px;
           background-color: grey; 

}

.button3:hover {
  background-color: #a43526;
  color: white;
}
    .auto-style2 {
        width: 360px;
    }
        </style>

    <div class="groove">
         <h3 style=" color: #051e80 ">Termination Request  </h3>
        <table style="width: 100%;">
                                                    <tr>
                                                        <td class="auto-style2">
                                                            <asp:Label class="text" ID="Label18" runat="server" Text="Case Handler ID"></asp:Label>
                                                        </td>
                                                        <td>
                                                                                                                        <asp:Label ID="CHlbl" runat="server"></asp:Label>

                                                        </td>

                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style2">
                                                            &nbsp;</td>
                                                        <td>
                                                            &nbsp;</td>

                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style2">
                                                            <asp:Label class="text" ID="Label14" runat="server" Text="Employee"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:DropDownList ID="EmpDropDownList" runat="server" AppendDataBoundItems="true" Class="select" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Employee_ID">
                                                                <asp:ListItem Enabled="true" Selected="True" Text="--Select Employee--" Value="-1"></asp:ListItem>
                                                            </asp:DropDownList>
                                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Investigation_management_systemConnectionString %>" SelectCommand="SELECT [Employee_ID], [First_Name] + ' ' + [Last_Name] as Name FROM [Employee] ORDER BY [First_Name]"></asp:SqlDataSource>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="EmpDropDownList" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                                        </td>

                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style2"></td>
                                                        <td>
                                                            <asp:EntityDataSource ID="EntityDataSource7" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="InvestigationCase1" Select="it.[Case_ID]">
                                                            </asp:EntityDataSource>
                                                        </td>

                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style2">
                                                            <asp:Label class="text" ID="Label15" runat="server" Text="Case ID"></asp:Label></td>
                                                        <td>
                                                            <asp:DropDownList ID="trDropDownList" runat="server" DataSourceID="EntityDataSource7" DataTextField="Case_ID" DataValueField="Case_ID" CssClass="select" AppendDataBoundItems="true">
                                                           <asp:ListItem Enabled="true" Text="--Select Case ID--" Value="-1" Selected=True></asp:ListItem>
                                                                </asp:DropDownList>
                                                            <asp:RequiredFieldValidator runat="server" ErrorMessage="*" ControlToValidate="trDropDownList" ForeColor="Red"></asp:RequiredFieldValidator>

                                                        </td>

                                                       


                                                        <tr>
                                                            <td class="auto-style2">&nbsp;</td>
                                                            <td>&nbsp;</td>

                                                        </tr>
                                                    <tr>
                                                        <td class="auto-style2">
                                                            <asp:Label class="text" ID="Label16" runat="server" Text=" Date"></asp:Label></td>
                                                        <td>
                                                            <asp:TextBox ID="trDatetxt" runat="server" class="input" TextMode="Date"></asp:TextBox>

                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="trDatetxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

                                                        </td>

                                                        <tr>
                                                            <td class="auto-style2">&nbsp;</td>
                                                            <td>&nbsp;</td>

                                                        </tr>
                                                    <tr>
                                                        <td class="auto-style2">
                                                            <asp:Label class="text" ID="Label17" runat="server" Text="Termination Justification"></asp:Label></td>
                                                        <td>
                                                            <asp:TextBox ID="Justificationtxt" runat="server" class="input" TextMode="MultiLine"></asp:TextBox>

                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Justificationtxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

                                                        </td>

                                                        <tr>
                                                            <td class="auto-style2">&nbsp;</td>
                                                            <td>&nbsp;</td>

                                                        </tr>
                                                    <tr>
                                                        <td class="auto-style2">&nbsp;</td>
                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="LabelTermination" runat="server"></asp:Label>
&nbsp;</td>

                                                    </tr>

                                                    <tr>
                                                        <td class="auto-style2">&nbsp;</td>
                                                        <td>&nbsp;</td>

                                                    </tr>

                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td>
                                                            <asp:Button ID="trsavebtn" runat="server" Text="Save" CssClass="button button2" OnClick="trsavebtn_Click" />
                                                            &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button11" runat="server" Text="Cancel" CssClass="button button3" on_click=" trclosebtn_Click" />

                                                        </td>

                                                    </tr>

                                                    
                                    
                                </tr>
                            </table>
        </div>
</asp:Content>
