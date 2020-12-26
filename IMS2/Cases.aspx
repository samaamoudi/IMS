<%@ Page Title="" Language="C#" MasterPageFile="~/CaseHandler.Master" AutoEventWireup="true" CodeBehind="Cases.aspx.cs" Inherits="IMS2.Cases" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
           <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

        <style type="text/css">
    .rounded_corners
    {
        border: 1px solid grey;
        -webkit-border-radius: 8px;
        -moz-border-radius: 8px;
        border-radius: 8px;
        overflow: hidden;
    }
    .rounded_corners td, .rounded_corners th
    {
        
        font-family: Arial;
        font-size: 10pt;
        text-align: center;
    }
    .rounded_corners table table td
    {
        border-style: none;
    }

    .button {
   
  border: none;
  color: white;
  padding: 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  width:100px;
}


.button1 {border-radius: 8px;
           background-color: darkred; 

}

.button3 {border-radius: 8px;
           background-color: grey; 

}

 .button1:hover {
                background-color: #a43526;
                color: white;
            }
            .button3:hover {
                background-color: #a43526;
                color: white;
            }
            .auto-style1 {
                border: 1px solid #A1DCF2;
                -webkit-border-radius: 8px;
                -moz-border-radius: 8px;
                border-radius: 8px;
                overflow: hidden;
                width: 420px;
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
.button2 {border-radius: 4px;
           background-color: #c93b2b; 
}
.button2:hover {
  background-color: #a43526;
  color: white;
}
        </style> 

    <asp:TextBox ID="TextBox2" runat="server" class="input"></asp:TextBox><asp:Button ID="Button3" runat="server" Text="Search"  CssClass="button button2"/>

    <br />
<br />

    <div class="rounded_corners" style="width: 1000px">
         <asp:GridView ID="GridView3" runat="server"  AutoGenerateColumns="False" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" OnPageIndexChanging="GridView3_PageIndexChanging"   HeaderStyle-BackColor="#A9A9A9" GridLines="None" style="width: 1000px" HeaderStyle-ForeColor="White" RowStyle-BackColor="#DCDCDC" AlternatingRowStyle-BackColor="White" Height="208px" DataSourceID="EntityDataSource4" AllowPaging="True" PageSize="7" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" >
<AlternatingRowStyle BackColor="#DCDCDC"></AlternatingRowStyle>
             <Columns>
                 <asp:BoundField DataField="Case_ID" HeaderText="Case_ID" ReadOnly="True" SortExpression="Case_ID" />
                 <asp:BoundField DataField="Case_Start_Date" HeaderText="Case_Start_Date" ReadOnly="True" SortExpression="Case_Start_Date" />
                 <asp:BoundField DataField="Case_Type" HeaderText="Case_Type" ReadOnly="True" SortExpression="Case_Type" />
                 <asp:BoundField DataField="Case_Status" HeaderText="Case_Status" ReadOnly="True" SortExpression="Case_Status" />
                 <asp:BoundField DataField="Requester_ID" HeaderText="Requester_ID" ReadOnly="True" SortExpression="Requester_ID" />
                 <asp:CommandField ButtonType="Button" SelectText="Details" ShowSelectButton="True"  ControlStyle-CssClass="button button3" />
                 </Columns>
               <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
               <HeaderStyle BackColor="#000084" ForeColor="White" Font-Bold="True"></HeaderStyle>

             <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />

<RowStyle BackColor="#EEEEEE" ForeColor="Black"></RowStyle>
             <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
             <SortedAscendingCellStyle BackColor="#F1F1F1" />
             <SortedAscendingHeaderStyle BackColor="#0000A9" />
             <SortedDescendingCellStyle BackColor="#CAC9C9" />
             <SortedDescendingHeaderStyle BackColor="#000065" />
         </asp:GridView>
         <asp:EntityDataSource ID="EntityDataSource4" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" AutoGenerateOrderByClause="True" EntitySetName="details_view" Select="it.[Case_ID], it.[Case_Start_Date], it.[Case_Type], it.[Case_Status], it.[Requester_ID]">
             <OrderByParameters>
    <asp:Parameter
    DefaultValue="Case_ID"/>
</OrderByParameters>
         </asp:EntityDataSource>
        </div>
    <asp:QueryExtender ID="QueryExtender" runat="server" TargetControlID="EntityDataSource4">
       <asp:SearchExpression SearchType="StartsWith" DataFields="Case_Status">
            <asp:ControlParameter ControlID="TextBox2" />
        </asp:SearchExpression>
        </asp:QueryExtender>
<br />
<br />
</asp:Content>
