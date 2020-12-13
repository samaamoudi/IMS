<%@ Page Title="" Language="C#" MasterPageFile="~/CaseHandler.Master" AutoEventWireup="true" CodeBehind="Interview.aspx.cs" Inherits="IMS2.Interview" %>
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
         <h3 style=" color: #051e80 ">Investigation Interview </h3>
          <table style="width: 100%;">
                                                    <tr>
                                                        <td class="auto-style2">
                                                            <asp:Label class="text" ID="Label18" runat="server" Text="Interviewer ID"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="Interviewertxt" runat="server" CssClass="input" placeholder="Employee ID"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="Interviewertxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Interviewertxt" Display="Dynamic" ErrorMessage="Please enter a valid employee ID" ForeColor="Red" ValidationExpression="^\d{5}$"></asp:RegularExpressionValidator>
                                                        </td>

                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style2">&nbsp;</td>
                                                        <td>&nbsp;</td>

                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style2">
                                                            <asp:Label class="text" ID="Label19" runat="server" Text="Interviewee ID "></asp:Label></td>
                                                        <td>
                                                            <asp:TextBox ID="intervieweetxt" runat="server" class="input" placeholder="Employee ID"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="intervieweetxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="intervieweetxt" Display="Dynamic" ErrorMessage="Please enter a valid employee ID" ForeColor="Red" ValidationExpression="^\d{5}$"></asp:RegularExpressionValidator>
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
                                                            <asp:Label class="text" ID="Label20" runat="server" Text="Case ID"></asp:Label></td>
                                                        <td>
                                                          <asp:DropDownList ID="iDropDownList" runat="server" DataSourceID="EntityDataSource7" DataTextField="Case_ID" DataValueField="Case_ID" CssClass="select" AppendDataBoundItems="true">
                                                            <asp:ListItem Enabled="true" Text="--Select Case ID--" Value="-1" Selected=True></asp:ListItem>
                                                              </asp:DropDownList>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="iDropDownList" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

                                                        </td>

                                                        <tr>
                                                            <td class="auto-style2">&nbsp;</td>
                                                            <td>&nbsp;</td>

                                                        </tr>
                                                    <tr>
                                                        <td class="auto-style2">
                                                            <asp:Label class="text" ID="Label21" runat="server" Text="Interview Location"></asp:Label></td>
                                                        <td>
                                                            <asp:TextBox ID="ilocationtxt" runat="server" class="input" placeholder="Location"></asp:TextBox>

                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="ilocationtxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

<%--                                                        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="ilocationtxt" ErrorMessage="ex Home Office - 1000" ForeColor="Red" ValidationExpression="^[zA-Z0-9\x20\-]+$"></asp:RegularExpressionValidator>--%>
                                                        </td>

                                                        <tr>
                                                            <td class="auto-style2">&nbsp;</td>
                                                            <td>&nbsp;</td>

                                                        </tr>
                                                    <tr>
                                                        <td class="auto-style2">
                                                            <asp:Label class="text" ID="Label22" runat="server" Text="Interview Date"></asp:Label></td>
                                                        <td>
                                                            <asp:TextBox ID="idatetxt" runat="server" class="input" TextMode="Date"></asp:TextBox>

                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="idatetxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

                                                        </td>

                                                        <tr>
                                                            <td class="auto-style2">&nbsp;</td>
                                                            <td>&nbsp;</td>

                                                        </tr>
                                                    <tr>
                                                        <td class="auto-style2">
                                                            <asp:Label class="text" ID="Label23" runat="server" Text="Interview Time"></asp:Label></td>
                                                        <td>
                                                            <asp:TextBox ID="itimetxt" runat="server" TextMode="Time" class="input"></asp:TextBox>

                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="itimetxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

                                                        </td>

                                                        <tr>
                                                            <td class="auto-style2">&nbsp;</td>
                                                            <td>&nbsp;</td>

                                                        </tr>
                                                    <tr>
                                                        <td class="auto-style2">
                                                            <asp:Label class="text" ID="Label24" runat="server" Text="Interview Memo"></asp:Label></td>
                                                        <td>
                                                            <asp:TextBox ID="imemotxt" runat="server" class="input" TextMode="MultiLine"></asp:TextBox>

                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="imemotxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>

                                                        </td>

                                                        <tr>
                                                            <td class="auto-style2">&nbsp;</td>
                                                            <td>&nbsp;</td>

                                                        </tr>
                                                    <tr>
                                                        <td class="auto-style2">
                                                            <asp:Label ID="Label25" runat="server" class="text" Text="Interview Questions "></asp:Label>
                                                        </td>
                                                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button8" runat="server" CssClass="button button2" Text="Details"  />
                                                        </td>

                                                    </tr>

                                                    <tr>
                                                        <td class="auto-style2">&nbsp;</td>
                                                        <td>
                                                            <asp:Label ID="LabelInterview" runat="server"></asp:Label>
                                                        </td>

                                                    </tr>

                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td>
                                                            <asp:Button ID="inextbtn" runat="server" Text="Next" CssClass="button button2" OnClick="isavebtn_Click" />
                                                            &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="iclosebtn" runat="server" Text="Cancel" CssClass="button button3" />

                                                        </td>

                                                    </tr>
                                                </table>
        </div>
</asp:Content>
