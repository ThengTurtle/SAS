<%@ Page Title="Customers" Language="vb" AutoEventWireup="false" MasterPageFile="~/Employee.Master" CodeBehind="AddCustomers.aspx.vb" Inherits="SAS1.AddCustomers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <%--Content Header--%>
    <div class="col-sm-9 col-sm-offset-4 col-md-10 col-md-offset-2 main">
        <div class="container-fluid">
            <br />
            <div class="nav navbar-nav navbar-right">
                <button type="submit" form="form-customer" data-toggle="tooltip" title="" class="btn btn-primary" data-original-title="Save"><i class="glyphicon glyphicon-floppy-disk"></i></button>
                <a href="Customers.aspx" data-toggle="tooltip" title="" class="btn btn-default" data-original-title="Cancel"><i class="glyphicon glyphicon-menu-left"></i></a>
            </div>
            <h1>Customers</h1>
            <br />
        </div>


        <%--Content Body--%>
        <div class="container-fluid">
            <div class="panel panel-default">

                <%--panel heading--%>
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="glyphicon glyphicon-pencil"></i> Add Customer</h3>
                </div>

                <%--panel body--%>
                <div class="panel-body">
                    <form action="#" method="post" enctype="multipart/form-data" id="form-customer" class="form-horizontal">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#tab-general" data-toggle="tab">General</a></li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tab-general">
                                <br />
                                <div class="row">
                                    <div class="col-sm-2">
                                        <ul class="nav nav-pills nav-stacked" id="address">
                                            <li class="active"><a href="#tab-customer" data-toggle="tab">General</a></li>
                                            <li id="address-add"><a onclick="addAddress();"><i class="glyphicon glyphicon-plus"></i> Add Address</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-sm-10">
                                        <div class="tab-content">
                                            <div class="tab-pane active" id="tab-customer">
                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label" for="input-customer-group">Customer Group</label>
                                                    <div class="col-sm-10">
                                                        <select name="customer_group_id" id="input-customer-group" class="form-control">
                                                            <option value="1" selected="selected">Default</option>
                                                        </select><br />
                                                    </div>
                                                </div>
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
                                                        <input type="text" name="email" value="" placeholder="E-Mail" id="input-email" class="form-control"><br />
                                                    </div>
                                                </div>
                                                <div class="form-group required">
                                                    <label class="col-sm-2 control-label" for="input-telephone">Telephone</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" name="telephone" value="" placeholder="Telephone" id="input-telephone" class="form-control"><br />
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label" for="input-fax">Fax</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" name="fax" value="" placeholder="Fax" id="input-fax" class="form-control"><br />
                                                    </div>
                                                </div>
                                                <div class="form-group required">
                                                    <label class="col-sm-2 control-label" for="input-password">Password</label>
                                                    <div class="col-sm-10">
                                                        <input type="password" name="password" value="" placeholder="Password" id="input-password" class="form-control" autocomplete="off"><br />
                                                    </div>
                                                </div>
                                                <div class="form-group required">
                                                    <label class="col-sm-2 control-label" for="input-confirm">Confirm</label>
                                                    <div class="col-sm-10">
                                                        <input type="password" name="confirm" value="" placeholder="Confirm" autocomplete="off" id="input-confirm" class="form-control"><br />
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label" for="input-status">Status</label>
                                                    <div class="col-sm-10">
                                                        <select name="status" id="input-status" class="form-control">
                                                            <option value="1" selected="selected">Enabled</option>
                                                            <option value="0">Disabled</option>
                                                        </select><br />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane" id="tab-ip">
                                <div id="ip">
                                    <div class="table-responsive">
                                        <table class="table table-bordered table-hover">
                                            <thead>
                                                <tr>
                                                    <td class="text-left">IP</td>
                                                    <td class="text-right">Total Accounts</td>
                                                    <td class="text-left">Date Added</td>
                                                    <td class="text-right">Action</td>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="text-center" colspan="4">No results!</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6 text-left"></div>
                                        <div class="col-sm-6 text-right">Showing 0 to 0 of 0 (0 Pages)</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>



            <%--footer--%>
            <hr />
            <footer>
                <p>&copy; <%: DateTime.Now.Year %> - Shopping Advisor System</p>
            </footer>
        </div>
    </div>

</asp:Content>
