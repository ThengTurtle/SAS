<%@ Page Title="Products Purchased Report" Language="vb" AutoEventWireup="false" MasterPageFile="~/Employee.Master" CodeBehind="ProductsPurchasedReport.aspx.vb" Inherits="SAS1.ProductPurchasedReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <%--Content Header--%>
    <div class="col-sm-9 col-sm-offset-4 col-md-10 col-md-offset-2 main">
        <div class="container-fluid">
            <br />
            <div class="nav navbar-nav navbar-right">
                <a onclick="confirm('Delete/Uninstall cannot be undone! Are you sure you want to do this?') ? location.href='#' : false;" data-toggle="tooltip" title="" class="btn btn-danger btn-xs" data-original-title="Reset"><i class="glyphicon glyphicon-refresh"></i></a>
            </div>
            <h1>Products Viewed Report</h1>
            <br />
        </div>


        <%--Content Body--%>
        <div class="container-fluid">
            <div class="panel panel-default">


                <%--panel heading--%>
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="glyphicon glyphicon-stats"></i> Products Purchased List</h3>
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
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <td class="text-left">Product Name</td>
                                    <td class="text-left">Model</td>
                                    <td class="text-right">Quantity</td>
                                    <td class="text-right">Total</td>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="text-left">HP LP3065</td>
                                    <td class="text-left">Product 21</td>
                                    <td class="text-right">117361</td>
                                    <td class="text-right">$11,522,145,934.00</td>
                                </tr>
                                <tr>
                                    <td class="text-left">MacBook Pro</td>
                                    <td class="text-left">Product 18</td>
                                    <td class="text-right">998</td>
                                    <td class="text-right">$1,968,140,000.00</td>
                                </tr>
                                <tr>
                                    <td class="text-left">Sony VAIO</td>
                                    <td class="text-left">Product 19</td>
                                    <td class="text-right">1000</td>
                                    <td class="text-right">$990,030,000.00</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 text-left"></div>
                        <div class="col-sm-6 text-right">Showing 1 to 17 of 17 (1 Pages)</div>
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
