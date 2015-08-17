<%@ Page Title="Login" Language="vb" AutoEventWireup="false" CodeBehind="EmployeeLogin.aspx.vb" Inherits="SAS1.employeeLogin" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><%: Page.Title %> </title>

    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>

    <webopt:BundleReference runat="server" Path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />

</head>

<body>
    <form runat="server">
        <asp:ScriptManager runat="server">
            <Scripts>
                <asp:ScriptReference Name="MsAjaxBundle"/>
                <asp:ScriptReference Name="jquery" />
                <asp:ScriptReference Name="bootstrap" />
                <asp:ScriptReference Name="respond" />
                <asp:ScriptReference Name="WebForms.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebForms.js" />
                <asp:ScriptReference Name="WebUIValidation.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebUIValidation.js" />
                <asp:ScriptReference Name="MenuStandards.js" Assembly="System.Web" Path="~/Scripts/WebForms/MenuStandards.js" />
                <asp:ScriptReference Name="GridView.js" Assembly="System.Web" Path="~/Scripts/WebForms/GridView.js" />
                <asp:ScriptReference Name="DetailsView.js" Assembly="System.Web" Path="~/Scripts/WebForms/DetailsView.js" />
                <asp:ScriptReference Name="TreeView.js" Assembly="System.Web" Path="~/Scripts/WebForms/TreeView.js" />
                <asp:ScriptReference Name="WebParts.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebParts.js" />
                <asp:ScriptReference Name="Focus.js" Assembly="System.Web" Path="~/Scripts/WebForms/Focus.js" />
                <asp:ScriptReference Name="WebFormsBundle" />
            </Scripts>
        </asp:ScriptManager>


        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse" aria-expanded="false">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" runat="server" href="~/">SAS</a>
                </div>
            </div>
        </div>



        <br />
        <br />
        <div class="container body-content">
            <section id="loginForm">
                <div id="content">
                    <div class="container">
                        <div class="col-sm-offset-4 col-sm-4">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h1 class="panel-title">Please enter your login details.</h1>
                                </div>
                                <div class="panel-body">
                                    <div class="form-group">
                                        <label for="input-username">Username</label>
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                            <asp:TextBox ID="tbxUsername" placeholder="Username" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="input-password">Password</label>
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                            <asp:TextBox ID="tbxPassword" placeholder="Password" runat="server" class="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-md-offset-0 col-md-12">
                                            <div class="checkbox">
                                                <asp:CheckBox runat="server" ID="RememberMe" />
                                                <asp:Label runat="server" AssociatedControlID="RememberMe">Remember me?</asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                    <asp:Label ID="lblLoginMessage" runat="server" ForeColor="Red"></asp:Label>
                                    <div class="text-right">
                                        <asp:Button ID="btnLogin" class="btn btn-primary" runat="server" Text="Login" />
                                    </div>
                                </div>
                            </div>
                            <p>
                                <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled" Style="cursor: pointer">REGISTER </asp:HyperLink>
                                if you don't have a local account.
                            </p>
                        </div>
                    </div>




                    <%--footer--%>
                    <hr />
                    <footer>
                        <p>&copy; <%: DateTime.Now.Year %> - Shopping Advisor System</p>
                        <p>
                            <a runat="server" href="~/About">About</a>
                            <a runat="server" href="~/Contact">Contact Us</a>
                        </p>
                    </footer>
                </div>
            </section>
        </div>
    </form>
</body>

</html>

