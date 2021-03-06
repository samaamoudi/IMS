﻿
<%--this page conatins the case details as well as related details of the case such as evidence, evidnce request and interview invite.
thsi page is also for teh employee to keep tarck of the case--%>


<%@ Page Title="" Language="C#" MasterPageFile="~/Employee.Master" AutoEventWireup="true" CodeBehind="EmpCasesDetails.aspx.cs" Inherits="IMS2.EmpCasesDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <style type="text/css">
        .Initial {
            display: block;
            padding: 4px 18px 4px 18px;
            float: left;
            background: #051e80;
            color: white;
            font-weight: bold;
        }

            .Initial:hover {
                color: red;
                background: url("../Images/SelectedButton.png") no-repeat right top;
            }

        .Clicked {
            float: left;
            display: block;
            background: url("../Images/SelectedButton.png") no-repeat right top;
            padding: 4px 18px 4px 18px;
            color: red;
            font-weight: bold;
            color: darkgrey;
        }

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

        .text {
            color: #6d6d6d;
        }

        .groove {
            border-style: solid;
            padding-top: 20px;
            padding-left: 50px;
            padding-right: 0px;
            border-color: #d9d9d9;
            width: 100%
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

        .button2 {
            border-radius: 4px;
            background-color: #c93b2b;
        }

            .button2:hover {
                background-color: #a43526;
                color: white;
            }

        .button3 {
            border-radius: 4px;
            background-color: grey;
        }

            .button3:hover {
                background-color: #a43526;
                color: white;
            }

        .auto-style3 {
            text-align: right;
        }
        </style>
    <body>

        <table width="80%" align="center">
            <tr>
                <td>
                    <asp:Button Text="Case Details" BorderStyle="None" ID="Tab1" CssClass="Initial" runat="server"
                        OnClick="Tab1_Click" />
                   <%-- <asp:Button Text="Reallocate" BorderStyle="None" ID="Tab2" CssClass="Initial" runat="server"
                        OnClick="Tab2_Click" />--%>
                      <asp:Button Text="Evidence Details" BorderStyle="None" ID="Tab2" CssClass="Initial" runat="server"
                        OnClick="Tab2_Click" />
                   <%-- <asp:Button Text="Request Information" BorderStyle="None" ID="Tab4" CssClass="Initial" runat="server"
                        OnClick="Tab4_Click" />
                    <asp:Button Text="Interview Request" BorderStyle="None" ID="Tab5" CssClass="Initial" runat="server"--%>
                       <%-- OnClick="Tab5_Click" />--%>
                    <%--<asp:Button Text="Interview " BorderStyle="None" ID="Tab4" CssClass="Initial" runat="server"
                        OnClick="Tab4_Click" />
                    <asp:Button Text="Termination Request" BorderStyle="None" ID="Tab5" CssClass="Initial" runat="server"
                        OnClick="Tab5_Click" />--%>
                     <asp:Button Text="Interview Invite" BorderStyle="None" ID="Tab3" CssClass="Initial" runat="server"
                        OnClick="Tab3_Click" />
                    <asp:Button Text="Evidence Request" BorderStyle="None" ID="Tab4" CssClass="Initial" runat="server"
                        OnClick="Tab4_Click" />
                    <asp:MultiView ID="MainView" runat="server">
                        <asp:View ID="View1" runat="server">
                            <table class="groove">
                                <tr>
                                    <td>
                                        <h3>
                                            <span>
                                                <br />
                                                


                                                <table style="width: 100%;">
                                                    <tr>
                                                        <td class="auto-style3">
                                                            <span>
                                                            <asp:Button ID="Button6" runat="server" class="button button2"  OnClick="Button1_Click" Text="Close" />
                                                            </span></td>
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
                                                            <asp:DetailsView ID="DetailsView1" runat="server" Height="16px" Width="814px" AutoGenerateRows="False" DataKeyNames="Case_ID" DataSourceID="EntityDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="Case_ID" HeaderText="Case ID" ReadOnly="True" SortExpression="Case_ID" />
            <asp:TemplateField HeaderText="Case Type"  SortExpression="Case Type"><ItemTemplate><asp:Label ID="Label2" runat="server" Text='<%# Eval("CaseType.Case_Type") %>'></asp:Label></ItemTemplate></asp:TemplateField>
            <asp:BoundField DataField="Case_Start_Date" ReadOnly="True" HeaderText="Start Date" SortExpression="Case_Start_Date" />
       
             <asp:TemplateField HeaderText="End Date" SortExpression="Case_End_Date"><EditItemTemplate><asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Case_End_Date") %>' TextMode="Date"></asp:TextBox></EditItemTemplate><ItemTemplate><asp:Label ID="Label4" runat="server" Text='<%# Bind("Case_End_Date") %>'></asp:Label></ItemTemplate></asp:TemplateField>
            <asp:TemplateField HeaderText="Status" SortExpression="Case_Status"><EditItemTemplate><asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="EntityDataSource2" Text='<%# Bind("Case_Status") %>' DataTextField="Case_Status1" DataValueField="Case_Status_ID"></asp:DropDownList></EditItemTemplate><ItemTemplate><asp:Label ID="Label3" runat="server" Text='<%# Bind("Case_Status1.Case_Status1") %>'></asp:Label></ItemTemplate></asp:TemplateField>
            <asp:BoundField DataField="Case_Details" HeaderText="Details" SortExpression="Case_Details" />
            <asp:BoundField DataField="Case_Duration" HeaderText="Duration" SortExpression="Case_Duration" />
            <asp:TemplateField HeaderText="Case Verdict" SortExpression="Case_Verdict"><EditItemTemplate><asp:DropDownList ID="verdictdropdown" runat="server" Text='<%# Bind("Case_Verdict") %>' DataSourceID="EntityDataSource3" DataTextField="Case_Verdict1" DataValueField="Case_Verdict_ID"></asp:DropDownList></EditItemTemplate><ItemTemplate><asp:Label ID="Label1" runat="server" Text='<%# Eval("Case_Verdict1.Case_Verdict1") %>'></asp:Label></ItemTemplate></asp:TemplateField>
            <asp:BoundField DataField="Employee_ID" HeaderText="Employee ID" SortExpression="Employee_ID" />
            <asp:TemplateField HeaderText="Case Handler ID" SortExpression="Case Handler ID"><EditItemTemplate><asp:DropDownList ID="DropDownList2" runat="server" Text='<%# Bind("Case_Handler_ID") %>' DataSourceID="EntityDataSource4" DataTextField="CH_Employee_ID" DataValueField="CH_Employee_ID"></asp:DropDownList></EditItemTemplate><ItemTemplate><asp:Label ID="Label4" runat="server" Text='<%# Bind("Case_Handler_ID") %>'></asp:Label></ItemTemplate></asp:TemplateField>
            <asp:BoundField DataField="Requester_ID" HeaderText="Requester ID" ReadOnly="True" SortExpression="Requester_ID" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>
    </div>
    <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EnableUpdate="True" EntitySetName="InvestigationCase1" Include="Case_Verdict1,CaseType,Case_Status1,Case_Handler" Where="it.Case_ID=@idparam" ><WhereParameters><asp:ControlParameter ControlID="lpCaseID" DbType="Int32" DefaultValue="1" Name="idparam" PropertyName="Text" /></WhereParameters></asp:EntityDataSource>
 
&nbsp;<%--<asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="EntityDataSource3" DataTextField="Case_Verdict1" DataValueField="Case_Verdict_ID">
    </asp:DropDownList>--%><asp:EntityDataSource ID="EntityDataSource3" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="Case_Verdict"></asp:EntityDataSource>
    <asp:EntityDataSource ID="EntityDataSource2" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="Case_Status"></asp:EntityDataSource>
    <asp:EntityDataSource ID="EntityDataSource4" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="Case_Handler"></asp:EntityDataSource>
   
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>

                                                    </tr>
                                                </table>

                                                </div>

                                            </span>
                                            <h3></h3>
                                            <h3></h3>
                                            <h3></h3>
                                           
                                            <h3></h3>
                                            <h3></h3>
                                            <h3></h3>
                                            <h3></h3>
                                            <h3></h3>
                                            <h3></h3>
                                            <h3></h3>
                                            <h3></h3>
                                        </h3>
                                    </td>
                                </tr>
                            </table>
                        </asp:View>
                        <%--<asp:View ID="View2" runat="server">
                            <table class="groove">
                                <tr>
                                    <td>
                                        <h3>
                                          
                                         
                                                <h3 style="color: #051e80">Reallocate Case </h3>
                                                <asp:RadioButtonList ID="RadioButtonList2" runat="server" DataSourceID="EntityDataSource6" DataTextField="Case_Handler_Type" DataValueField="CH_Employee_ID">
                                                </asp:RadioButtonList>
                                            <asp:EntityDataSource ID="EntityDataSource6" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="Case_Handler"></asp:EntityDataSource>
                                            
                                            <h3 class="auto-style3">                                      <asp:Button ID="Button1" runat="server" class="button button2"  OnClick="Button1_Click" Text="Submit" />
</h3>
                                                <h3></h3>
                                        </h3>
                                    </td>
                                </tr>
                            </table>
                        </asp:View>--%>
                        <asp:View ID="View2" runat="server">
                            <table class="groove">
                                <tr>
                                    <td>
                                        <h3>
                                      
                                                <h3 style="color: #051e80">Evidnece Details  </h3>
                                            
                                            <table style="width: 100%;">
                                                <tr>
                                                    <td>&nbsp;</td>
                                                 
                                                </tr>
                                                <tr>
                                                    <td>
                                                         <div id="detailsPane2" >
                                                                <br />
                                                              <h3>  Details of case number: 
            <asp:Label ID="lbEvid" runat="server" Text=""></asp:Label></h3>
                                                        <asp:DetailsView ID="DetailsView2" runat="server" Height="16px" Width="814px" AutoGenerateRows="False" DataKeyNames="Evidence_ID" DataSourceID="EntityDataSource8" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                                                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                            <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                                                            <EditRowStyle BackColor="#999999" />
                                                            <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                                                            <Fields>
                                                                <asp:BoundField DataField="Evidence_ID" HeaderText="Evidence ID" ReadOnly="True" SortExpression="Evidence_ID" />
                                                                <asp:BoundField DataField="Evidence_Type" HeaderText="Evidence Type" SortExpression="Evidence_Type" />
                                                                <asp:BoundField DataField="Evidence_Date" HeaderText="Evidence Date" SortExpression="Evidence_Date" />
                                                                <asp:BoundField DataField="Evidence_Details" HeaderText="Evidence Details" SortExpression="Evidence_Details" />
                                                                <asp:BoundField DataField="Requester_ID" HeaderText="Employee ID" SortExpression="Requester_ID" />
                                                                <asp:BoundField DataField="Case_ID" HeaderText="Case ID" SortExpression="Case_ID" />
                                                                <asp:BoundField DataField="FileName" HeaderText="File Name" SortExpression="FileName" />
                                                                <asp:TemplateField HeaderText="Eviddoc">
                   <ItemTemplate>  
                        <asp:LinkButton ID="lnkDownload" runat="server" Text="Download" OnClick="DownloadFile"  
                            CommandArgument='<%# Eval("Evidence_ID") %>'></asp:LinkButton>  
                    </ItemTemplate>  
               </asp:TemplateField>
                                                            </Fields>
                                                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                                        </asp:DetailsView>
                                                        <asp:EntityDataSource ID="EntityDataSource8" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="Evidences"  Where="it.Case_ID=@idparam &amp;&amp; it.Requester_ID=@emIdparam">
                                                            <WhereParameters>
                                                                <asp:ControlParameter ControlID="lbEvid" DbType="Int32" DefaultValue="1" Name="idparam" PropertyName="Text" />
                                                              <asp:SessionParameter DbType="String" Name="emIdparam" SessionField="emID" />
                                                             </WhereParameters></asp:EntityDataSource>
                                                             </div>
                                                    </td>
                                                 
                                                </tr>
                                                <tr>
                                                    <td>&nbsp;</td>
                                                    
                                                </tr>
                                            </table>

                                            <h3>

                                            </h3>

                                            <h3></h3>

                                            <h3></h3>

                                                <h3></h3>

                                                <h3></h3>

                                                <h3></h3>

                                                <h3></h3>

                                        </h3>
                                    </td>
                                </tr>
                            </table>
                        </asp:View>
                       
                       <%--<%-- <asp:View ID="View4" runat="server">
                            <table class="groove">
                                <tr>
                                    <td>
                                        <h3>

                                            
                                                <h3 style="color: #051e80">Interview Invitation Request</h3>
                                                <table style="width: 100%;">
                                                    <tr>
                                                        <td class="auto-style2">
                                                            <asp:Label class="text" ID="Label2" runat="server" Text="Case Handler ID"></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="iichtxt" runat="server" CssClass="input" placeholder="Employee ID"></asp:TextBox>   -- %>--%>
                                              
                       <%-- <asp:View ID="View4" runat="server">
                            <table class="groove">
                                <tr>
                                    <td>
                                        <h3>
                                            
                                                <h3 style="color: #051e80">Investigation Interview </h3>
                                              
                                           
                                            <h3> Details of case number: 
            <asp:Label ID="InterviewLabel" runat="server" Text=""></asp:Label></h3>

                                            <h3>
                                                <asp:DetailsView ID="DetailsView3" runat="server" Height="16px" Width="814px" AutoGenerateRows="False" DataKeyNames="Investigation_Interview_ID,Investigation_Interview_Date,Investigation_Interview_Location,Investigation_Interview_Interviewee_ID,Investigation_Interview_Interviewer_ID,Case_ID" DataSourceID="EntityDataSource9" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                                                    <EditRowStyle BackColor="#999999" />
                                                    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                                                    <Fields>
                                                        <asp:BoundField DataField="Investigation_Interview_ID" HeaderText="Investigation_Interview_ID" ReadOnly="True" SortExpression="Investigation_Interview_ID" />
                                                        <asp:BoundField DataField="Investigation_Interview_Date" HeaderText="Interview Date" ReadOnly="True" SortExpression="Investigation_Interview_Date" />
                                                        <asp:BoundField DataField="Investigation_Interview_Time" HeaderText="Interview Time" SortExpression="Investigation_Interview_Time" />
                                                        <asp:BoundField DataField="Investigation_Interview_Location" HeaderText="Interview Location" ReadOnly="True" SortExpression="Investigation_Interview_Location" />
                                                        <asp:BoundField DataField="Investigation_Interview_Interviewee_ID" HeaderText="Interviewee ID" ReadOnly="True" SortExpression="Investigation_Interview_Interviewee_ID" />
                                                        <asp:BoundField DataField="Investigation_Interview_Interviewer_ID" HeaderText="Interviewer ID" ReadOnly="True" SortExpression="Investigation_Interview_Interviewer_ID" />
                                                        <asp:BoundField DataField="Investigation_Interview_Memo" HeaderText="Interview Memo" SortExpression="Investigation_Interview_Memo" />
                                                        <asp:BoundField DataField="Case_ID" HeaderText="Case ID" ReadOnly="True" SortExpression="Case_ID" />
                                                        <asp:BoundField DataField="Question_Details" HeaderText="Question" SortExpression="Question_Details" />
                                                        <asp:BoundField DataField="Answer_Details" HeaderText="Answer" SortExpression="Answer_Details" />
                                                    </Fields>
                                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                                </asp:DetailsView>
                                                <asp:EntityDataSource ID="EntityDataSource9" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="Interview_View" Where="it.Case_ID=@idparam"><WhereParameters><asp:ControlParameter ControlID="InterviewLabel" DbType="Int32" DefaultValue="1" Name="idparam" PropertyName="Text" /></WhereParameters></asp:EntityDataSource>
                                            </h3>

                                                <h3></h3>

                                                <h3></h3>

                                                <h3></h3>

                                                <h3></h3>

                                        </h3>
                                    </td>
                                </tr>
                            </table>
                        </asp:View>--%>
                     <%--   <asp:View ID="View5" runat="server">
                           <table class="groove">
                                <tr>
                                    <td>
                                        <h3>
                                            
                                                <h3 style="color: #051e80">Termination </h3>
                                              
                                           
                                            <h3> Details of case number: 
            <asp:Label ID="TerminationLabel" runat="server" Text=""></asp:Label></h3>

                                            <h3>
                                                <asp:DetailsView ID="DetailsView4" runat="server" Height="16px" Width="814px" AutoGenerateRows="False" DataKeyNames="Termination_Request_ID" DataSourceID="EntityDataSource10" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                                                    <EditRowStyle BackColor="#999999" />
                                                    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                                                    <Fields>
                                                        <asp:BoundField DataField="Termination_Request_ID" HeaderText="Termination Request ID" ReadOnly="True" SortExpression="Termination_Request_ID" />
                                                        <asp:BoundField DataField="Termination_Request_Date" HeaderText="Termination Request Date" SortExpression="Termination_Request_Date" />
                                                        <asp:BoundField DataField="Termination_Request_Justification" HeaderText="Termination Request Justification" SortExpression="Termination_Request_Justification" />
                                                        <asp:BoundField DataField="Case_ID" HeaderText="Case ID" SortExpression="Case_ID" />
                                                        <asp:BoundField DataField="Employee_ID" HeaderText="Employee ID" SortExpression="Employee_ID" />
                                                    </Fields>
                                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                                </asp:DetailsView>
                                                <asp:EntityDataSource ID="EntityDataSource10" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="Termination_Requests" Where="it.Case_ID=@idparam"><WhereParameters><asp:ControlParameter ControlID="TerminationLabel" DbType="Int32" DefaultValue="1" Name="idparam" PropertyName="Text" /></WhereParameters></asp:EntityDataSource>
                                            </h3>

                                                <h3></h3>

                                                <h3></h3>

                                                <h3></h3>

                                                <h3></h3>

                                                <h3></h3>

                                                <h3></h3>

                                        </h3>
                                    </td>
                                </tr>
                            </table>
                            
                        </asp:View>--%>
                         <asp:View ID="View3" runat="server">
                           <table class="groove">
                                <tr>
                                    <td>
                                        <h3>
                                            
                                                <h3 style="color: #051e80">Interview Invite</h3>
                                              
                                           
                                            <h3> Details of case number: 
            <asp:Label ID="InviteLabel" runat="server" Text=""></asp:Label></h3>

                                            <h3>
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
  <asp:TemplateField HeaderText="Interview_Invitation_Acceptance" SortExpression="Interview_Invitation_Acceptance">
                                                            <EditItemTemplate>
   <asp:RadioButtonList ID="RadioButtonList1" runat="server" >
        <asp:ListItem>Yes</asp:ListItem>
        <asp:ListItem>No</asp:ListItem>
      </asp:RadioButtonList>

<%--                                                                  <asp:DropDownList ID="DropDownList1" runat="server" >
        <asp:ListItem>Yes</asp:ListItem>
        <asp:ListItem>No</asp:ListItem>
      </asp:DropDownList>
                     --%>                                       </EditItemTemplate>
                                                            
                                                            <ItemTemplate>
                                                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Interview_Invitation_Acceptance") %>'></asp:Label>
                                                            </ItemTemplate> 
      </asp:TemplateField>
                                                        <asp:BoundField DataField="Case_Handler_ID" HeaderText="Case Handler ID" ReadOnly="True" SortExpression="Case_Handler_ID" />
                                                        <asp:BoundField DataField="Interview_Invitation_Invitee" HeaderText="Interview Invitation Invitee" ReadOnly="True" SortExpression="Interview_Invitation_Invitee" />
                                                        <asp:BoundField DataField="Interview_Invitation_Details" HeaderText="Interview Invitation Details" ReadOnly="True" SortExpression="Interview_Invitation_Details" />
                                                        <asp:BoundField DataField="Case_ID" HeaderText="Case ID" ReadOnly="True" SortExpression="Case_ID" />
                                                    </Fields>
                                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                                </asp:DetailsView>
                                                <asp:EntityDataSource ID="EntityDataSource5" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="Interview_Invite" Where="it.Case_ID=@idparam &amp;&amp; it.Interview_Invitation_Invitee=@emparam" EnableUpdate="True">
                                                    <WhereParameters>
                                                        <asp:ControlParameter ControlID="InviteLabel" DbType="Int32" DefaultValue="1" Name="idparam" PropertyName="Text" />
                                                        <asp:SessionParameter DbType="String" Name="emparam" SessionField="emID" />
                                                    </WhereParameters></asp:EntityDataSource>
                                            </h3>

                                                <h3></h3>

                                                <h3></h3>

                                                <h3></h3>

                                                <h3></h3>

                                                <h3></h3>

                                                <h3></h3>

                                                <h3></h3>

                                                <h3></h3>

                                                <h3></h3>

                                        </h3>
                                    </td>
                                </tr>
                            </table>
                            
                        </asp:View>
                          <asp:View ID="View4" runat="server">
                           <table class="groove">
                                <tr>
                                    <td>
                                        <h3>
                                            
                                                <h3 style="color: #051e80">Evidence Request </h3>
                                              
                                           
                                            <h3> Details of case number: 
            <asp:Label ID="EvidRequest" runat="server" Text=""></asp:Label></h3>

                                            <h3>
                                                <asp:DetailsView ID="DetailsView6" runat="server" Height="16px" Width="814px" AutoGenerateRows="False" DataKeyNames="Evidence_Request_ID" DataSourceID="EntityDataSource7" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                                                    <EditRowStyle BackColor="#999999" />
                                                    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                                                    <Fields>
                                                        <asp:BoundField DataField="Evidence_Request_ID" HeaderText="Evidence Request ID" ReadOnly="True" SortExpression="Evidence_Request_ID" />
                                                        <asp:BoundField DataField="Evidence_Request_Details" HeaderText="Evidence Request Details" SortExpression="Evidence_Request_Details" />
                                                        <asp:BoundField DataField="Case_Handler" HeaderText="Case Handler ID" SortExpression="Case_Handler" />
                                                        <asp:BoundField DataField="Employee" HeaderText="Employee ID" SortExpression="Employee" />
                                                        <asp:BoundField DataField="Case_ID" HeaderText="Case ID" SortExpression="Case_ID" />
                                                        <asp:BoundField DataField="evidence_request_date" HeaderText="Evidence Request Date" SortExpression="evidence_request_date" />
                                                    </Fields>
                                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                                </asp:DetailsView>
                                                <asp:EntityDataSource ID="EntityDataSource7" runat="server" ConnectionString="name=Investigation_management_systemEntities4" DefaultContainerName="Investigation_management_systemEntities4" EnableFlattening="False" EntitySetName="Evidence_Request" Where="it.Case_ID=@idparam &amp;&amp; it.Employee=@empIdparam         ">
                                                    <WhereParameters>
                                                        <asp:ControlParameter ControlID="InviteLabel" DbType="Int32" DefaultValue="1" Name="idparam" PropertyName="Text" />
                                                        <asp:SessionParameter DbType="String" Name="empIdparam" SessionField="emID" />

                                                    </WhereParameters></asp:EntityDataSource>
                                            </h3>

                                                <h3></h3>

                                                <h3></h3>

                                                <h3></h3>

                                                <h3></h3>

                                                <h3></h3>

                                                <h3></h3>

                                                <h3></h3>

                                                <h3></h3>

                                        </h3>
                                    </td>
                                </tr>
                            </table>
                            
                        </asp:View>
                    </asp:MultiView>
                </td>
            </tr>
        </table>

    </body>
</asp:Content>
