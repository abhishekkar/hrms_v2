<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListPersonalDetails.aspx.cs" Inherits="Admin_ListPersonalDetails" MasterPageFile="~/defaultMasterPage.master" %>

<asp:content id="Content1" ContentPlaceHolderID="pageContent" runat="server">
    <html xmlns="http://www.w3.org/1999/xhtml">
        <head>
            <title>HRMS - List Personal Details</title>
        </head>
        <body>
             <div class="container" style="width:auto;">
                <div>
                    <div class="col-lg-14">
                        <fieldset>
                            <legend style="text-align:center">List Personal Details</legend>
                            <div class="form-group">
                                <div class="col-lg-12" style="text-align:right">
                                    <asp:LinkButton ID="lnkAddPersonalDetails" runat="server" PostBackUrl="PersonalDetails.aspx">Add Personal Details</asp:LinkButton>
                                </div>
                            </div>
                            <div class="form-group" style="height:380px">
                                <div class="col-lg-12" style="text-align:right;">
                                    <asp:GridView ID="grdvPersonalDetails" runat="server" Width = "100%"
                                        AutoGenerateColumns = "false" AllowPaging ="true" 
                                        PageSize = "10" OnRowUpdating="grdvPersonalDetails_RowUpdating" AutoGenerateRow="false" DataKeyNames="userId"                                        
                                        CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" 
                                        OnRowDeleting="grdvPersonalDetails_RowDeleting">
                                        <Columns>
                                            <asp:BoundField DataField="userId" visible="false"/>
                                            <asp:BoundField DataField="userName" HeaderText="UserName" />
                                            <asp:BoundField DataField="designation" HeaderText="Designation" />
                                            <asp:BoundField DataField="dateofHiring" HeaderText="Date Of hiring" />
                                            <asp:BoundField DataField="education" HeaderText="Education" />
                                            <asp:BoundField DataField="supervisorId" HeaderText="Supervisor" />
                                            <asp:TemplateField ItemStyle-Width = "110px"  HeaderText = "Action">
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
</asp:content>

