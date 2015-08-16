<%@ Page Title="Customers" Language="vb" AutoEventWireup="false" MasterPageFile="~/Employee.Master" CodeBehind="Customers.aspx.vb" Inherits="SAS1.Customers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <%--Content Header--%>
    <div class="col-sm-9 col-sm-offset-4 col-md-10 col-md-offset-2 main">
        <div class="container-fluid">
            <br />
            <div class="nav navbar-nav navbar-right">
                <a href="AddCustomers.aspx" data-toggle="tooltip" title="" class="btn btn-primary" data-original-title="Add New"><i class="glyphicon glyphicon-plus"></i></a>
                <button type="button" data-toggle="tooltip" title="" class="btn btn-danger" onclick="confirm('Delete/Uninstall cannot be undone! Are you sure you want to do this?') ? $('#form-customer').submit() : false;" data-original-title="Delete"><i class="glyphicon glyphicon-trash"></i></button>

            </div>

            <h1>Customers</h1>
            <br />
        </div>

        <%--Content Body--%>
        <div class="container-fluid">
            <div class="panel panel-default">

                <%--panel heading--%>
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="glyphicon glyphicon-th-list"></i> Customer List</h3>
                </div>

                <%--panel body--%>
                <div class="panel-body">
                    <div class="well">
                        <div class="row">
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label class="control-label" for="input-name">Customer Name</label>
                                    <input type="text" name="filter_name" value="" placeholder="Customer Name" id="input-name" class="form-control" autocomplete="off"><ul class="dropdown-menu"></ul>
                                </div>
                                <div class="form-group">
                                    <label class="control-label" for="input-email">E-Mail</label>
                                    <input type="text" name="filter_email" value="" placeholder="E-Mail" id="input-email" class="form-control" autocomplete="off"><ul class="dropdown-menu"></ul>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label class="control-label" for="input-customer-group">Customer Group</label>
                                    <select name="filter_customer_group_id" id="input-customer-group" class="form-control">
                                        <option value="*"></option>
                                        <option value="1">Default</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label class="control-label" for="input-status">Status</label>
                                    <select name="filter_status" id="input-status" class="form-control">
                                        <option value="*"></option>
                                        <option value="1">Enabled</option>
                                        <option value="0">Disabled</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label class="control-label" for="input-approved">Approved</label>
                                    <select name="filter_approved" id="input-approved" class="form-control">
                                        <option value="*"></option>
                                        <option value="1">Yes</option>
                                        <option value="0">No</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label class="control-label" for="input-date-added">Date Added</label>
                                    <div class="input-group date">
                                        <input type="text" name="filter_date_added" value="" placeholder="Date Added" data-format="YYYY-MM-DD" id="input-date-added" class="form-control">
                                        <span class="input-group-btn">
                                            <button type="button" class="btn btn-default"><i class="glyphicon glyphicon-calendar"></i></button>
                                        </span>
                                    </div>
                                </div>
                                <button type="button" id="button-filter" class="btn btn-primary pull-right"><i class="glyphicon glyphicon-search"></i> Filter</button>
                            </div>
                        </div>
                    </div>
                    <form action="#" method="post" enctype="multipart/form-data" id="form-customer">
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <td style="width: 1px;" class="text-center">
                                            <input type="checkbox" onclick="$('input[name*=\'selected\']').prop('checked', this.checked);"></td>
                                        <td class="text-left"><a href="#" class="asc">Customer Name</a>
                                        </td>
                                        <td class="text-left"><a href="#">E-Mail</a>
                                        </td>
                                        <td class="text-left"><a href="#">Customer Group</a>
                                        </td>
                                        <td class="text-left"><a href="#">Status</a>
                                        </td>
                                        <td class="text-left"><a href="#">Date Added</a>
                                        </td>
                                        <td class="text-right">Action</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="text-center">
                                            <input type="checkbox" name="selected[]" value="3167" />
                                        </td>
                                        <td class="text-left">* *</td>
                                        <td class="text-left">a@s.com</td>
                                        <td class="text-left">Default</td>
                                        <td class="text-left">Enabled</td>
                                        <td class="text-left">13/08/2015</td>
                                        <td class="text-right">
                                            <a href="EditCustomer.aspx" data-toggle="tooltip" title="" class="btn btn-primary btn-xs" data-original-title="Edit"><i class="glyphicon glyphicon-pencil"></i></a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-center">
                                            <input type="checkbox" name="selected[]" value="3170">
                                        </td>
                                        <td class="text-left">**** ****</td>
                                        <td class="text-left">789521@fghj.se</td>
                                        <td class="text-left">Default</td>
                                        <td class="text-left">Enabled</td>
                                        <td class="text-left">13/08/2015</td>
                                        <td class="text-right">
                                            <a href="#" data-toggle="tooltip" title="" class="btn btn-primary btn-xs" data-original-title="Edit"><i class="glyphicon glyphicon-pencil"></i></a></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </form>
                    <div class="row">
                        <div class="col-sm-6 text-left">
                            <ul class="pagination">
                                <li class="active"><span>1</span></li>
                                <li><a href="#">&gt;</a></li>
                                <li><a href="#">&gt;|</a></li>
                            </ul>
                        </div>
                        <div class="col-sm-6 text-right">Showing 1 to 20 of 3202 (161 Pages)</div>
                    </div>
                </div>
            </div>

            <%--footer--%>
            <footer>
                <p>&copy; <%: DateTime.Now.Year %> - Shopping Advisor System</p>
            </footer>
        </div>
    </div>

</asp:Content>
