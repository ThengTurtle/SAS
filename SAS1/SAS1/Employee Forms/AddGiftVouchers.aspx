<%@ Page Title="Gift Vouchers" Language="vb" AutoEventWireup="false" MasterPageFile="~/Employee.Master" CodeBehind="AddGiftVouchers.aspx.vb" Inherits="SAS1.AddGiftVouchers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <%--Content Header--%>
    <div class="col-sm-9 col-sm-offset-4 col-md-10 col-md-offset-2 main">
        <div class="container-fluid">
            <br />
            <div class="nav navbar-nav navbar-right">
                <button type="submit" form="form-voucher" data-toggle="tooltip" title="" class="btn btn-primary" data-original-title="Save"><i class="glyphicon glyphicon-floppy-disk"></i></button>
                <a href="GiftVouchers.aspx" data-toggle="tooltip" title="" class="btn btn-default" data-original-title="Cancel"><i class="glyphicon glyphicon-menu-left"></i></a>
            </div>

            <h1>Gift Vouchers</h1>
            <br />
        </div>


        <%--Content Body--%>
        <div class="container-fluid">
            <div class="panel panel-default">

                <%--panel heading--%>
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="glyphicon glyphicon-pencil"></i> Add Gift Voucher</h3>
                </div>

                <%--panel body--%>
                <div class="panel-body">
                    <form action="#" method="post" enctype="multipart/form-data" id="form-voucher" class="form-horizontal">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#tab-general" data-toggle="tab">General</a></li>
                        </ul>

                        <div class="tab-content">

                            <%--general tab--%>
                            <div class="tab-pane active" id="tab-general">
                                <div class="form-group required">
                                    <label class="col-sm-2 control-label" for="input-code"><span data-toggle="tooltip" title="" data-original-title="The code the customer enters to activate the voucher.">Code</span></label>
                                    <div class="col-sm-10">
                                        <input type="text" name="code" value="" placeholder="Code" id="input-code" class="form-control"><br />
                                    </div>
                                </div>
                                <div class="form-group required">
                                    <label class="col-sm-2 control-label" for="input-from-name">From Name</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="from_name" value="" placeholder="From Name" id="input-from-name" class="form-control"><br />
                                    </div>
                                </div>
                                <div class="form-group required">
                                    <label class="col-sm-2 control-label" for="input-from-email">From E-Mail</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="from_email" value="" placeholder="From E-Mail" id="input-from-email" class="form-control"><br />
                                    </div>
                                </div>
                                <div class="form-group required">
                                    <label class="col-sm-2 control-label" for="input-to-name">To Name</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="to_name" value="" placeholder="To Name" id="input-to-name" class="form-control"><br />
                                    </div>
                                </div>
                                <div class="form-group required">
                                    <label class="col-sm-2 control-label" for="input-to-email">To E-Mail</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="to_email" value="" placeholder="To E-Mail" id="input-to-email" class="form-control"><br />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-theme">Theme</label>
                                    <div class="col-sm-10">
                                        <select name="voucher_theme_id" id="input-theme" class="form-control">
                                            <option value="7">Birthday</option>
                                            <option value="6">Christmas</option>
                                            <option value="8">General</option>
                                        </select><br />
                                    </div>
                                </div>
                                <div class="form-group required">
                                    <label class="col-sm-2 control-label" for="input-message">Message</label>
                                    <div class="col-sm-10">
                                        <textarea name="message" rows="5" placeholder="Message" id="input-message" class="form-control"></textarea><br />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-amount">Amount</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="amount" value="" placeholder="Amount" id="input-amount" class="form-control"><br />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-status">Status</label>
                                    <div class="col-sm-10">
                                        <select name="status" id="input-status" class="form-control">
                                            <option value="1" selected="selected">Enabled</option>
                                            <option value="0">Disabled</option>
                                        </select>
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

