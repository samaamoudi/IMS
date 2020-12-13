<%@ Page Title="" Language="C#" MasterPageFile="~/CaseHandler.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="IMS2.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <table style="width: 100%;">
                                                    <tr>
                                                       
                                                        <td>
                                                            &nbsp;</td>

                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <div id="detailsPanel" >
                                                                <br />
                                                                Details of case number: 
            <asp:Label ID="lpCaseID" runat="server" Text=""></asp:Label>
                                                                <br />
                                                                
                                                                <br />
                                                        </td>
                                                        <td>&nbsp;</td>

                                                    </tr>
                                                    <tr>
                                                        <td>
                                                             <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateEditButton="True" AutoGenerateRows="False" DataKeyNames="Case_ID" DataSourceID="CaseDetailsEntityDataSource" CellPadding="4" ForeColor="#333333" GridLines="None">
                                                                 <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                                 <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                                                                 <EditRowStyle BackColor="#999999" />
                                                                 <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                                                                 <Fields>
                                                                     <asp:BoundField DataField="Case_ID" HeaderText="Case ID" ReadOnly="True" SortExpression="Case_ID" />
                                                                     <asp:TemplateField HeaderText="Case_Type" SortExpression="Case Type">
                                                                         <ItemTemplate>
                                                                             <asp:Label ID="Label2" runat="server" Text='<%# Eval("CaseType.Case_Type") %>'></asp:Label>
                                                                         </ItemTemplate>
                                                                     </asp:TemplateField>
                                                                     <asp:BoundField DataField="Case_Start_Date" HeaderText="Start Date" SortExpression="Case_Start_Date" />
                                                                     <asp:BoundField DataField="Case_End_Date" HeaderText="End Date" SortExpression="Case_End_Date" />
                                                                     <asp:TemplateField HeaderText="Status" SortExpression="Case_Status">
                                                                         <EditItemTemplate>
                                                                             <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="CaseStatusEntityDataSource" DataTextField="Case_Status1" DataValueField="Case_Status_ID" Text='<%# Bind("Case_Status") %>'>
                                                                             </asp:DropDownList>
                                                                         </EditItemTemplate>
                                                                         <%--             <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Case_Status") %>'></asp:TextBox>
                </InsertItemTemplate>--%>
                                                                         <ItemTemplate>
                                                                             <asp:Label ID="Label3" runat="server" Text='<%# Bind("Case_Status1.Case_Status1") %>'></asp:Label>
                                                                         </ItemTemplate>
                                                                     </asp:TemplateField>
                                                                     <asp:BoundField DataField="Case_Details" HeaderText="Details" SortExpression="Case_Details" />
                                                                     <asp:BoundField DataField="Case_Duration" HeaderText="Duration" SortExpression="Case_Duration" />
                                                                     <asp:TemplateField HeaderText="Case_Verdict" SortExpression="Verdict">
                                                                         <EditItemTemplate>
                                                                             <asp:DropDownList ID="verdictdropdown" runat="server" DataSourceID="CaseVerdictEntityDataSource" DataTextField="Case_Verdict1" DataValueField="Case_Verdict_ID" Text='<%# Bind("Case_Verdict") %>'>
                                                                             </asp:DropDownList>
                                                                         </EditItemTemplate>
                                                                         <ItemTemplate>
                                                                             <asp:Label ID="Label1" runat="server" Text='<%# Eval("Case_Verdict1.Case_Verdict1") %>'></asp:Label>
                                                                         </ItemTemplate>
                                                                     </asp:TemplateField>
                                                                     <asp:BoundField DataField="Employee_ID" HeaderText="Employee ID" SortExpression="Employee_ID" />
                                                                     <asp:TemplateField HeaderText="Case Handler ID" SortExpression="Case_Handler_ID">
                                                                         <EditItemTemplate>
                                                                             <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="CaseHandlerEntityDataSource" DataTextField="CH_Employee_ID" DataValueField="CH_Employee_ID" Text='<%# Bind("Case_Handler_ID") %>'>
                                                                             </asp:DropDownList>
                                                                         </EditItemTemplate>
                                                                         <ItemTemplate>
                                                                             <asp:Label ID="Label4" runat="server" Text='<%# Bind("Case_Handler_ID") %>'></asp:Label>
                                                                         </ItemTemplate>
                                                                     </asp:TemplateField>
                                                                     <asp:BoundField DataField="Requester_ID" HeaderText="Requester ID" SortExpression="Requester_ID" />
                                                                 </Fields>
                                                                 <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                                 <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                                 <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                                 <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>
    </div>
    <asp:EntityDataSource ID="CaseDetailsEntityDataSource" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EnableUpdate="True" EntitySetName="InvestigationCase1" Include="Case_Verdict1,CaseType,Case_Status1,Case_Handler" Where="it.Case_ID=@idparam" >
                                                    <WhereParameters>
                                                        <asp:ControlParameter ControlID="lpCaseID" DbType="Int32" DefaultValue="1" Name="idparam" PropertyName="Text" />
                                                    </WhereParameters>
    </asp:EntityDataSource>
 
&nbsp;<%--<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="EntityDataSource3" DataTextField="Case_Verdict1" DataValueField="Case_Verdict_ID">
    </asp:DropDownList>--%><asp:EntityDataSource ID="CaseVerdictEntityDataSource" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="Case_Verdict">
    </asp:EntityDataSource>
    <asp:EntityDataSource ID="CaseStatusEntityDataSource" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="Case_Status"></asp:EntityDataSource>
    <asp:EntityDataSource ID="CaseHandlerEntityDataSource" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="Case_Handler"></asp:EntityDataSource>
   
   
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>

                                                    </tr>
                                                </table>
</asp:Content>
