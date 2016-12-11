<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PersonalDetails.aspx.cs" Inherits="Teacher_PersonalDetails" MasterPageFile="~/defaultMasterPage.master" %>


<asp:content id="Content1" ContentPlaceHolderID="pageContent" runat="server">
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
                    <div class="col-lg-9">
                        <fieldset>
                            <legend style="text-align:center">Personal Details</legend>
                            <div class="form-group">
                                <asp:Label ID="lblName" runat="server" Text="Name" CssClass="col-lg-5"></asp:Label>
                                <div class="col-lg-5">                                    
                                    <asp:Label ID="lblNameData" runat="server" CssClass="col-lg-12" Visible="false"></asp:Label>
                                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control" ></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblAddress" runat="server" Text="Address" CssClass="col-lg-5"></asp:Label>
                                <div class="col-lg-5">                                    
                                    <asp:Label ID="lblAddressData" runat="server" CssClass="col-lg-12" Visible="false"></asp:Label>
                                    <asp:TextBox ID="txtAddress" runat="server" Height="50px" TextMode="MultiLine" Width="284px"  CssClass="form-control" ></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblMobile" runat="server" Text="Mobile" CssClass="col-lg-5"></asp:Label>
                                <div class="col-lg-5">                                    
                                    <asp:Label ID="lblMobileData" runat="server" CssClass="col-lg-12" Visible="false"></asp:Label>
                                    <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" ></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblEmail" runat="server" Text="Email" CssClass="col-lg-5"></asp:Label>
                                <div class="col-lg-5">                                    
                                    <asp:Label ID="lblEmailData" runat="server" CssClass="col-lg-12" Visible="false"></asp:Label>
                                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" ></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblEducation" runat="server" Text="Education" CssClass="col-lg-5"></asp:Label>
                                <div class="col-lg-5">                                    
                                    <asp:Label ID="lblEducationData" runat="server" CssClass="col-lg-12" Visible="false"></asp:Label>
                                    <asp:TextBox ID="txtEducation" runat="server" CssClass="form-control" ></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblDesignation" runat="server" Text="Designation" CssClass="col-lg-5"></asp:Label>
                                <div class="col-lg-5">                                    
                                    <asp:Label ID="lblDesignationData" runat="server" CssClass="col-lg-12" Visible="false"></asp:Label>
                                    <asp:TextBox ID="txtDesignation" runat="server" CssClass="form-control" ></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblDateOfHiring" runat="server" Text="Date of Hiring" CssClass="col-lg-5"></asp:Label>
                                <div class="col-lg-5">                                    
                                    <asp:Label ID="lblDateOfHiringData" runat="server" CssClass="col-lg-12" Visible="false"></asp:Label>
                                    <asp:TextBox ID="txtDateOfHiring" runat="server" CssClass="form-control" ></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblSupervisor" runat="server" Text="Supervisor" CssClass="col-lg-5"></asp:Label>
                                <div class="col-lg-5">                                    
                                    <asp:DropDownList ID="ddlSupervisor" runat="server" CssClass="form-control ddl" AutoPostBack="false"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="lblRole" runat="server" Text="Role" CssClass="col-lg-5"></asp:Label>
                                <div class="col-lg-5">                                    
                                    <asp:DropDownList ID="ddlRole" runat="server" CssClass="form-control ddl" AutoPostBack="false"></asp:DropDownList>
                                </div>
                            </div>                            
                            <div class="form-group col-lg-5">
                                <asp:LinkButton ID="lnkTimesheet" runat="server">Timesheet</asp:LinkButton>
                            </div>
                        <div class="form-group">
                            <div class="col-lg-12 col-lg-offset-3">
                                                         
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-12 col-lg-offset-3">
                                <asp:Button ID="btnAddPersonalDetails" runat="server" CssClass="btn btn-primary" Text="Add Personal Details" OnClick="btnAddPersonalDetails_Click" />
                                
                                <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-warning" Text="Cancel" OnClick="btnCancel_Click" />                              
                            </div>
                        </div>
                        </fieldset>
                    </div>                    
                </div>
            </div>
        </body>
    </html>
</asp:content>