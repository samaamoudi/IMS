
<%--thsi page is for evidnce submission part during the proccess of requesting an investigation case --%>


<%@ Page Title="" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="EmpEvidence.aspx.cs" Inherits="IMS2.EmpEvidence" %>
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
           <h3 style=" color: #051e80 ">Evidence Details </h3>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style2">
                    <asp:Label class="text" ID="Label2" runat="server" Text="Evidnce Type"></asp:Label>
                </td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem>Text</asp:ListItem>
                        <asp:ListItem>PDF</asp:ListItem>
                    </asp:RadioButtonList>
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>--%>
                </td>
             
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td>&nbsp;</td>
              
            </tr>
            <tr>
                <td class="auto-style2"> <asp:Label class="text" ID="Label1" runat="server" Text="Date"></asp:Label></td>
                <td>
                    <asp:TextBox ID="datetxt" runat="server" class="input" TextMode="Date"></asp:TextBox>
                </td>
              
            </tr>
            <tr>
                <td class="auto-style2"> &nbsp;</td>
                <td>&nbsp;</td>
              
            </tr>
            <tr>
                <td class="auto-style2"> <asp:Label class="text" ID="Label3" runat="server" Text="Case ID"></asp:Label></td>
                <td>
                   <%-- <asp:TextBox ID="casetxt" runat="server" class="input" TextMode="SingleLine"></asp:TextBox>--%>
                    <asp:Label ID="CaseIDlb" runat="server" ></asp:Label>
                </td>
              
            </tr>
            <tr>
                <td class="auto-style2"> &nbsp;</td>
                <td>&nbsp;</td>
               
            </tr>
            <tr>
                <td class="auto-style2"> 
                    <asp:Label ID="Eviddoc" runat="server" class="text" Text="Evidence Documents"></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
               
            </tr>
            <tr>
                <td class="auto-style2"> 
                    &nbsp;</td>
                <td>&nbsp;</td>
                
            </tr>
            <tr>
                <td class="auto-style2">  <asp:Label class="text" ID="eviddetail" runat="server" Text="Evidence Details"></asp:Label></td>
                <td>
                    <asp:TextBox ID="Detailstxt" runat="server"  class="input" TextMode="MultiLine"></asp:TextBox>
                </td>
               
            </tr>
            <tr>
                <td class="auto-style2">  &nbsp;</td>
                <td>&nbsp;</td>
                
            </tr>
            <tr>
                <td class="auto-style2">  
                    <asp:Label ID="Label6" class="text" runat="server" Text="Requester ID"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="RequesterIDlb" runat="server" ></asp:Label>
                </td>
               
            </tr>
            <tr>
                <td class="auto-style2">  &nbsp;</td>
                <td>&nbsp;</td>
              
            </tr>
            <tr>
                <td >  
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Save"  CssClass="button button2" OnClick="Button1_Click1" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Cancel" CssClass="button button3" /></td>
                
            </tr>
        </table>
    </div>
</asp:Content>
