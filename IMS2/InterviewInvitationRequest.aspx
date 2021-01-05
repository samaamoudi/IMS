
<%--The page is for submitting an interview invitation request to employees--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/CaseHandler.Master" AutoEventWireup="true" CodeBehind="InterviewInvitationRequest.aspx.cs" Inherits="IMS2.InterviewInvitationRequest" %>
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
           <h3 style=" color: #051e80 ">Interview Invitation Request</h3>
         <table style="width: 100%;">
                                                    <tr>
                                                        <td class="auto-style2">
                                                            <asp:Label class="text" ID="Label2" runat="server" Text="Case Handler ID"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="CHlbl" runat="server"></asp:Label>
                                                            &nbsp;<br />
                                                        </td>

                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style2">&nbsp;</td>
                                                        <td>&nbsp;</td>

                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style2">
                                                            <asp:Label class="text" ID="Label1" runat="server" Text="To Whom "></asp:Label></td>
                                                        <td>
                                                              <asp:DropDownList ID="EmpDropDownList" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Employee_ID" Class="select" AppendDataBoundItems="true">
                                                            <asp:ListItem Enabled="true" Text="--Select Employee--" Value="-1" Selected=True></asp:ListItem>
                                                              </asp:DropDownList>
                                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Investigation_management_systemConnectionString %>" SelectCommand="SELECT [Employee_ID], [First_Name] + ' ' + [Last_Name] as Name FROM [Employee] ORDER BY [First_Name]"></asp:SqlDataSource>
                                                                              
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="EmpDropDownList" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                                        </td>

                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style2">&nbsp;</td>
                                                        <td>
                                                            <asp:EntityDataSource ID="EntityDataSource7" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="InvestigationCase1" Select="it.[Case_ID]">
                                                            </asp:EntityDataSource>
                                                        </td>

                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style2">
                                                            <asp:Label class="text" ID="Label3" runat="server" Text="Case ID"></asp:Label></td>
                                                        <td><asp:DropDownList ID="iiDropDownList" runat="server" DataSourceID="EntityDataSource7" DataTextField="Case_ID" DataValueField="Case_ID" CssClass="select" AppendDataBoundItems="true">
                                                             <asp:ListItem Enabled="true" Text="--Select Case ID--" Value="-1" Selected=True></asp:ListItem>
                                                            </asp:DropDownList>

                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="iiDropDownList"></asp:RequiredFieldValidator>

                                                        </td>

                                                        <tr>
                                                            <td class="auto-style2">&nbsp;</td>
                                                            <td>&nbsp;</td>

                                                        </tr>
                                                    <tr>
                                                        <td class="auto-style2">
                                                            <asp:Label ID="Label4" runat="server" class="text" Text="Interview Date"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="iidatetxt" runat="server" class="input" TextMode="Date"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="iidatetxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                                        </td>

                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style2">&nbsp;</td>
                                                        <td>&nbsp;</td>

                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style2">
                                                            <asp:Label class="text" ID="Label5" runat="server" Text="Interview Time"></asp:Label></td>
                                                        <td>
                                                            <asp:TextBox ID="iiTimetxt" runat="server" CssClass="input" TextMode="Time"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="iiTimetxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                                        </td>

                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style2">&nbsp;</td>
                                                        <td>&nbsp;</td>

                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style2">
                                                            <asp:Label ID="Label6" class="text" runat="server" Text="Interview Location"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="iilocationtxt" runat="server" class="" CssClass="input" placeholder="Location"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="iilocationtxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
     <%-- ^[zA-Z0-9\x20\-]+$   --%>                                            <%-- <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="iilocationtxt" ErrorMessage="ex Home Office - 1000" ForeColor="Red" ValidationExpression="^[zA-Z0-9\x20\-]+$"></asp:RegularExpressionValidator>--%>
                                                        </td>

                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style2">&nbsp;</td>
                                                        <td>&nbsp;</td>

                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style2">
                                                            <asp:Label ID="Label7" runat="server" CssClass="text" Text="Date Sent"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="iidatesenttxt" runat="server" class="input" TextMode="Date"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="iidatesenttxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                                        </td>

                                                    </tr>

                                                    <tr>
                                                        <td class="auto-style2">&nbsp;</td>
                                                        <td>&nbsp;</td>

                                                    </tr>

                                                    <tr>
                                                        <td class="auto-style2">
                                                            <asp:Label ID="Label8" runat="server" CssClass="text" Text="Details"></asp:Label></td>
                                                        <td>
                                                            <asp:TextBox ID="iiDetailstxt" runat="server" class="input" TextMode="MultiLine"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="iiDetailstxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                                        </td>

                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style2">&nbsp;</td>
                                                        <td>
                                                            <asp:Label ID="LabelInvite" runat="server"></asp:Label>
                                                        </td>

                                                    </tr>
                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td>
                                                            <asp:Button ID="iisendbtn" runat="server" Text="Send" CssClass="button button2" OnClick="iisendbtn_Click" />
                                                            &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="iiclosebtn" runat="server" Text="Cancel" CssClass="button button3" /></td>

                                                    </tr>

                                                </table>
    </div>

</asp:Content>
