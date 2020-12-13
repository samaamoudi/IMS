<%@ Page Title="" Language="C#" MasterPageFile="~/CaseHandler.Master" AutoEventWireup="true" CodeBehind="EvidenceRequest.aspx.cs" Inherits="IMS2.EvidenceRequest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
           <h3 style=" color: #051e80 ">Evidnece Request  </h3>
                                               <table style="width: 100%;">
                                                    <tr>
                                                        <td class="auto-style2">
                                                            <asp:Label class="text" ID="Label9" runat="server" Text="Case Handler ID"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="chtxt" runat="server" CssClass="input" placeholder="Employee ID"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="chtxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                                        </td>

                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style2">&nbsp;</td>
                                                        <td>&nbsp;</td>

                                                    </tr>
                                                    <tr>
                                                        <td class="auto-style2">
                                                            <asp:Label class="text" ID="Label10" runat="server" Text="To Whom "></asp:Label></td>
                                                        <td>
                                                            <asp:TextBox ID="emptxt" runat="server" class="input" placeholder="Employee ID"></asp:TextBox>
                                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="emptxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
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
                                                            <asp:Label class="text" ID="Label11" runat="server" Text="Case ID"></asp:Label></td>
                                                        <td>

                                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="casedropdownlist" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            
                                                            <asp:DropDownList ID="casedropdownlist" runat="server" DataSourceID="EntityDataSource7" DataTextField="Case_ID" DataValueField="Case_ID" CssClass="select" AppendDataBoundItems="true">
                                                            <asp:ListItem Enabled="true" Text="--Select Case ID--" Value="-1" Selected=True></asp:ListItem>
                                                                </asp:DropDownList>
            
                                                        </td>

                                                        <tr>
                                                            <td class="auto-style2">&nbsp;</td>
                                                            <td>&nbsp;</td>

                                                        </tr>
                                                    <tr>
                                                        <td class="auto-style2">
                                                            <asp:Label ID="Label12" runat="server" class="text" Text="Evidence Information"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="evidtxt" runat="server" class="input" TextMode="MultiLine"></asp:TextBox>
                                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="evidtxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                                        </td>

                                                        <tr>
                                                            <td class="auto-style2">&nbsp;</td>
                                                            <td>&nbsp;</td>

                                                        </tr>
                                                    <tr>
                                                        <td class="auto-style2">
                                                            <asp:Label ID="Label13" runat="server" class="text" Text="Evidence Request Date"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="datetxt" runat="server" class="input" TextMode="date"></asp:TextBox>
                                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="datetxt" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                                        </td>
                                                        <tr>
                                                            <td class="auto-style2">&nbsp;</td>
                                                            <td>
                                                                <asp:Label id="labelevid" runat="server"></asp:Label>
                                                            </td>

                                                        </tr>

                                                    <tr>
                                                        <td>&nbsp;</td>
                                                        <td>
                                                            <asp:Button ID="evidsubmitbtn" runat="server" Text="Submit" CssClass="button button2" OnClick="evidsubmitbtn_Click" />
                                                            &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button5" runat="server" Text="Cancel" CssClass="button button3" />

                                                        </td>

                                                    </tr>
                                                </table>
        </div>
</asp:Content>
