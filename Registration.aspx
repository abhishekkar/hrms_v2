<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en"> <![endif]-->
    <!--[if IE 7]>    <html class="no-js ie7 oldie" lang="en"> <![endif]-->
    <!--[if IE 8]>    <html class="no-js ie8 oldie" lang="en"> <![endif]-->
    <!--[if IE 9]> <html class="no-js ie9 oldie" lang="en"> <![endif]-->
    <meta charset="utf-8">
    <!-- Set the viewport width to device width for mobile -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="Coming soon, Bootstrap, Bootstrap 3.0, Free Coming Soon, free coming soon, free template, coming soon template, Html template, html template, html5, Code lab, codelab, codelab coming soon template, bootstrap coming soon template">
    <title>HRMS Registration</title>
    <!-- ============ Google fonts ============ -->
    <link href='http://fonts.googleapis.com/css?family=EB+Garamond' rel='stylesheet'
        type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,300,800'
        rel='stylesheet' type='text/css' />
    <!-- ============ Add custom CSS here ============ -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="css/font-awesome.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="custom-bootstrap-menu" class="navbar navbar-default " role="navigation">
        <div class="container">
            <%--<div class="navbar-header">
                <a class="navbar-brand" href="#">Bootstrap</a>
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-menubuilder">
                    <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span
                        class="icon-bar"></span><span class="icon-bar"></span>
                </button>
            </div>--%>
            <%--<div class="collapse navbar-collapse navbar-menubuilder">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="/">Home</a> </li>
                    <li><a href="/products">Products</a> </li>
                    <li><a href="/about-us">About Us</a> </li>
                    <li><a href="/contact">Contact Us</a> </li>
                </ul>
            </div>--%>
        </div>
    </div>
    <div class="container" style="align-content:center" >
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 text-center">
            <div id="banner">
                <h1>
                    HRMS <br />
                    <strong>Sign Up Form</strong> </h1>
                <h5>
                    <strong>hrms.com</strong></h5>
            </div>
        </div>
        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 ">
            <br />
            
            <div class="registrationform">
                <div class="form-horizontal">
                    <fieldset>
                        <legend>Sign Up <i class="fa fa-pencil pull-right"></i></legend>
                        <div class="form-group">
                            <div class="col-lg-1"></div>
                            <asp:Label ID="lblName" runat="server" Text="Name" CssClass="col-lg-3"></asp:Label>
                            <div class="col-lg-6">
                                <asp:TextBox ID="textUsername" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-1"></div>
                            <asp:Label ID="lblUsername" runat="server" Text="Username" CssClass="col-lg-3"></asp:Label>
                            <div class="col-lg-6">
                                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-1"></div>
                            <asp:Label ID="lblPassword" runat="server" Text="Password" CssClass="col-lg-3"></asp:Label>
                            <div class="col-lg-6">
                                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-1"></div>
                            <asp:Label ID="lblEmail" runat="server" Text="Email" CssClass="col-lg-3"></asp:Label>
                            <div class="col-lg-6">
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-1"></div>
                            <asp:Label ID="lblMobile" runat="server" Text="Mobile" CssClass="col-lg-3"></asp:Label>
                            <div class="col-lg-6">
                                <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <%--<div class="form-group">
                            <asp:Label ID="Label3" runat="server" Text="Address" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Rows="3" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>--%>
                        <%--<div class="form-group">
                            <asp:Label ID="Label4" runat="server" Text="Gender" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10">
                                <div class="radio">
                                    <label>
                                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                                            <asp:ListItem Selected="True">Male</asp:ListItem>
                                            <asp:ListItem>Female</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </label>
                                </div>
                            </div>
                        </div>--%>
                                                
                        <div class="form-group">
                            <div class="col-lg-1"></div>
                          <asp:Label ID="Label5" runat="server" Text="School Code" CssClass="col-lg-3"></asp:Label>                          
                            <div class="col-lg-6">
                                <asp:DropDownList runat="server" ID="ddlSchoolCode" CssClass="form-control ddl"></asp:DropDownList>                             
                            </div>
                        </div>
                        <%--<div class="form-group">
                          <asp:Label ID="Label5" runat="server" Text="Country" CssClass="col-lg-2 control-label"></asp:Label>                          
                            <div class="col-lg-10">
                                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control ddl">
                                    <asp:ListItem>INDIA</asp:ListItem>
                                    <asp:ListItem>USA</asp:ListItem>
                                    <asp:ListItem>UK</asp:ListItem>
                                </asp:DropDownList>                              
                            </div>
                        </div>--%>
                        <br />
                        <br />
                        <div class="form-group">
                            <div class="col-lg-6 col-lg-offset-4">
                                <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary" Text="Submit" />
                                  <asp:Button ID="btnCancel" runat="server" CssClass="btn btn-warning" Text="Cancel" OnClick="btnCancel_Click" />                              
                            </div>
                        </div>
                    </fieldset>
                </div>
            </div>
        </div>
    </div>
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/jquery.backstretch.js" type="text/javascript"></script>
    <script type="text/javascript">
        'use strict';

        /* ========================== */
        /* ::::::: Backstrech ::::::: */
        /* ========================== */
        // You may also attach Backstretch to a block-level element
        $.backstretch(
        [            
            "img/34.jpg"
        ],

        {
            //duration: 4500,
            //fade: 1500
        }
    );
    </script>
    </form>
</body>
</html>

