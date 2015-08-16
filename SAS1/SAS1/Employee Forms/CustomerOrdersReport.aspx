<%@ Page Title="Customer Orders Report" Language="vb" AutoEventWireup="false" MasterPageFile="~/Employee.Master" CodeBehind="CustomerOrdersReport.aspx.vb" Inherits="SAS1.CustomerOrdersReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <%--Content Header--%>
    <div class="col-sm-9 col-sm-offset-4 col-md-10 col-md-offset-2 main">
        <div class="container-fluid">
            <br />
            <h1>Customer Orders Report</h1>
            <br />
        </div>


        <%--Content Body--%>
        <div class="container-fluid">
            <div class="panel panel-default">

                <%--panel heading--%>
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="glyphicon glyphicon-stats"></i> Customer Orders List</h3>
                </div>

                <%--panel body--%>
                <div class="panel-body">
                    <div class="well">
                        <div class="row">
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label class="control-label" for="input-date-start">Date Start</label>
                                    <div class="input-group date">
                                        <input type="text" name="filter_date_start" value="" placeholder="Date Start" data-format="YYYY-MM-DD" id="input-date-start" class="form-control">
                                        <span class="input-group-btn">
                                            <button type="button" class="btn btn-default"><i class="glyphicon glyphicon-calendar"></i></button>
                                        </span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label" for="input-date-end">Date End</label>
                                    <div class="input-group date">
                                        <input type="text" name="filter_date_end" value="" placeholder="Date End" data-format="YYYY-MM-DD" id="input-date-end" class="form-control">
                                        <span class="input-group-btn">
                                            <button type="button" class="btn btn-default"><i class="glyphicon glyphicon-calendar"></i></button>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-5">
                                <div class="form-group">
                                    <label class="control-label" for="input-status">Order Status</label>
                                    <select name="filter_order_status_id" id="input-status" class="form-control">
                                        <option value="0">All Statuses</option>
                                        <option value="7">Canceled</option>
                                        <option value="9">Canceled Reversal</option>
                                        <option value="13">Chargeback</option>
                                        <option value="5">Complete</option>
                                        <option value="8">Denied</option>
                                        <option value="14">Expired</option>
                                        <option value="10">Failed</option>
                                        <option value="1">Pending</option>
                                        <option value="15">Processed</option>
                                        <option value="2">Processing</option>
                                        <option value="11">Refunded</option>
                                        <option value="12">Reversed</option>
                                        <option value="3">Shipped</option>
                                        <option value="16">Voided</option>
                                    </select>
                                </div>
                                <button type="button" id="button-filter" class="btn btn-primary pull-right"><i class="glyphicon glyphicon-search"></i> Filter</button>
                            </div>
                        </div>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <td class="text-left">Customer Name</td>
                                    <td class="text-left">E-Mail</td>
                                    <td class="text-left">Customer Group</td>
                                    <td class="text-left">Status</td>
                                    <td class="text-right">No. Orders</td>
                                    <td class="text-right">No. Products</td>
                                    <td class="text-right">Total</td>
                                    <td class="text-right">Action</td>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="text-left">chankya aacharya</td>
                                    <td class="text-left">aacharya@chankya.com</td>
                                    <td class="text-left">Default</td>
                                    <td class="text-left">Enabled</td>
                                    <td class="text-right">119</td>
                                    <td class="text-right">106300</td>
                                    <td class="text-right">$10,843,820.00</td>
                                    <td class="text-right"><a href="EditCustomer.aspx" data-toggle="tooltip" title="" class="btn btn-primary btn-xs" data-original-title="Edit"><i class="glyphicon glyphicon-pencil"></i></a></td>
                                </tr>
                                <tr>
                                    <td class="text-left">aaa aaa</td>
                                    <td class="text-left">aaa@aaaa.com</td>
                                    <td class="text-left">Default</td>
                                    <td class="text-left">Enabled</td>
                                    <td class="text-right">14</td>
                                    <td class="text-right">11972</td>
                                    <td class="text-right">$5,079,600.15</td>
                                    <td class="text-right"><a href="EditCustomer.aspx" data-toggle="tooltip" title="" class="btn btn-primary btn-xs" data-original-title="Edit"><i class="glyphicon glyphicon-pencil"></i></a></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 text-left">
                            <ul class="pagination">
                                <li class="active"><span>1</span></li>
                                <li><a href="#">&gt;</a></li>
                                <li><a href="#">&gt;|</a></li>
                            </ul>
                        </div>
                        <div class="col-sm-6 text-right">Showing 1 to 20 of 331 (17 Pages)</div>
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
