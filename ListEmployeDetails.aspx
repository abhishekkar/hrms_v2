<%@ Page Title="" Language="C#" MasterPageFile="~/defaultMasterPage.master" AutoEventWireup="true" CodeFile="ListEmployeDetails.aspx.cs" Inherits="ListEmployeDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="pageContent" Runat="Server">

    <head>
    <link href="Gridstyle.css" rel="stylesheet" type="text/css" />
    <title>GridView Style</title>
</head>
<body>
    <form id="form1">
    <div>
        <asp:GridView ID="gvEmployee" runat="server" AutoGenerateColumns="false" Width="600px"
                      AllowPaging="true" PageSize="8" OnPageIndexChanging="gvEmployee_PageIndexChanging"
                      CssClass="Grid"                     
                      AlternatingRowStyle-CssClass="alt"
                      PagerStyle-CssClass="pgr" >         
         <Columns>
         <asp:BoundField DataField="empid" HeaderText="Employee ID" />
         <asp:BoundField DataField="name" HeaderText="Name" />
         <asp:BoundField DataField="designation" HeaderText="Designation" />
         <asp:BoundField DataField="city" HeaderText="City" />
         <asp:BoundField DataField="country" HeaderText="Country" />         
         </Columns>
        </asp:GridView>
    </div>         
   </form>
</body>

</asp:Content>

