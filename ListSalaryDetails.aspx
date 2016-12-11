<%@ Page Title="" Language="C#" MasterPageFile="~/defaultMasterPage.master" AutoEventWireup="true" CodeFile="ListSalaryDetails.aspx.cs" Inherits="ListSalaryDeatils" %>

<asp:Content ID="Content1" ContentPlaceHolderID="pageContent" Runat="Server">
    
    <html xmlns="http://www.w3.org/1999/xhtml">
        <head>
            <title>HRMS - List Salary Details</title>
        </head>
        <body>
             <div class="container" style="width:auto;">
                 <%--<div class="col-lg-2">
                    <div>
                
                    </div>
                </div>--%>
                <div>
                    <div class="col-lg-14">
                        <fieldset>
                            <legend style="text-align:center">List Salary Details</legend>
                            <div class="form-group">
                                <div class="col-lg-12" style="text-align:right">
                                    <asp:LinkButton ID="lnkAddSalaryDetails" runat="server" PostBackUrl="SalaryDetails.aspx">Add Salary Details</asp:LinkButton>
                                </div>
                            </div>
                            <div class="form-group" style="height:380px">
                                <div class="col-lg-12" style="text-align:right;">
                                    <asp:GridView ID="grdvSalaryDetails" runat="server" Width = "100%" AutoGenerateColumns = "false"  
                                        AllowPaging ="true" PageSize = "10" OnRowUpdating="grdvSalaryDetails_RowUpdating" AutoGenerateRow="false" DataKeyNames="salaryId"                                        
                                        CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows"
                                        OnRowDeleting="grdvSalaryDetails_RowDeleting">
                                        <Columns>
                                            <asp:BoundField DataField="salaryId" visible="false"/>
                                            <asp:BoundField DataField="salaryBasic" HeaderText="Basic" />
                                            <asp:BoundField DataField="salaryVariable" HeaderText="Variable" />
                                            <asp:BoundField DataField="salaryTaxDeducted" HeaderText="Tax Deducted" />
                                            <asp:BoundField DataField="salaryPension" HeaderText="Pension" />
                                            <asp:BoundField DataField="salaryGratuitySum" HeaderText="Gratuity Sum" />
                                            <asp:BoundField DataField="salaryPFSum" HeaderText="PF Sum" />
                                            <asp:TemplateField ItemStyle-Width = "110px" HeaderText = "Action">
                                                <ItemTemplate>
                                                   <asp:LinkButton runat="server"  CommandName="Update" ID="edit" Text="Edit"></asp:LinkButton>
                                                    <asp:LinkButton runat="server" CommandName="Delete" ID="delete" Text="Delete"></asp:LinkButton> 
                                                </ItemTemplate>    
                                            </asp:TemplateField>
                                        </Columns>
                                        <AlternatingRowStyle BackColor="#C2D69B" />
                                    </asp:GridView>                                    
                                </div>                                
                            </div> 
                        </fieldset>
                    </div>                    
                </div>
            </div>
        </body>
    </html>
</asp:Content>

