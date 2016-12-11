<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SchoolPortal.aspx.cs" Inherits="Admin_SchoolPortal" MasterPageFile="~/defaultMasterPage.master" %>

<asp:content id="Content1" ContentPlaceHolderID="pageContent" runat="server">
    <html xmlns="http://www.w3.org/1999/xhtml">
        <head>
            <title>HRMS - School Portal</title>
        </head>
        <body>
             <div class="container" style="width:auto;">
                 <div class="col-lg-2">
                    <div>
                
                    </div>
                </div>
                <div>
                    <div class="col-lg-12">
                        <fieldset>
                            <legend style="text-align:center">School Portal</legend>
                            <div class="form-group" style="height:200px">
                                <div class="col-lg-6" style="text-align:right;">
                                    <asp:LinkButton ID="lnkAddPersonalDetails" runat="server" PostBackUrl="ComingSoon.aspx">Add Time Table</asp:LinkButton>
                                </div>
                                <div class="col-lg-6" style="text-align:right;">
                                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="ComingSoon.aspx">Add School Events Dates</asp:LinkButton>
                                </div>
                            </div>                            
                            <div class="form-group" style="height:200px">
                                <div class="col-lg-6" style="text-align:right;">
                                    <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="ComingSoon.aspx">Add Exam dates</asp:LinkButton>
                                </div>
                                <div class="col-lg-6" style="text-align:right;">
                                    <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="ComingSoon.aspx">Add Result declaration Dates</asp:LinkButton>
                                </div>
                            </div>
                             <div class="col-lg-2">
                                <div style="border:medium;border-color:red">
                                    
                                </div>
                            </div>
                        </fieldset>
                    </div>                    
                </div>
            </div>
        </body>
    </html>
</asp:content>
<%--<body bgcolor="4682B4" height="80%" border="1" bordercolor="black" borderstyle="solid">
    
    <div style="text-align: center">
        <h1><span style="font-family: &quot;Gill Sans MT&quot;; mso-ascii-font-family: &quot;Gill Sans MT&quot;; mso-fareast-font-family: +mj-ea; mso-bidi-font-family: +mj-cs; font-variant: normal; color: black; mso-color-index: 1; text-transform: uppercase; mso-font-kerning: 12.0pt; language: en-GB; font-weight: normal;font-style:normal">School Portal</span></h1>
        <br />
        <br />
    
        <table class="pageStyle">
            <tr>
                <td class="auto-style7">
                    <table class="auto-style2">
                        <tr>
                            <td><asp:LinkButton ID="lnbAddTimetable" runat="server" style="text-align: right">Add Time Table</asp:LinkButton></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6" style="mso-ascii-font-family: &quot;Gill Sans MT&quot;; mso-fareast-font-family: +mn-ea; color: black; mso-color-index: 1; mso-font-kerning: 12.0pt;language:en-US">Timetable for classes for the employee</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>                        
                    </table>
                </td>
                <td class="auto-style3">
                    <table class="auto-style2">
                        <tr>
                            <td><asp:LinkButton ID="lnbAddSchoolEventsDates" runat="server" style="text-align: right">Add School Events Dates</asp:LinkButton></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6" style="mso-ascii-font-family: &quot;Gill Sans MT&quot;; mso-fareast-font-family: +mn-ea; color: black; mso-color-index: 1; mso-font-kerning: 12.0pt;language:en-US">School Events &amp; Dates</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <table class="auto-style2">
                        <tr>
                            <td><asp:LinkButton ID="lnbAddExamdates" runat="server" style="text-align: right">Add Exam dates</asp:LinkButton></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6" style="mso-ascii-font-family: &quot;Gill Sans MT&quot;; mso-fareast-font-family: +mn-ea; color: black; mso-color-index: 1; mso-font-kerning: 12.0pt;language:en-US">Exam dates</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style3">
                    <table class="auto-style2">
                        <tr>
                            <td><asp:LinkButton ID="lnbAddResultdeclarationDates" runat="server" style="text-align: right">Add Result declaration Dates</asp:LinkButton></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6" style="mso-ascii-font-family: &quot;Gill Sans MT&quot;; mso-fareast-font-family: +mn-ea; color: black; mso-color-index: 1; mso-font-kerning: 12.0pt;language:en-US">Result declaration Dates</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    
    </div>
    
</body>
    </html>
</asp:content>--%>
