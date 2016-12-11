<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PolicyDocuments.aspx.cs" Inherits="Admin_PolicyDocuments" MasterPageFile="~/defaultMasterPage.master" %>

<asp:content id="Content1" ContentPlaceHolderID="pageContent" runat="server">
    <html xmlns="http://www.w3.org/1999/xhtml">
        <head>
            <title>HRMS - Policy Documents</title>
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
                        <legend style="text-align:center">Policy documents</legend>
                        <div class="form-group">
                            <asp:Label ID="lblSchoolRulesBook" runat="server" Text="School Rules Book" CssClass="col-lg-4"></asp:Label>
                            <div class="col-lg-4">
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </div>
                            <div class="col-lg-2">
                                <asp:Button ID="btnAddSalaryDetails" runat="server" CssClass="btn btn-primary" Text="Submit" />
                            </div>
                            <div class="col-lg-2">
                                <asp:Button ID="Button3" runat="server" CssClass="btn btn-warning" Text="View" />
                            </div>                             
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Text="School Rules Book" CssClass="col-lg-4"></asp:Label>
                            <div class="col-lg-4">
                                <asp:FileUpload ID="flUpHealthSafetyGuidelines" runat="server" />
                            </div>
                            <div class="col-lg-2">
                                <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" Text="Submit" />
                            </div>   
                            <div class="col-lg-2">
                                <asp:Button ID="Button4" runat="server" CssClass="btn btn-warning" Text="View" />
                            </div>                          
                        </div>
                        <div class="form-group">
                            <asp:Label ID="Label2" runat="server" Text="Holiday Policy" CssClass="col-lg-4"></asp:Label>
                            <div class="col-lg-4">
                                <asp:FileUpload ID="flUpHolidayPolicy" runat="server" />
                            </div>
                            <div class="col-lg-2">
                                <asp:Button ID="Button2" runat="server" CssClass="btn btn-primary" Text="Submit" />
                            </div>     
                            <div class="col-lg-2">
                                <asp:Button ID="Button5" runat="server" CssClass="btn btn-warning" Text="View" />
                            </div>                        
                        </div>
                        
                    </fieldset>
                </div>
                    
                </div>
            </div>
        </body>
    </html>
</asp:Content>