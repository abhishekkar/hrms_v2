<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LeaveDetails.aspx.cs" Inherits="Teacher_LeaveDetails"  MasterPageFile="~/defaultMasterPage.master" %>

<asp:content id="Content1" ContentPlaceHolderID="pageContent" runat="server">
    <html xmlns="http://www.w3.org/1999/xhtml">
        <head>
            <title>HRMS - Leave Details</title>
        </head>
        <body>
             <div class="container" style="width:auto">
                 <div class="col-lg-3">
                    <div>
                
                    </div>
                </div>
                <div>
                    <div class="col-lg-6" style="height:500px;">
                    <fieldset>
                        <legend style="text-align:center">Leave details</legend>
                         <div class="form-group">
                            <asp:Label ID="lblMaternityLeave" runat="server" Text="Maternity Leave" CssClass="col-lg-7"></asp:Label>
                            <div class="col-lg-5">
                                <asp:Label ID="lblMaternityLeaveData" runat="server" CssClass="col-lg-5" Visible="false"></asp:Label>
                                <asp:TextBox ID="txtMaternityLeave" runat="server"></asp:TextBox>
                            </div>
                        </div>
                         <div class="form-group">
                            <asp:Label ID="lblPaidSickLeave" runat="server" Text="Paid Sick Leave" CssClass="col-lg-7"></asp:Label>
                            <div class="col-lg-5">
                                <asp:Label ID="lblPaidSickLeaveData" runat="server" CssClass="form-control" Visible="false"></asp:Label>
                                <asp:TextBox ID="txtPaidSickLeave" runat="server"></asp:TextBox>
                            </div>
                        </div>
                         <div class="form-group">
                            <asp:Label ID="lblPaternityLeave" runat="server" Text="Paternity Leave" CssClass="col-lg-7"></asp:Label>
                            <div class="col-lg-5">
                                <asp:Label ID="lblPaternityLeaveData" runat="server" CssClass="form-control" Visible="false"></asp:Label>
                                <asp:TextBox ID="txtPaternityLeave" runat="server"></asp:TextBox>
                            </div>
                        </div>
                         <div class="form-group">
                            <asp:Label ID="lblPaidLeavesRemaining" runat="server" Text="Paid Leaves Remaining" CssClass="col-lg-7"></asp:Label>
                            <div class="col-lg-5">
                                <asp:Label ID="lblPaidLeavesRemainingData" runat="server" CssClass="form-control" Visible="false"></asp:Label>
                                <asp:TextBox ID="txtPaidLeavesRemaining" runat="server"></asp:TextBox>
                            </div>
                        </div>
                         <div class="form-group">
                            <asp:Label ID="lblLeavesApplied" runat="server" Text="Leaves Applied" CssClass="col-lg-7"></asp:Label>
                            <div class="col-lg-5">
                                <asp:Label ID="lblLeavesAppliedData" runat="server" CssClass="form-control" Visible="false"></asp:Label>
                                <asp:TextBox ID="txtLeavesApplied" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-12 col-lg-offset-3">
                                                         
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-12 col-lg-offset-3">
                                <asp:Button ID="btnAddLeaveDetails" runat="server" CssClass="btn btn-primary" Text="Add Leave" OnClick="btnAddLeaveDetails_Click" />
                                
                                <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-warning" Text="Cancel" />                              
                            </div>
                        </div>
                    </fieldset>
                </div>
                    
                </div>
            </div>
        </body>
    </html>
</asp:Content>
<%--
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Leave Details</title>
    <style type="text/css">
        .auto-style1
        {
            width: 59%;
            height: 210px;
        }
        .auto-style2
        {
            text-align: left;
            width: 198px;
        }
        .auto-style3
        {
            text-align: left;
        }
        </style>
</head>
<body bgcolor="4682B4" height="80%" border="1" bordercolor="black" borderstyle="solid">
    
    <div style="text-align: center">
        <h1><span style="font-family: &quot;Gill Sans MT&quot;; mso-ascii-font-family: &quot;Gill Sans MT&quot;; mso-fareast-font-family: +mj-ea; mso-bidi-font-family: +mj-cs; font-variant: normal; color: black; mso-color-index: 1; text-transform: uppercase; mso-font-kerning: 12.0pt; language: en-GB; font-weight: normal;font-style:normal">Leave details</span></h1>
        <br />
        <br />
        <table class="pageStyle">
            <tr>
                <td class="auto-style2">Maternity Leave</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtMaternityLeave" runat="server" Width="247px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Paid Sick Leave</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtPaidSickLeave" runat="server" Width="247px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Paternity Leave</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtPaternityLeave" runat="server" Width="248px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Paid Leaves Remaining</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtPaidLeavesRemaining" runat="server" Width="248px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Leaves Applied</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtLeaveApplied" runat="server" Width="248px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td style="text-align: left">
                    <asp:Button ID="btnAddLeaveDetails" runat="server" style="text-align: left" Text="Add Leave Details" OnClick="btnAddLeaveDetails_Click" />
                </td>
            </tr>
        </table>
    
    </div>
</body>
    </html>
</asp:content>--%>
