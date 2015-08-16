<%@ Page Title="Orders" Language="vb" AutoEventWireup="false" MasterPageFile="~/Employee.Master" CodeBehind="Orders.aspx.vb" Inherits="SAS1.Orders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <%--Content Header--%>
    <div class="col-sm-9 col-sm-offset-4 col-md-10 col-md-offset-2 main">
        <div class="container-fluid">
            <br />
            <div class="nav navbar-nav navbar-right">
                <button type="submit" id="button-invoice" form="form-order" formaction="#3" data-toggle="tooltip" title="" class="btn btn-info btn-sm" disabled="" data-original-title="Print Invoice"><i class="glyphicon glyphicon-print"></i></button>
                <a href="AddOrders.aspx" data-toggle="tooltip" title="" class="btn btn-sm btn-primary" data-original-title="Add New"><i class="glyphicon glyphicon-plus"></i></a>
            </div>
            <h1>Orders</h1>
            <br />
        </div>


        <%--Content Body--%>
        <div class="container-fluid">
            <div class="panel panel-default">

                <%--panel heading--%>
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="glyphicon glyphicon-th-list"></i> Order List</h3>
                </div>

                <%--panel body--%>
                <div class="panel-body">
                    <div class="well">
                        <div class="row">
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label class="control-label" for="input-order-id">Order ID</label>
                                    <input type="text" name="filter_order_id" value="" placeholder="Order ID" id="input-order-id" class="form-control">
                                </div>

                                <div class="form-group">
                                    <label class="control-label" for="input-customer">Customer</label>
                                    <input type="text" name="filter_customer" value="" placeholder="Customer" id="input-customer" class="form-control" autocomplete="off"><ul class="dropdown-menu"></ul>
                                </div>
                            </div>

                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label class="control-label" for="input-order-status">Order Status</label>
                                    <select name="filter_order_status" id="input-order-status" class="form-control">
                                        <option value="*"></option>
                                        <option value="0">Missing Orders</option>
                                        <option value="7">Canceled</option>
                                        <option value="5">Complete</option>
                                        <option value="8">Denied</option>
                                        <option value="14">Expired</option>
                                        <option value="10">Failed</option>
                                        <option value="1">Pending</option>
                                        <option value="15">Processed</option>
                                        <option value="2">Processing</option>
                                        <option value="11">Refunded</option>
                                        <option value="3">Shipped</option>
                                        <option value="16">Voided</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label class="control-label" for="input-total">Total</label>
                                    <input type="text" name="filter_total" value="" placeholder="Total" id="input-total" class="form-control">
                                </div>
                            </div>

                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label class="control-label" for="input-date-added">Date Added</label>
                                    <div class="input-group date">
                                        <input type="text" name="filter_date_added" value="" placeholder="Date Added" data-format="YYYY-MM-DD" id="input-date-added" class="form-control">
                                        <span class="input-group-btn">
                                            <button type="button" class="btn btn-default"><i class="glyphicon glyphicon-calendar"></i></button>
                                        </span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label" for="input-date-modified">Date Modified</label>
                                    <div class="input-group date">
                                        <input type="text" name="filter_date_modified" value="" placeholder="Date Modified" data-format="YYYY-MM-DD" id="input-date-modified" class="form-control">
                                        <span class="input-group-btn">
                                            <button type="button" class="btn btn-default"><i class="glyphicon glyphicon-calendar"></i></button>
                                        </span>
                                    </div>
                                </div>
                                <button type="button" id="button-filter" class="btn btn-primary pull-right"><i class="glyphicon glyphicon-search"></i> Filter</button>
                            </div>
                        </div>
                    </div>

                    <form method="post" enctype="multipart/form-data" target="_blank" id="form-order">
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <td style="width: 1px;" class="text-center">
                                            <input type="checkbox" onclick="$('input[name*=\'selected\']').prop('checked', this.checked);"></td>
                                        <td class="text-right"><a href="#" class="desc">Order ID</a>
                                        </td>
                                        <td class="text-left"><a href="#">Customer</a>
                                        </td>
                                        <td class="text-left"><a href="#C">Status</a>
                                        </td>
                                        <td class="text-right"><a href="#">Total</a>
                                        </td>
                                        <td class="text-left"><a href="#">Date Added</a>
                                        </td>
                                        <td class="text-left"><a href="#">Date Modified</a>
                                        </td>
                                        <td class="text-right">Action</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="text-center">
                                            <input type="checkbox" name="selected[]" value="1871">
                                            <input type="hidden" name="shipping_code[]" value="flat.flat"></td>
                                        <td class="text-right">1871</td>
                                        <td class="text-left">111 111</td>
                                        <td class="text-left">Pending</td>
                                        <td class="text-right">$130.00</td>
                                        <td class="text-left">09/08/2015</td>
                                        <td class="text-left">09/08/2015</td>
                                        <td class="text-right">
                                            <a href="ViewOrder.aspx" data-toggle="tooltip" title="" class="btn btn-xs btn-info" data-original-title="View"><i class="glyphicon glyphicon-eye-open"></i></a>
                                            <a href="EditOrder.aspx" data-toggle="tooltip" title="" class="btn btn-xs btn-primary" data-original-title="Edit"><i class="glyphicon glyphicon-pencil"></i></a>
                                            <a href="#" id="button-delete1871" data-toggle="tooltip" title="" class="btn btn-xs btn-danger" data-original-title="Delete"><i class="glyphicon glyphicon-trash"></i></a></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </form>
                    <div class="row">
                        <div class="col-sm-6 text-left">
                            <ul class="pagination">
                                <li class="active"><span>1</span></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">&gt;</a></li>
                                <li><a href="#">&gt;|</a></li>
                            </ul>
                        </div>
                        <div class="col-sm-6 text-right">Showing 1 to 20 of 20</div>
                    </div>
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
