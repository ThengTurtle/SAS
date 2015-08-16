<%@ Page Title="Sales Report" Language="vb" AutoEventWireup="false" MasterPageFile="~/Employee.Master" CodeBehind="SalesReport.aspx.vb" Inherits="SAS1.SalesReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <%--Content Header--%>
    <div class="col-sm-9 col-sm-offset-4 col-md-10 col-md-offset-2 main">
        <div class="container-fluid">
            <br />
            <h1>Sales Report</h1>
            <br />
        </div>

        <%--Content Body--%>
        <div class="container-fluid">
            <div class="panel panel-default">

                <%--panel heading--%>
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="glyphicon glyphicon-stats"></i> Sales List</h3>
                </div>

                <%--panel body--%>
                <div class="panel-body">
                    <div class="well">
                        <div class="row">
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label class="control-label" for="input-date-start">Date Start</label>
                                    <div class="input-group date">
                                        <input type="text" name="filter_date_start" value="2015-08-01" placeholder="Date Start" data-format="YYYY-MM-DD" id="input-date-start" class="form-control">
                                        <span class="input-group-btn">
                                            <button type="button" class="btn btn-default"><i class="glyphicon glyphicon-calendar"></i></button>
                                        </span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label" for="input-date-end">Date End</label>
                                    <div class="input-group date">
                                        <input type="text" name="filter_date_end" value="2015-08-12" placeholder="Date End" data-format="YYYY-MM-DD" id="input-date-end" class="form-control">
                                        <span class="input-group-btn">
                                            <button type="button" class="btn btn-default"><i class="glyphicon glyphicon-calendar"></i></button>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-5">
                                <div class="form-group">
                                    <label class="control-label" for="input-group">Group By</label>
                                    <select name="filter_group" id="input-group" class="form-control">
                                        <option value="year">Years</option>
                                        <option value="month">Months</option>
                                        <option value="week" selected="selected">Weeks</option>
                                        <option value="day">Days</option>
                                    </select>
                                </div>
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
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <td class="text-left">Date Start</td>
                                    <td class="text-left">Date End</td>
                                    <td class="text-right">No. Orders</td>
                                    <td class="text-right">No. Products</td>
                                    <td class="text-right">Tax</td>
                                    <td class="text-right">Total</td>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="text-left">09/08/2015</td>
                                    <td class="text-left">12/08/2015</td>
                                    <td class="text-right">5</td>
                                    <td class="text-right">1</td>
                                    <td class="text-right">$25.00</td>
                                    <td class="text-right">$575.00</td>
                                </tr>
                                <tr>
                                    <td class="text-left">02/08/2015</td>
                                    <td class="text-left">07/08/2015</td>
                                    <td class="text-right">12</td>
                                    <td class="text-right">1</td>
                                    <td class="text-right">$0.00</td>
                                    <td class="text-right">$1,335.00</td>
                                </tr>
                                <tr>
                                    <td class="text-left">01/08/2015</td>
                                    <td class="text-left">01/08/2015</td>
                                    <td class="text-right">1</td>
                                    <td class="text-right"></td>
                                    <td class="text-right">$0.00</td>
                                    <td class="text-right">$1.00</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 text-left"></div>
                        <div class="col-sm-6 text-right">Showing 1 to 3 of 3 (1 Pages)</div>
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
