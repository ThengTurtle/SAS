<%@ Page Title="Orders" Language="vb" AutoEventWireup="false" MasterPageFile="~/Employee.Master" CodeBehind="ViewOrder.aspx.vb" Inherits="SAS1.OrderDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <%--Content Header--%>
    <div class="col-sm-9 col-sm-offset-4 col-md-10 col-md-offset-2 main">
        <div class="container-fluid">
            <br />
            <div class="nav navbar-nav navbar-right">
                <a href="#" target="_blank" data-toggle="tooltip" title="" class="btn btn-info btn-sm" data-original-title="Print Invoice"><i class="glyphicon glyphicon-print"></i></a>
                <a href="EditOrder.aspx" data-toggle="tooltip" title="" class="btn btn-primary btn-sm" data-original-title="Edit"><i class="glyphicon glyphicon-pencil"></i></a>
                <a href="Orders.aspx" data-toggle="tooltip" title="" class="btn btn-default btn-sm" data-original-title="Cancel"><i class="glyphicon glyphicon-menu-left"></i></a>

            </div>
            <h1>Orders</h1>
        </div>
        <br />

        <%--Content Body--%>
        <div class="container-fluid">
            <div class="panel panel-default">

                <%--panel heading--%>
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="glyphicon glyphicon-th-list"></i> Orders</h3>
                </div>

                <%--panel body--%>
                <div class="panel-body">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#tab-order" data-toggle="tab">Order Details</a></li>
                        <li><a href="#tab-payment" data-toggle="tab">Payment Details</a></li>
                        <li><a href="#tab-product" data-toggle="tab">Products</a></li>
                        <li><a href="#tab-history" data-toggle="tab">History</a></li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="tab-order">
                            <table class="table table-bordered">
                                <tbody>
                                    <tr>
                                        <td>Order ID:</td>
                                        <td>#1871</td>
                                    </tr>
                                    <tr>
                                        <td>Invoice No.:</td>
                                        <td>
                                            <button id="button-invoice" class="btn btn-success btn-xs"><i class="fa fa-cog"></i>Generate</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Customer:</td>
                                        <td><a href="http://demo.opencart.com/admin/index.php?route=sale/customer/edit&amp;token=05d4d53639c8d9f7c023e79f6cf2506c&amp;customer_id=1497" target="_blank">111 111</a></td>
                                    </tr>
                                    <tr>
                                        <td>Customer Group:</td>
                                        <td>Default</td>
                                    </tr>
                                    <tr>
                                        <td>E-Mail:</td>
                                        <td><a href="mailto:ftfth@yjgj.fgh">ftfth@yjgj.fgh</a></td>
                                    </tr>
                                    <tr>
                                        <td>Telephone:</td>
                                        <td>111546</td>
                                    </tr>
                                    <tr>
                                        <td>Total:</td>
                                        <td>$130.00</td>
                                    </tr>
                                    <tr>
                                        <td>Reward Points:</td>
                                        <td>300                                   
                                            <button id="button-reward-add" class="btn btn-success btn-xs">Add Reward Points</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>Order Status:</td>
                                        <td id="order-status">Pending</td>
                                    </tr>
                                    <tr>
                                        <td>Date Added:</td>
                                        <td>09/08/2015</td>
                                    </tr>
                                    <tr>
                                        <td>Date Modified:</td>
                                        <td>09/08/2015</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="tab-pane" id="tab-payment">
                            <table class="table table-bordered">
                                <tbody>
                                    <tr>
                                        <td>First Name:</td>
                                        <td>111</td>
                                    </tr>
                                    <tr>
                                        <td>Last Name:</td>
                                        <td>111</td>
                                    </tr>
                                    <tr>
                                        <td>Address 1:</td>
                                        <td>dfgdfd 3gerf</td>
                                    </tr>
                                    <tr>
                                        <td>City:</td>
                                        <td>dfgf</td>
                                    </tr>
                                    <tr>
                                        <td>Postcode:</td>
                                        <td>wf4</td>
                                    </tr>
                                    <tr>
                                        <td>Region / State:</td>
                                        <td>Bridgend</td>
                                    </tr>
                                    <tr>
                                        <td>Region / State Code:</td>
                                        <td>BRI</td>
                                    </tr>
                                    <tr>
                                        <td>Country:</td>
                                        <td>United Kingdom</td>
                                    </tr>
                                    <tr>
                                        <td>Payment Method:</td>
                                        <td>Cash On Delivery</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="tab-pane" id="tab-product">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <td class="text-left">Product</td>
                                        <td class="text-left">Model</td>
                                        <td class="text-right">Quantity</td>
                                        <td class="text-right">Unit Price</td>
                                        <td class="text-right">Total</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="text-left"><a href="#">HP LP3065</a>
                                            <br>
                                            &nbsp;<small> - Delivery Date: 2011-04-22</small>
                                        </td>
                                        <td class="text-left">Product 21</td>
                                        <td class="text-right">1</td>
                                        <td class="text-right">$122.00</td>
                                        <td class="text-right">$122.00</td>
                                    </tr>
                                    <tr>
                                        <td colspan="4" class="text-right">Sub-Total:</td>
                                        <td class="text-right">$100.00</td>
                                    </tr>
                                    <tr>
                                        <td colspan="4" class="text-right">Flat Shipping Rate:</td>
                                        <td class="text-right">$5.00</td>
                                    </tr>
                                    <tr>
                                        <td colspan="4" class="text-right">Eco Tax (-2.00):</td>
                                        <td class="text-right">$4.00</td>
                                    </tr>
                                    <tr>
                                        <td colspan="4" class="text-right">VAT (20%):</td>
                                        <td class="text-right">$21.00</td>
                                    </tr>
                                    <tr>
                                        <td colspan="4" class="text-right">Total:</td>
                                        <td class="text-right">$130.00</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="tab-pane" id="tab-history">
                            <div id="history">
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <td class="text-left">Date Added</td>
                                            <td class="text-left">Comment</td>
                                            <td class="text-left">Status</td>
                                            <td class="text-left">Customer Notified</td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="text-left">09/08/2015</td>
                                            <td class="text-left"></td>
                                            <td class="text-left">Pending</td>
                                            <td class="text-left">No</td>
                                        </tr>
                                    </tbody>
                                </table>
                                <div class="row">
                                    <div class="col-sm-6 text-left"></div>
                                    <div class="col-sm-6 text-right">Showing 1 to 1 of 1 (1 Pages)</div>
                                </div>
                            </div>
                            <br>
                            <fieldset>
                                <legend>Add Order History</legend>
                                <form class="form-horizontal">
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="input-order-status">Order Status</label>
                                        <div class="col-sm-10">
                                            <select name="order_status_id" id="input-order-status" class="form-control">
                                                <option value="7">Canceled</option>
                                                <option value="9">Canceled Reversal</option>
                                                <option value="13">Chargeback</option>
                                                <option value="5">Complete</option>
                                                <option value="8">Denied</option>
                                                <option value="14">Expired</option>
                                                <option value="10">Failed</option>
                                                <option value="1" selected="selected">Pending</option>
                                                <option value="15">Processed</option>
                                                <option value="2">Processing</option>
                                                <option value="11">Refunded</option>
                                                <option value="12">Reversed</option>
                                                <option value="3">Shipped</option>
                                                <option value="16">Voided</option>
                                            </select><br />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="input-notify">Notify Customer</label>
                                        <div class="col-sm-9">
                                            <div class="checkbox">
                                                <label>
                                                    <input type="checkbox" name="notify" value="1" id="input-notify" />
                                                </label>
                                                <br />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="input-comment">Comment</label>
                                        <div class="col-sm-10">
                                            <textarea name="comment" rows="8" id="input-comment" class="form-control"></textarea><br />
                                        </div>
                                    </div>
                                </form>
                                <div class="text-right">
                                    <button id="button-history" data-loading-text="Loading..." class="btn btn-primary btn-xs"><i class="glyphicon glyphicon-plus"></i> Add History</button>
                                </div>
                            </fieldset>
                        </div>
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
