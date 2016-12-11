<%@ Page Title="" Language="C#" MasterPageFile="~/defaultMasterPage.master" AutoEventWireup="true" CodeFile="SalaryDetails.aspx.cs" Inherits="SalaryDetails" %>

<asp:Content ID="Content2" ContentPlaceHolderID="pageContent" Runat="Server">
    <html xmlns="http://www.w3.org/1999/xhtml">
        <head>
            <title>HRMS - Salary Details</title>
        </head>
        <body>
             <div class="container" style="width:auto;">
                 <div class="col-lg-3">
                    <div>
                
                    </div>
                </div>
                <div>
                    <div class="col-lg-6">
                    <fieldset>
                        <legend style="text-align:center">Salary Details</legend>
                         <div class="form-group">
                            <asp:Label ID="lblBasic" runat="server" Text="Basic" CssClass="col-lg-7"></asp:Label>
                            <div class="col-lg-5">
                                <asp:Label ID="lblBasicData" runat="server" CssClass="col-lg-5" Visible="false"></asp:Label>
                                <asp:TextBox ID="txtBasic" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                         <div class="form-group">
                            <asp:Label ID="lblVariable" runat="server" Text="Variable" CssClass="col-lg-7"></asp:Label>
                            <div class="col-lg-5">
                                <asp:Label ID="lblVariableData" runat="server" CssClass="form-control" Visible="false"></asp:Label>
                                <asp:TextBox ID="txtVariable" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                         <div class="form-group">
                            <asp:Label ID="lblTaxDeducted" runat="server" Text="Tax Deducted" CssClass="col-lg-7"></asp:Label>
                            <div class="col-lg-5">
                                <asp:Label ID="lblTaxDeductedData" runat="server" CssClass="form-control" Visible="false"></asp:Label>
                                <asp:TextBox ID="txtTaxDeducted" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                         <div class="form-group">
                            <asp:Label ID="lblPension" runat="server" Text="Pension" CssClass="col-lg-7"></asp:Label>
                            <div class="col-lg-5">
                                <asp:Label ID="lblPensionData" runat="server" CssClass="form-control" Visible="false"></asp:Label>
                                <asp:TextBox ID="txtPension" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
<%--                         <div class="form-group">
                            <asp:Label ID="Label1" runat="server" Text="Gratuity" CssClass="col-lg-7"></asp:Label>                            
                        </div>--%>
                         <div class="form-group">
                            <asp:Label ID="lblGratuityNumber" runat="server" Text="Gratuity Number" CssClass="col-lg-7"></asp:Label>
                            <div class="col-lg-5">
                                <asp:Label ID="lblGratuityNumberData" runat="server" CssClass="form-control" Visible="false"></asp:Label>
                                <asp:TextBox ID="txtGratuityNumber" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                         <div class="form-group">
                            <asp:Label ID="lblGratuitySum" runat="server" Text="Gratuity Sum" CssClass="col-lg-7"></asp:Label>
                            <div class="col-lg-5">
                                <asp:Label ID="lblGratuitySumData" runat="server" CssClass="form-control" Visible="false"></asp:Label>
                                <asp:TextBox ID="txtGratuitySum" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
<%--                         <div class="form-group">
                            <asp:Label ID="lblPF" runat="server" Text="PF" CssClass="col-lg-5"></asp:Label>                            
                        </div>--%>
                         <div class="form-group">
                            <asp:Label ID="lblPFNumber" runat="server" Text="PF Number" CssClass="col-lg-7"></asp:Label>
                            <div class="col-lg-5">
                                <asp:Label ID="lblPFNumberData" runat="server" CssClass="form-control" Visible="false"></asp:Label>
                                <asp:TextBox ID="txtPFNumber" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
<%--                        <div class="form-group">
                            <div class="col-lg-12 col-lg-offset-3">
                                                         
                            </div>
                        </div>--%>
                         <div class="form-group">
                            <asp:Label ID="lblPFSum" runat="server" Text="PF Sum" CssClass="col-lg-7"></asp:Label>
                            <div class="col-lg-5">
                                <asp:Label ID="lblPFSumData" runat="server" CssClass="form-control" Visible="false"></asp:Label>
                                <asp:TextBox ID="txtPFSum" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-12 col-lg-offset-3">
                                                         
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-12 col-lg-offset-3">
                                <asp:Button ID="btnAddSalaryDetails" runat="server" CssClass="btn btn-primary" Text="Add Salary" OnClick="btnAddSalaryDetails_Click" />
                                
                                <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-warning" Text="Cancel" OnClick="btnCancel_Click"  />                              
                            </div>
                        </div>
                    </fieldset>
                </div>
                    
                </div>
            </div>
        </body>
    </html>
</asp:Content>
    