
<%--Employees home page, first page seen after login--%>


<%@ Page Title="" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="EmployeeHP.aspx.cs" Inherits="IMS2.EmployeeHP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
        </style> 


   
     <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<h2 style="color:#051e80">Requested Cases</h2>

       <div class="rounded_corners" style="width: 1000px">
         <asp:GridView ID="GridView2" runat="server"  AutoGenerateColumns="False" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" OnPageIndexChanging="GridView2_PageIndexChanging"   HeaderStyle-BackColor="#A9A9A9" GridLines="None" style="width: 1000px" HeaderStyle-ForeColor="White" RowStyle-BackColor="#DCDCDC" AlternatingRowStyle-BackColor="White" Height="208px" DataSourceID="EntityDataSource4" AllowPaging="True" PageSize="4" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Case_ID,Case_Start_Date,Case_Details,Employee_ID,Requester_ID,Case_Status,Case_Type" >
<AlternatingRowStyle BackColor="#DCDCDC"></AlternatingRowStyle>
             <Columns>
           <asp:BoundField DataField="Case_ID" HeaderText="Case ID" ReadOnly="True" SortExpression="Case_ID" />
                 <asp:BoundField DataField="Case_Start_Date" HeaderText="Case Start Date" ReadOnly="True" SortExpression="Case_Start_Date" />
                 
              <asp:BoundField DataField="Case_Status" HeaderText="Case Status" ReadOnly="True" SortExpression="Case_Status" />
               
                 <asp:BoundField DataField="Case_Type" HeaderText="Case Type" ReadOnly="True" SortExpression="Case_Type" />
                 <asp:BoundField DataField="Requester_ID" HeaderText="Requester ID" ReadOnly="True" SortExpression="Requester_ID" />
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
        </div>

      
    <asp:EntityDataSource ID="EntityDataSource4" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="details_view"  Where=" it.Requester_ID=@chidparam" EntityTypeFilter="" Select="" >
             <WhereParameters>
<%--                 <asp:ControlParameter ControlID="GridView2" DefaultValue="Up-For-Review" Name="param" PropertyName="SelectedValue" DbType="String" />--%>
                    <asp:SessionParameter DbType="String" Name="chidparam" SessionField="emID" />
             </WhereParameters>
    </asp:EntityDataSource>

      <h2 style="color:#051e80"> Accused Cases</h2>


    
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="details_view" Where="it.Employee_ID=@chidparam1" >
             <WhereParameters>
<%--                 <asp:ControlParameter ControlID="GridView3" DefaultValue="In-Progress" Name="nparam" PropertyName="SelectedValue" DbType="String" />--%>
                 <asp:SessionParameter DbType="String" Name="chidparam1" SessionField="emID" />
             </WhereParameters>
    </asp:EntityDataSource>

    <div class="rounded_corners" style="width: 1000px">
         <asp:GridView ID="GridView3" runat="server"  AutoGenerateColumns="False" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" OnPageIndexChanging="GridView3_PageIndexChanging"   HeaderStyle-BackColor="#A9A9A9" GridLines="None" style="width: 1000px" HeaderStyle-ForeColor="White" RowStyle-BackColor="#DCDCDC" AlternatingRowStyle-BackColor="White" Height="208px" DataSourceID="EntityDataSource1" AllowPaging="True" PageSize="4" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Case_ID,Case_Start_Date,Case_Details,Employee_ID,Requester_ID,Case_Status,Case_Type" >
<AlternatingRowStyle BackColor="#DCDCDC"></AlternatingRowStyle>
             <Columns>
                 <asp:BoundField DataField="Case_ID" HeaderText="Case ID" ReadOnly="True" SortExpression="Case_ID" />
                 <asp:BoundField DataField="Case_Start_Date" HeaderText="Case Start Date" ReadOnly="True" SortExpression="Case_Start_Date" />
                 
              <asp:BoundField DataField="Case_Status" HeaderText="Case Status" ReadOnly="True" SortExpression="Case_Status" />
               
                 <asp:BoundField DataField="Case_Type" HeaderText="Case Type" ReadOnly="True" SortExpression="Case_Type" />
                 <asp:BoundField DataField="Requester_ID" HeaderText="Requester ID" ReadOnly="True" SortExpression="Requester_ID" />
               
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
        </div>
</asp:Content>

<%--    <asp:EntityDataSource ID="EntityDataSource2" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EnableUpdate="True" EntitySetName="InvestigationCase1" Include="Case_Verdict1,CaseType,Case_Status1,Case_Handler"
    Where="it.Case_ID=@idparam" ><WhereParameters>
    <asp:ControlParameter ControlID="lpCaseID" DbType="Int32" DefaultValue="1" Name="idparam" PropertyName="Text" /></WhereParameters></asp:EntityDataSource>--%>
