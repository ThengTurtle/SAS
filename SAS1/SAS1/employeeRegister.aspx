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
            <section id="registerForm">
                <div class="row">
                    <div id="content" class="col-sm-9">
                        <h1>Register Account</h1>
                        <p>If you already have an account with us, please login at the <a href="employeeLogin.aspx">login page</a>.</p>
                        <form action="#" method="post" enctype="multipart/form-data" class="form-horizontal" />
                        <fieldset id="account">
                            <legend>Your Personal Details</legend>

                            <%--UserName--%>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="input-firstname">User Name</label>
                                <div class="col-sm-10">
                                    <asp:TextBox runat="server" ID="UserName" CssClass="form-control" placeholder="User Name" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName"
                                        CssClass="text-danger" ErrorMessage="The user name field is required." /><br />
                                </div>
                            </div>

                            <%--FirstName--%>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="input-firstname">First Name</label>
                                <div class="col-sm-10">
                                    <asp:TextBox runat="server" ID="TextBoxFirstName" CssClass="form-control" placeholder="First Name" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBoxFirstName"
                                        CssClass="text-danger" ErrorMessage="The first name field is required." /><br />
                                </div>
                            </div>

                            <%--LastName--%>
                            <div class="form-group required">
                                <label class="col-sm-2 control-label" for="input-lastname">Last Name</label>
                                <div class="col-sm-10">
                                    <asp:TextBox runat="server" ID="TextBoxLastName" CssClass="form-control" placeholder="Last Name" />
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBoxLastName"
                                        CssClass="text-danger" ErrorMessage="The last name field is required." /><br />
                                </div>
                            </div>

                            <%--Email--%>
                            <div class="form-group required">
                                <label class="col-sm-2 control-label" for="input-email">E-Mail</label>
                                <div class="col-sm-10">
                                    <asp:TextBox runat="server" ID="TextBoxEmail" CssClass="form-control" placeholder="Email"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxEmail"
                                        CssClass="text-danger" ErrorMessage="Email field is required."></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="You must enter valid email" ForeColor="Red"></asp:RegularExpressionValidator>
                                </div>
                            </div>

                            <%--Telephone--%>
                            <div class="form-group required">
                                <label class="col-sm-2 control-label" for="input-telephone">Telephone</label>
                                <div class="col-sm-10">
                                    <asp:TextBox ID="TextBoxTelephone" runat="server" CssClass="form-control" placeholder="Telephone"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxTelephone" ErrorMessage="Telephone number is required" ForeColor="DarkRed"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                                        ControlToValidate="TextBoxTelephone" ErrorMessage="You must enter valid 10-digit phone number" ForeColor="Red"
                                        ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>

                                </div>

                                <%--BirthDate--%>
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

                            <%--address 1--%>
                            <div class="form-group required">
                                <label class="col-sm-2 control-label" for="input-address-1">Address </label>
                                <div class="col-sm-10">
                                    <asp:TextBox runat="server" ID="TextBoxAddress" CssClass="form-control" placeholder="Address"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBoxAddress"
                                        CssClass="text-danger" ErrorMessage="Address field is required."></asp:RequiredFieldValidator>
                                </div>
                            </div>


                            <%--city--%>
                            <div class="form-group required">
                                <label class="col-sm-2 control-label" for="input-city">City</label>
                                <div class="col-sm-10">
                                    <asp:TextBox runat="server" ID="TextBoxCity" CssClass="form-control" placeholder="City"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBoxCity"
                                        CssClass="text-danger" ErrorMessage="City field is required."></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <%--post code--%>
                            <div class="form-group required">
                                <label class="col-sm-2 control-label" for="input-postcode">Post Code</label>
                                <div class="col-sm-10">
                                    <asp:TextBox runat="server" ID="TextBoxPostCode" CssClass="form-control" placeholder="Post Code"></asp:TextBox>
                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBoxPostCode"
                                        CssClass="text-danger" ErrorMessage="Post Code field is required."></asp:RequiredFieldValidator>

                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3"
                                        runat="server"
                                        ControlToValidate="TextBoxPostCode"
                                        ErrorMessage="Enter a valid 5-digit Malaysia post code"
                                        SetFocusOnError="True"
                                        ValidationExpression="\d{5}(-\d{4})?" ForeColor="Red"></asp:RegularExpressionValidator><br />
                                </div>
                            </div>


                            <%--state--%>
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

                            <%--password--%>
                            <div class="form-group required">
                                <label class="col-sm-2 control-label" for="input-password">Password</label>
                                <div class="col-sm-10">
                                    <asp:TextBox ID="TextBoxPass" runat="server" TextMode="Password" CssClass="form-control" placeholder="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxPass" ErrorMessage="Password is required" ForeColor="DarkRed"></asp:RequiredFieldValidator>
                                    <br />
                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPass" ControlToValidate="TextBoxCPass" ErrorMessage="Both password must be same" ForeColor="Red"></asp:CompareValidator>
                                </div>
                            </div>

                            <%--confirm password--%>
                            <div class="form-group required">
                                <label class="col-sm-2 control-label" for="input-confirm">Password Confirm</label>
                                <div class="col-sm-10">
                                    <asp:TextBox ID="TextBoxCPass" runat="server" TextMode="Password" CssClass="form-control" placeholder="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxCPass" ErrorMessage="Confirm password is required" ForeColor="DarkRed"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </fieldset>

                        <%--Register Button--%>
                        <div class="buttons">
                            <div class="pull-right">
                                <asp:Button ID="btnRegister" class="btn btn-primary" runat="server" Text="Register" />
                                <asp:Label ID="lblRegisterMessage" runat="server" ForeColor="DarkRed"></asp:Label>
                            </div>
                        </div>
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
            </section>
        </div>
    </form>
</body>
</html>

