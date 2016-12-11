<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TraitManagement.aspx.cs" Inherits="Admin_TraitManagement" MasterPageFile="~/defaultMasterPage.master" %>
<asp:content id="Content2" ContentPlaceHolderID="pageContent" runat="server">
    <html xmlns="http://www.w3.org/1999/xhtml">
        <head>
            <title>HRMS - Leave Details</title>
        </head>
        <body>
             <div class="container" style="width:auto;">
                 <div class="col-lg-2">
                    <div>
                
                    </div>
                </div>
                <div>
                    <div class="col-lg-9" style="height:500px;">
                        <fieldset>
                            <legend style="text-align:center">Trait Management</legend>
                            <div class="form-group">
                                <asp:Label ID="lblListofTraits" runat="server" Text="List of Traits" CssClass="col-lg-5"></asp:Label>
                                <div class="col-lg-5">
                                    <asp:DropDownList ID="ddlTraits" runat="server" CssClass="col-lg-12"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lvlEmployeeName" runat="server" Text="Employee Name" CssClass="col-lg-5"></asp:Label>
                                <div class="col-lg-5">
                                    <asp:DropDownList ID="ddlEmployee" runat="server" CssClass="col-lg-12"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblDepartment" runat="server" Text="Department" CssClass="col-lg-5"></asp:Label>
                                <div class="col-lg-5">                                    
                                    <asp:Label ID="lblDepartmentData" runat="server" CssClass="col-lg-12" Visible="false"></asp:Label>
                                    <asp:TextBox ID="txtDepartment" runat="server" CssClass="col-lg-12" ></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblDesignation" runat="server" Text="Designation" CssClass="col-lg-5"></asp:Label>
                                <div class="col-lg-5">                                    
                                    <asp:Label ID="lblDesignationData" runat="server" CssClass="col-lg-5" Visible="false"></asp:Label>
                                    <asp:TextBox ID="txtDesignation" runat="server" CssClass="col-lg-12" ></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblComments" runat="server" Text="Comments" CssClass="col-lg-5"></asp:Label>
                                <div class="col-lg-5">                                    
                                    <asp:Label ID="lblCommentsData" runat="server" CssClass="col-lg-5" Visible="false"></asp:Label>
                                    <asp:TextBox ID="TextBox2" runat="server" Width="400px" Height="100px"></asp:TextBox>
                                </div>
                            </div>
                        <div class="form-group">
                            <div class="col-lg-12 col-lg-offset-3">
                                                         
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-12 col-lg-offset-3">
                                <asp:Button ID="btnAddTraitDetails" runat="server" CssClass="btn btn-primary" Text="Add Traits" OnClick="btnAddTraitDetails_Click" />
                                
                                <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-warning" Text="Cancel" />                              
                            </div>
                        </div>
                        </fieldset>
                    </div>                    
                </div>
            </div>
        </body>
    </html>
</asp:content>