<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="IMS2.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <asp:DetailsView ID="DetailsView5" runat="server" Height="16px" Width="814px" AutoGenerateRows="False" DataKeyNames="Interview_Invitation_ID" DataSourceID="EntityDataSource5" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateEditButton="True">
                                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                                                    <EditRowStyle BackColor="#999999" />
                                                    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                                                    <Fields>
                                                        <asp:BoundField DataField="Interview_Invitation_ID" HeaderText="Interview Invitation ID" ReadOnly="True" SortExpression="Interview_Invitation_ID" />
                                                        <asp:BoundField DataField="Interview_Invitation_Date" HeaderText="Interview Invitation Date" ReadOnly="True" SortExpression="Interview_Invitation_Date" />
                                                        <asp:BoundField DataField="Interview_Invitation_Time" HeaderText="Interview Invitation Time" ReadOnly="True" SortExpression="Interview_Invitation_Time" />
                                                        <asp:BoundField DataField="Interview_Invitation_Location" HeaderText="Interview Invitation Location" ReadOnly="True" SortExpression="Interview_Invitation_Location" />
                                                        <asp:BoundField DataField="Interview_Invitation_Date_Sent" HeaderText="Interview Invitation Date Sent" ReadOnly="True" SortExpression="Interview_Invitation_Date_Sent" />
                                                        <asp:BoundField DataField="Interview_Invitation_Acceptance" HeaderText="Interview Invitation Acceptance" SortExpression="Interview_Invitation_Acceptance" />
                                                        <asp:BoundField DataField="Case_Handler_ID" HeaderText="Case Handler ID" ReadOnly="True" SortExpression="Case_Handler_ID" />
                                                        <asp:BoundField DataField="Interview_Invitation_Invitee" HeaderText="Interview Invitation Invitee" ReadOnly="True" SortExpression="Interview_Invitation_Invitee" />
                                                        <asp:BoundField DataField="Interview_Invitation_Details" HeaderText="Interview Invitation Details" ReadOnly="True" SortExpression="Interview_Invitation_Details" />
                                                        <asp:BoundField DataField="Case_ID" HeaderText="Case ID" ReadOnly="true" SortExpression="Case_ID" />
                                                    </Fields>
                                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                                </asp:DetailsView>
                                                <asp:EntityDataSource ID="EntityDataSource5" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="Interview_Invite" EnableUpdate="True"></asp:EntityDataSource>
      <br />
    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
        <asp:ListItem>Yes</asp:ListItem>
        <asp:ListItem>No</asp:ListItem>
      </asp:RadioButtonList>

    <asp:DropDownList ID="DropDownList1" runat="server">
        <asp:ListItem>Yes</asp:ListItem>
        <asp:ListItem>No</asp:ListItem>
      </asp:DropDownList>
<%--             <%--   <asp:TemplateField HeaderText="Case_Verdict" SortExpression="Verdict"><EditItemTemplate><asp:DropDownList ID="verdictdropdown" runat="server" 
    Text='<%# Bind("Case_Verdict") %>' DataSourceID="EntityDataSource3" DataTextField="Case_Verdict1" DataValueField="Case_Verdict_ID"></asp:DropDownList></EditItemTemplate--%>>

     <asp:DetailsView ID="DetailsView1" runat="server" Height="16px" Width="814px" AutoGenerateRows="False" DataKeyNames="Interview_Invitation_ID" DataSourceID="EntityDataSource1" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateEditButton="True">
                                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                                                    <EditRowStyle BackColor="#999999" />
                                                    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                                                    <Fields>
                                                        <asp:BoundField DataField="Interview_Invitation_ID" HeaderText="Interview_Invitation_ID" ReadOnly="True" SortExpression="Interview_Invitation_ID" />
                                                        <asp:BoundField DataField="Interview_Invitation_Date" HeaderText="Interview_Invitation_Date" SortExpression="Interview_Invitation_Date" />
                                                        <asp:BoundField DataField="Interview_Invitation_Time" HeaderText="Interview_Invitation_Time" SortExpression="Interview_Invitation_Time" />
                                                        <asp:BoundField DataField="Interview_Invitation_Location" HeaderText="Interview_Invitation_Location" SortExpression="Interview_Invitation_Location" />
                                                        <asp:BoundField DataField="Interview_Invitation_Date_Sent" HeaderText="Interview_Invitation_Date_Sent" SortExpression="Interview_Invitation_Date_Sent" />
                                                        <asp:TemplateField HeaderText="Interview_Invitation_Acceptance" SortExpression="Interview_Invitation_Acceptance">
                                                            <EditItemTemplate>
  <%-- <asp:RadioButtonList ID="RadioButtonList1" runat="server" Text='<%# Bind("Interview_Invitation_Acceptance") %>'>
        <asp:ListItem>Yes</asp:ListItem>
        <asp:ListItem>No</asp:ListItem>
      </asp:RadioButtonList>--%>

                                                                  <asp:DropDownList ID="DropDownList1" runat="server"  selectedvalue='<%# Bind("Interview_Invitation_Acceptance") %>'>
        <asp:ListItem>Yes</asp:ListItem>
        <asp:ListItem>No</asp:ListItem>
      </asp:DropDownList>
                                                            </EditItemTemplate>
                                                            
                                                            <ItemTemplate>
                                                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Interview_Invitation_Acceptance") %>'></asp:Label>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="Case_Handler_ID" HeaderText="Case_Handler_ID" SortExpression="Case_Handler_ID" />
                                                        <asp:BoundField DataField="Interview_Invitation_Invitee" HeaderText="Interview_Invitation_Invitee" SortExpression="Interview_Invitation_Invitee" />
                                                        <asp:BoundField DataField="Interview_Invitation_Details" HeaderText="Interview_Invitation_Details" SortExpression="Interview_Invitation_Details" />
                                                        <asp:BoundField DataField="Case_ID" HeaderText="Case_ID" SortExpression="Case_ID" />
                                                    </Fields>
                                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                                </asp:DetailsView>
                                                <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="Interview_Invite" EnableUpdate="True"></asp:EntityDataSource>
      <br />
</asp:Content>
