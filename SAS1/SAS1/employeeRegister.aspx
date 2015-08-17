<%@ Page Title="Registration" Language="vb" AutoEventWireup="false" CodeBehind="employeeRegister.aspx.vb" Inherits="SAS1.employeeRegister" %>

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
                <asp:ScriptReference Name="MsAjaxBundle" />
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
            <div class="row">
                <div id="content" class="col-sm-9">
                    <h1>Register Account</h1>
                    <p>If you already have an account with us, please login at the <a href="employeeLogin.aspx">login page</a>.</p>
                    <form action="#" method="post" enctype="multipart/form-data" class="form-horizontal" />
                    <fieldset id="account">
                        <legend>Your Personal Details</legend>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-firstname">First Name</label>
                            <div class="col-sm-10">
                                <input type="text" name="firstname" value="" placeholder="First Name" id="input-firstname" class="form-control"><br />
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-lastname">Last Name</label>
                            <div class="col-sm-10">
                                <input type="text" name="lastname" value="" placeholder="Last Name" id="input-lastname" class="form-control"><br />
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-email">E-Mail</label>
                            <div class="col-sm-10">
                                <input type="email" name="email" value="" placeholder="E-Mail" id="input-email" class="form-control"><br />
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-telephone">Telephone</label>
                            <div class="col-sm-10">
                                <input type="tel" name="telephone" value="" placeholder="Telephone" id="input-telephone" class="form-control"><br />
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-email">Birth Date</label>
                            <div class="col-sm-5">
                                <input type="date" name="birthdate" value="" id="input-birthdate" class="form-control">(DD-MM-YYYY)<br />
                            </div>
                        </div>
                    </fieldset>
                    <fieldset id="address">
                        <legend>Your Address</legend>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-address-1">Address 1</label>
                            <div class="col-sm-10">
                                <input type="text" name="address_1" value="" placeholder="Address 1" id="input-address-1" class="form-control"><br />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="input-address-2">Address 2</label>
                            <div class="col-sm-10">
                                <input type="text" name="address_2" value="" placeholder="Address 2" id="input-address-2" class="form-control"><br />
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-city">City</label>
                            <div class="col-sm-10">
                                <input type="text" name="city" value="" placeholder="City" id="input-city" class="form-control"><br />
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-postcode">Post Code</label>
                            <div class="col-sm-10">
                                <input type="text" name="postcode" value="" placeholder="Post Code" id="input-postcode" class="form-control"><br />
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-country">Country</label>
                            <div class="col-sm-10">
                                <select name="country_id" id="input-country" class="form-control">
                                    <option value="">--- Please Select --- </option>
                                    <option value="1">Malaysia</option>
                                </select><br />
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-zone">Region / State</label>
                            <div class="col-sm-10">
                                <select name="zone_id" id="input-zone" class="form-control">
                                    <option value="">--- Please Select --- </option>
                                    <option value="1">Federal Territory of Kuala Lumpur</option>
                                    <option value="2">Federal Territory of Labuan</option>
                                    <option value="3">Federal Territory of Putrajaya</option>
                                    <option value="4">Johor Darul Ta'zim</option>
                                    <option value="5">Kedah Darul Aman</option>
                                    <option value="6">Kelantan Darul Naim</option>
                                    <option value="7">Malacca</option>
                                    <option value="8">Negeri Sembilan Darul Khusus</option>
                                    <option value="9">Pahang Darul Makmur</option>
                                    <option value="10">Perak Darul Ridzuan</option>
                                    <option value="11">Perlis Indera Kayangan</option>
                                    <option value="12">Penang</option>
                                    <option value="13">Sabah</option>
                                    <option value="14">Sarawak</option>
                                    <option value="15">Selangor Darul Ehsan</option>
                                    <option value="16">Terengganu Darul Iman</option>
                                </select><br />
                            </div>
                        </div>

                    </fieldset>
                    <fieldset>
                        <legend>Your Password</legend>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-password">Password</label>
                            <div class="col-sm-10">
                                <input type="password" name="password" value="" placeholder="Password" id="input-password" class="form-control"><br />
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-confirm">Password Confirm</label>
                            <div class="col-sm-10">
                                <input type="password" name="confirm" value="" placeholder="Password Confirm" id="input-confirm" class="form-control"><br />
                            </div>
                        </div>
                    </fieldset>
                    <div class="buttons">
                        <div class="pull-right">
                            <input type="submit" value="Continue" class="btn btn-primary">
                        </div>
                    </div>
    </form>




    <%--footer--%>
    <hr />
    <footer>
        <p>&copy; <%: DateTime.Now.Year %> - Shopping Advisor System</p>
        <p>
            <a runat="server" href="~/About">About</a>
            <a runat="server" href="~/Contact">Contact Us</a>
        </p>
    </footer>
</body>

</html>

