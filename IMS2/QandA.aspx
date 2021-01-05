
<%--the Question and answer part of the interview process come after thr interview page--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/CaseHandler.Master" AutoEventWireup="true" CodeBehind="QandA.aspx.cs" Inherits="IMS2.QandA" %>
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
        .auto-style3 {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            padding: 16px 20px;
            border-radius: 4px;
            background-color: #f1f1f1;
        }
           .auto-style4 {
               color: #051E80;
           }
         .auto-style5 {
             width: 360px;
             height: 40px;
         }
         .auto-style6 {
             height: 40px;
         }
    </style>
   
    <div class="groove">
           <h3 class="auto-style4">Interview Form&nbsp;&nbsp;
               </h3>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style2">
                    <asp:Label class="text" ID="Label2" runat="server" Text="Interview ID"></asp:Label>
                </td>
                <td>
                    <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator>--%>
               <asp:Label ID="CaseIDlb" runat="server" ForeColor="Red"></asp:Label>
                </td>
             
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
              
            </tr>
            <tr>
                <td class="auto-style2"> <asp:Label class="text" ID="Label3" runat="server" Text="Question"></asp:Label></td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="auto-style3" DataSourceID="EntityDataSource1" DataTextField="Question_Details" DataValueField="Question_ID" Width="468px" AutoPostBack="true"  AppendDataBoundItems ="true">
                     <asp:ListItem Enabled="true" Text="--Select Question--" Value="-1" Selected=True></asp:ListItem>
                    </asp:DropDownList>
                    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="Questions">
                    </asp:EntityDataSource>
                </td>
              
            </tr>
            <tr>
                <td class="auto-style2"> &nbsp;</td>
                <td>&nbsp;</td>
               
            </tr>
            <tr>
                <td class="auto-style2"> 
                    <asp:Label ID="Label4" runat="server" class="text" Text="Answer"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="answertxt" runat="server" class="input" TextMode="MultiLine"></asp:TextBox>
                </td>
               
            </tr>
            <tr>
                <td class="auto-style2"> 
                    &nbsp;</td>
                <td>&nbsp;</td>
                
            </tr>
            <tr>
                <td class="auto-style2"> <asp:Label class="text" ID="Label5" runat="server" Text="Question"></asp:Label></td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="auto-style3" DataSourceID="EntityDataSource1" DataTextField="Question_Details" DataValueField="Question_ID" Width="468px" AutoPostBack="true"  AppendDataBoundItems ="true">
                     <asp:ListItem Enabled="true" Text="--Select Question--" Value="-1" Selected=True></asp:ListItem>
                    </asp:DropDownList>
                </td>
              
            </tr>
            <tr>
                <td class="auto-style2"> &nbsp;</td>
                <td>&nbsp;</td>
               
            </tr>
            <tr>
                <td class="auto-style2"> 
                    <asp:Label ID="Label6" runat="server" class="text" Text="Answer"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="answertxt0" runat="server" class="input" TextMode="MultiLine"></asp:TextBox>
                </td>
               
            </tr>
            <tr>
                <td class="auto-style5">  </td>
                <td class="auto-style6">
                    </td>
               
            </tr>
            <tr>
                <td class="auto-style2">  &nbsp;</td>
                <td>
                    <asp:Label ID="LabelQandA" runat="server"></asp:Label>
                </td>
                
            </tr>
            <tr>
                <td >  
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="Next"  CssClass="button button2" OnClick="Button2_Click"  />
                    <asp:Button ID="Button1" runat="server" Text="Submit"  CssClass="button button2" OnClick="Button1_Click"  />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Cancel" CssClass="button button3" /></td>
                
            </tr>
        </table>
    </div>

</asp:Content>
