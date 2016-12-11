<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <meta charset="utf-8">
    <!-- Set the viewport width to device width for mobile -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="Coming soon, Bootstrap, Bootstrap 3.0, Free Coming Soon, free coming soon, free template, coming soon template, Html template, html template, html5, Code lab, codelab, codelab coming soon template, bootstrap coming soon template">
    <title>Login to HRMS</title>
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
    <form id="form1" runat="server" style="background-image:url(img/POYNOR_0055.jpg);background-repeat:no-repeat;">
    <div id="custom-bootstrap-menu" class="navbar navbar-default " role="navigation" style="background-color:#40ad22;">
        <div style="padding-top:5px;padding-left:5px">
                <img src="img/logo.png" />
            </div>
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
         
    <div class="container" style="align-items:center">
       <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12 text-center">
            <div id="banner">
                
            </div>
        </div>
        <div class="col-lg-6">
            <br />
            <br />            
            <br />            
            <br /> 
                        <div class="registrationform">
                <div class="form-horizontal">
                    <fieldset>
                        <legend style="text-align:center">Login to HRMS</legend>
                                                
                        <div class="form-group">
                          <asp:Label ID="Label5" runat="server" Text="School Code" CssClass="col-lg-3"></asp:Label>                          
                            <div class="col-lg-6">
                                <asp:DropDownList runat="server" ID="ddlSchoolCode" CssClass="form-control ddl" AutoPostBack="false"></asp:DropDownList>                             
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblName" runat="server" Text="User Name" CssClass="col-lg-3"></asp:Label>
                            <div class="col-lg-6">
                                <asp:TextBox ID="textUsername" runat="server" placeholder="User Name" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblPassword" runat="server" Text="Password" CssClass="col-lg-3"></asp:Label>
                            <div class="col-lg-6">                                
                                <asp:TextBox ID="txtPassword" runat="server" placeholder="Password" CssClass="form-control"
                                    TextMode="Password"></asp:TextBox>
                            </div>
                        </div>
                        <br />
                        <div class="form-group" style="text-align:center">
                                <asp:Label ID="lblError" runat="server" CssClass="col-lg-12" ForeColor="Red"></asp:Label>                                                    
                        </div>
                        <div class="form-group">
                            <div class="col-lg-6 col-lg-offset-4">
                                <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary" Text="Login" OnClick="btnSubmit_Click" />
                                
                                <asp:Button ID="btnSignup" runat="server" CssClass="btn btn-warning" Text="Sign Up" OnClick="btnSignup_Click" />                              
                            </div>
                        </div>
                    </fieldset>
                </div>
            </div>                    
        </div>           
    </div>            
    <br />            
    <br />            
    <br />            
    <br />
    <div style="background-color:#40ad22;text-align:center">
        © Copyright www.hrms.com
    </div>                   
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/jquery.backstretch.js" type="text/javascript"></script>
    <script type="text/javascript">
        'use strict';

        $.backstretch(
        [            
            //"img/34.jpg"
        ],

        {
            
        }
    );
    </script>
    </form>
</body>
</html>