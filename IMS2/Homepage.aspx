<%@ Page Title="" Language="C#" MasterPageFile="~/CaseHandler.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="IMS2.Homepage" %>
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

<h2 style="color:#051e80">New Cases</h2>

      <div class="rounded_corners" style="width: 1000px"> 
    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False"   HeaderStyle-BackColor="#A9A9A9" GridLines="None" style="width: 1000px" 
        HeaderStyle-ForeColor="White" RowStyle-BackColor="#DCDCDC" AlternatingRowStyle-BackColor="White" Height="208px"
        DataKeyNames="Case_ID,Case_Start_Date,Case_Details,Employee_ID,Requester_ID,Case_Status,Case_Type" DataSourceID="EntityDataSource4">
             <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
         <Columns>
            <asp:BoundField DataField="Case_ID" HeaderText="Case_ID" ReadOnly="True" SortExpression="Case_ID" />
            <asp:BoundField DataField="Case_Start_Date" HeaderText="Case_Start_Date" ReadOnly="True" SortExpression="Case_Start_Date" />
            <asp:BoundField DataField="Requester_ID" HeaderText="Requester_ID" ReadOnly="True" SortExpression="Requester_ID" />
            <asp:BoundField DataField="Case_Status" HeaderText="Case_Status" ReadOnly="True" SortExpression="Case_Status" />
            <asp:BoundField DataField="Case_Type" HeaderText="Case_Type" ReadOnly="True" SortExpression="Case_Type" />
        </Columns>
    </asp:GridView>
          </div>
    <asp:EntityDataSource ID="EntityDataSource4" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="details_view"  Where="it.Case_Status=@param"  >
             <WhereParameters>
                 <asp:ControlParameter ControlID="GridView3" DefaultValue="Up-For-Review" Name="param" PropertyName="SelectedValue" DbType="String" />
             </WhereParameters>
    </asp:EntityDataSource>

<h2 style="color:#051e80">Reviewd Cases</h2>

     <div class="rounded_corners" style="width: 1000px">
      <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="Case_ID,Case_Start_Date,Case_Details,Employee_ID,Requester_ID,Case_Status,Case_Type" DataSourceID="EntityDataSource3"
          HeaderStyle-BackColor="#A9A9A9" GridLines="None" style="width: 1000px" 
        HeaderStyle-ForeColor="White" RowStyle-BackColor="#DCDCDC" AlternatingRowStyle-BackColor="White" Height="208px">
          <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
        <Columns>
            <asp:BoundField DataField="Case_ID" HeaderText="Case_ID" ReadOnly="True" SortExpression="Case_ID" />
            <asp:BoundField DataField="Case_Start_Date" HeaderText="Case_Start_Date" ReadOnly="True" SortExpression="Case_Start_Date" />
            <asp:BoundField DataField="Requester_ID" HeaderText="Requester_ID" ReadOnly="True" SortExpression="Requester_ID" />
            <asp:BoundField DataField="Case_Status" HeaderText="Case_Status" ReadOnly="True" SortExpression="Case_Status" />
            <asp:BoundField DataField="Case_Type" HeaderText="Case_Type" ReadOnly="True" SortExpression="Case_Type" />
        </Columns>
           <HeaderStyle BackColor="DarkGray" ForeColor="White"></HeaderStyle>

<RowStyle BackColor="Gainsboro"></RowStyle>
    </asp:GridView>
    </div>
    <asp:EntityDataSource ID="EntityDataSource3" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="details_view" Where="it.Case_Status=@nwparam"  >
             <WhereParameters>
                 <asp:ControlParameter ControlID="GridView3" DefaultValue="Reviewed" Name="nwparam" PropertyName="SelectedValue" DbType="String" />
             </WhereParameters>
    </asp:EntityDataSource>
   

  <h2 style="color:#051e80">  Open Cases</h2>


     <div class="rounded_corners" style="width: 1000px"> 
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Case_ID,Case_Start_Date,Case_Details,Employee_ID,Requester_ID,Case_Status,Case_Type" DataSourceID="EntityDataSource1"
                    HeaderStyle-BackColor="#A9A9A9" GridLines="None" style="width: 1000px" 
        HeaderStyle-ForeColor="White" RowStyle-BackColor="#DCDCDC" AlternatingRowStyle-BackColor="White" Height="208px">
          <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
        <Columns>
            <asp:BoundField DataField="Case_ID" HeaderText="Case_ID" ReadOnly="True" SortExpression="Case_ID" />
            <asp:BoundField DataField="Case_Start_Date" HeaderText="Case_Start_Date" ReadOnly="True" SortExpression="Case_Start_Date" />
            <asp:BoundField DataField="Requester_ID" HeaderText="Requester_ID" ReadOnly="True" SortExpression="Requester_ID" />
            <asp:BoundField DataField="Case_Status" HeaderText="Case_Status" ReadOnly="True" SortExpression="Case_Status" />
            <asp:BoundField DataField="Case_Type" HeaderText="Case_Type" ReadOnly="True" SortExpression="Case_Type" />
        </Columns>
           <HeaderStyle BackColor="DarkGray" ForeColor="White"></HeaderStyle>

<RowStyle BackColor="Gainsboro"></RowStyle>
    </asp:GridView>
         </div>
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="details_view" Where="it.Case_Status=@nparam" >
             <WhereParameters>
                 <asp:ControlParameter ControlID="GridView1" DefaultValue="In-Progress" Name="nparam" PropertyName="SelectedValue" DbType="String" />
             </WhereParameters>
    </asp:EntityDataSource>
<h2 style="color:#051e80">Closed Cases</h2>
    
  <div class="rounded_corners" style="width: 1000px"> 
    <asp:GridView ID="GridView2" runat="server"  style="width: 1000px" 
        HeaderStyle-ForeColor="White" RowStyle-BackColor="#DCDCDC" AlternatingRowStyle-BackColor="White" Height="208px" AutoGenerateColumns="False" DataKeyNames="Case_ID,Case_Start_Date,Case_Details,Employee_ID,Requester_ID,Case_Status,Case_Type" DataSourceID="EntityDataSource2">
        <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
        <Columns>
            <asp:BoundField DataField="Case_ID" HeaderText="Case_ID" ReadOnly="True" SortExpression="Case_ID" />
            <asp:BoundField DataField="Case_Start_Date" HeaderText="Case_Start_Date" ReadOnly="True" SortExpression="Case_Start_Date" />
            <asp:BoundField DataField="Requester_ID" HeaderText="Requester_ID" ReadOnly="True" SortExpression="Requester_ID" />
            <asp:BoundField DataField="Case_Status" HeaderText="Case_Status" ReadOnly="True" SortExpression="Case_Status" />
            <asp:BoundField DataField="Case_Type" HeaderText="Case_Type" ReadOnly="True" SortExpression="Case_Type" />
        </Columns>
        <HeaderStyle BackColor="DarkGray" ForeColor="White"></HeaderStyle>

<RowStyle BackColor="Gainsboro"></RowStyle>
    </asp:GridView>
      </div>
    <asp:EntityDataSource ID="EntityDataSource2" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="details_view"  Where="it.Case_Status=@newparam" >
             <WhereParameters>
                 <asp:ControlParameter ControlID="GridView2" DefaultValue="Completed" Name="newparam" PropertyName="SelectedValue" DbType="String" />
             </WhereParameters>
    </asp:EntityDataSource>
    



</asp:Content>
