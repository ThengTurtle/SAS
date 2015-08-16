<%@ Page Title="Orders" Language="vb" AutoEventWireup="false" MasterPageFile="~/Employee.Master" CodeBehind="AddOrders.aspx.vb" Inherits="SAS1.AddOrders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <%--Content Header--%>
    <div class="col-sm-9 col-sm-offset-4 col-md-10 col-md-offset-2 main">
        <div class="container-fluid">
            <br />
            <div class="nav navbar-nav navbar-right">
                <a href="Orders.aspx" data-toggle="tooltip" title="" class="btn btn-default btn-sm" data-original-title="Cancel"><i class="glyphicon glyphicon-menu-left">Cancel</i></a>
            </div>
            <h1>Orders</h1>
            <br />
        </div>


        <%--Content Body--%>
        <div class="container-fluid">
            <div class="panel panel-default">

                <%--panel heading--%>
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="glyphicon glyphicon-pencil"></i> Add Order</h3>
                </div>

                <%--panel body--%>
                <div class="panel-body">
                    <form class="form-horizontal">
                        <ul id="order" class="nav nav-tabs nav-justified">
                            <li class="disabled active"><a href="#tab-customer" data-toggle="tab">1. Customer Details</a></li>
                            <li class="disabled"><a href="#tab-cart" data-toggle="tab">2. Products</a></li>
                            <li class="disabled"><a href="#tab-payment" data-toggle="tab">3. Payment Details</a></li>
                            <li class="disabled"><a href="#tab-total" data-toggle="tab">4. Totals</a></li>
                        </ul>
                        <div class="tab-content">

                            <%--tab customer--%>
                            <div class="tab-pane active" id="tab-customer">
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-customer">Customer</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="customer" value="" placeholder="Customer" id="input-customer" class="form-control" autocomplete="off"><ul class="dropdown-menu"></ul>
                                        <input type="hidden" name="customer_id" value="" /><br />
                                    </div>
                                </div>
                                <div class="form-group required">
                                    <label class="col-sm-2 control-label" for="input-firstname">First Name</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="firstname" value="" id="input-firstname" class="form-control"><br />
                                    </div>
                                </div>
                                <div class="form-group required">
                                    <label class="col-sm-2 control-label" for="input-lastname">Last Name</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="lastname" value="" id="input-lastname" class="form-control"><br />
                                    </div>
                                </div>
                                <div class="form-group required">
                                    <label class="col-sm-2 control-label" for="input-email">E-Mail</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="email" value="" id="input-email" class="form-control"><br />
                                    </div>
                                </div>
                                <div class="form-group required">
                                    <label class="col-sm-2 control-label" for="input-telephone">Telephone</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="telephone" value="" id="input-telephone" class="form-control"><br />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-fax">Fax</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="fax" value="" id="input-fax" class="form-control"><br />
                                    </div>
                                </div>
                                <div class="text-right">
                                    <button type="button" id="button-customer" data-loading-text="Loading..." class="btn btn-primary"><i class="glyphicon glyphicon-arrow-right"></i> Continue</button>
                                </div>
                            </div>


                            <%--cart tab--%>
                            <div class="tab-pane" id="tab-cart">
                                <br />
                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <td class="text-left">Product</td>
                                                <td class="text-left">Model</td>
                                                <td class="text-right">Quantity</td>
                                                <td class="text-right">Unit Price</td>
                                                <td class="text-right">Total</td>
                                                <td></td>
                                            </tr>
                                        </thead>
                                        <tbody id="cart">
                                            <tr>
                                                <td class="text-center" colspan="6">No results!</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>

                                <ul class="nav nav-tabs nav-justified">
                                    <li class="active"><a href="#tab-product" data-toggle="tab">Products</a></li>
                                    <li><a href="#tab-voucher" data-toggle="tab">Vouchers</a></li>
                                </ul>

                                <div class="tab-content">
                                    <div class="tab-pane active" id="tab-product">
                                        <fieldset>
                                            <br />
                                            <legend>Add Product(s)</legend>
                                            <div class="form-group">
                                                <label class="col-sm-2 control-label" for="input-product">Choose Product</label>
                                                <div class="col-sm-10">
                                                    <input type="text" name="product" value="" id="input-product" class="form-control" autocomplete="off"><ul class="dropdown-menu"></ul>
                                                    <input type="hidden" name="product_id" value=""><br />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-2 control-label" for="input-quantity">Quantity</label>
                                                <div class="col-sm-10">
                                                    <input type="text" name="quantity" value="1" id="input-quantity" class="form-control">
                                                </div>
                                            </div>
                                            <div id="option"></div>
                                        </fieldset>
                                        <div class="text-right">
                                            <button type="button" id="button-product-add" data-loading-text="Loading..." class="btn btn-primary">Add Product</button>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="tab-voucher">
                                        <fieldset>
                                            <legend>Add Voucher(s)</legend>
                                            <div class="form-group required">
                                                <label class="col-sm-2 control-label" for="input-to-name">Recipient's Name</label>
                                                <div class="col-sm-10">
                                                    <input type="text" name="to_name" value="" id="input-to-name" class="form-control"><br />
                                                </div>
                                            </div>
                                            <div class="form-group required">
                                                <label class="col-sm-2 control-label" for="input-to-email">Recipient's Email</label>
                                                <div class="col-sm-10">
                                                    <input type="text" name="to_email" value="" id="input-to-email" class="form-control"><br />
                                                </div>
                                            </div>
                                            <div class="form-group required">
                                                <label class="col-sm-2 control-label" for="input-from-name">Senders Name</label>
                                                <div class="col-sm-10">
                                                    <input type="text" name="from_name" value="" id="input-from-name" class="form-control"><br />
                                                </div>
                                            </div>
                                            <div class="form-group required">
                                                <label class="col-sm-2 control-label" for="input-from-email">Senders Email</label>
                                                <div class="col-sm-10">
                                                    <input type="text" name="from_email" value="" id="input-from-email" class="form-control"><br />
                                                </div>
                                            </div>
                                            <div class="form-group required">
                                                <label class="col-sm-2 control-label" for="input-theme">Gift Certificate Theme</label>
                                                <div class="col-sm-offset-2">
                                                    <select name="voucher_theme_id" id="input-theme" class="form-control">
                                                        <option value="7">Birthday</option>
                                                        <option value="6">Christmas</option>
                                                        <option value="8">General</option>
                                                        <br />
                                                    </select><br />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-2 control-label" for="input-message">Message</label>
                                                <div class="col-sm-10">
                                                    <textarea name="message" rows="5" id="input-message" class="form-control"></textarea><br />
                                                </div>
                                            </div>
                                            <div class="form-group required">
                                                <label class="col-sm-2 control-label" for="input-amount">Amount</label>
                                                <div class="col-sm-10">
                                                    <input type="text" name="amount" value="1" id="input-amount" class="form-control"><br />
                                                </div>
                                            </div>
                                        </fieldset>
                                        <div class="text-right">
                                            <button type="button" id="button-voucher-add" data-loading-text="Loading..." class="btn btn-primary">Add Voucher</button>
                                        </div>
                                    </div>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-sm-6 text-left">
                                        <button type="button" onclick="$('a[href=\'#tab-customer\']').tab('show');" class="btn btn-default"><i class="glyphicon glyphicon-arrow-left"></i> Back</button>
                                    </div>
                                    <div class="col-sm-6 text-right">
                                        <button type="button" id="button-cart" class="btn btn-primary"><i class="glyphicon glyphicon-arrow-right"></i> Continue</button>
                                    </div>
                                </div>
                            </div>


                            <%--payment tab--%>
                            <div class="tab-pane" id="tab-payment">
                                <div class="form-group">
                                    <br />
                                    <label class="col-sm-2 control-label" for="input-payment-address">Choose Address</label>
                                    <div class="col-sm-offset-2">
                                        <select name="payment_address" id="input-payment-address" class="form-control">
                                            <option value="0" selected="selected">--- None --- </option>
                                            <br />
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group required">
                                    <label class="col-sm-2 control-label" for="input-payment-firstname">First Name</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="firstname" value="" id="input-payment-firstname" class="form-control"><br />
                                    </div>
                                </div>
                                <div class="form-group required">
                                    <label class="col-sm-2 control-label" for="input-payment-lastname">Last Name</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="lastname" value="" id="input-payment-lastname" class="form-control"><br />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-payment-company">Company</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="company" value="" id="input-payment-company" class="form-control"><br />
                                    </div>
                                </div>
                                <div class="form-group required">
                                    <label class="col-sm-2 control-label" for="input-payment-address-1">Address 1</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="address_1" value="" id="input-payment-address-1" class="form-control"><br />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-payment-address-2">Address 2</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="address_2" value="" id="input-payment-address-2" class="form-control"><br />
                                    </div>
                                </div>
                                <div class="form-group required">
                                    <label class="col-sm-2 control-label" for="input-payment-city">City</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="city" value="" id="input-payment-city" class="form-control"><br />
                                    </div>
                                </div>
                                <div class="form-group required">
                                    <label class="col-sm-2 control-label" for="input-payment-postcode">Postcode</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="postcode" value="" id="input-payment-postcode" class="form-control"><br />
                                    </div>
                                </div>
                                <div class="form-group required">
                                    <label class="col-sm-2 control-label" for="input-payment-country">Country</label>
                                    <div class="col-sm-10">
                                        <select name="country_id" id="input-payment-country" class="form-control">
                                            <option value="">--- Please Select --- </option>
                                            <option value="129">Malaysia</option>
                                        </select><br />
                                    </div>
                                </div>
                                <div class="form-group required">
                                    <label class="col-sm-2 control-label" for="input-payment-zone">Region / State</label>
                                    <div class="col-sm-10">
                                        <select name="zone_id" id="input-payment-zone" class="form-control">
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
                                <div class="row">
                                    <div class="col-sm-6 text-left">
                                        <button type="button" onclick="$('a[href=\'#tab-cart\']').tab('show');" class="btn btn-default"><i class="glyphicon glyphicon-arrow-left"></i> Back</button>
                                    </div>
                                    <div class="col-sm-6 text-right">
                                        <button type="button" id="button-payment-address" data-loading-text="Loading..." class="btn btn-primary"><i class="glyphicon glyphicon-arrow-right"></i> Continue</button>
                                    </div>
                                </div>
                            </div>


                            <%--shipping tab--%>
                            <div class="tab-pane" id="tab-shipping">
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-shipping-address">Choose Address</label>
                                    <div class="col-sm-10">
                                        <select name="shipping_address" id="input-shipping-address" class="form-control">
                                            <option value="0" selected="selected">--- None --- </option>
                                        </select><br />
                                    </div>
                                </div>
                                <div class="form-group required">
                                    <label class="col-sm-2 control-label" for="input-shipping-firstname">First Name</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="firstname" value="" id="input-shipping-firstname" class="form-control"><br />
                                    </div>
                                </div>
                                <div class="form-group required">
                                    <label class="col-sm-2 control-label" for="input-shipping-lastname">Last Name</label>
                                    <div class="col-sm-10">
                                        control"><br />
                                        <input type="text" name="lastname" value="" id="input-shipping-lastname" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-shipping-company">Company</label>
                                    <div class="col-sm-10">
                                        control"><br />
                                        <input type="text" name="company" value="" id="input-shipping-company" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group required">
                                    <label class="col-sm-2 control-label" for="input-shipping-address-1">Address 1</label>
                                    <div class="col-sm-10">
                                        control"><br />
                                        <input type="text" name="address_1" value="" id="input-shipping-address-1" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-shipping-address-2">Address 2</label>
                                    <div class="col-sm-10">
                                        control"><br />
                                        <input type="text" name="address_2" value="" id="input-shipping-address-2" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group required">
                                    <label class="col-sm-2 control-label" for="input-shipping-city">City</label>
                                    <div class="col-sm-10">
                                        control"><br />
                                        <input type="text" name="city" value="" id="input-shipping-city" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group required">
                                    <label class="col-sm-2 control-label" for="input-shipping-postcode">Postcode</label>
                                    <div class="col-sm-10">
                                        control"><br />
                                        <input type="text" name="postcode" value="" id="input-shipping-postcode" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group required">
                                    <label class="col-sm-2 control-label" for="input-shipping-country">Country</label>
                                    <div class="col-sm-10">
                                        <select name="country_id" id="input-shipping-country" class="form-control">
                                            <option value="">--- Please Select --- </option>
                                            <option value="1">Malaysia</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group required">
                                    <label class="col-sm-2 control-label" for="input-shipping-zone">Region / State</label>
                                    <div class="col-sm-10">
                                        <select name="zone_id" id="input-shipping-zone" class="form-control">
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
                                <div class="row">
                                    <div class="col-sm-6 text-left">
                                        <button type="button" onclick="$('a[href=\'#tab-payment\']').tab('show');" class="btn btn-default"><i class="glyphicon glyphicon-arrow-left"></i> Back</button>
                                    </div>
                                    <div class="col-sm-6 text-right">
                                        <button type="button" id="button-shipping-address" data-loading-text="Loading..." class="btn btn-primary"><i class="glyphicon glyphicon-arrow-right"></i>Continue</button>
                                    </div>
                                </div>
                            </div>


                            <%--total tab--%>
                            <div class="tab-pane" id="tab-total">
                                <div class="table-responsive">
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
                                        <tbody id="total">
                                            <tr>
                                                <td class="text-center" colspan="5">No results!</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <fieldset>
                                    <legend>Order Details</legend>
                                    <div class="form-group required">
                                        <label class="col-sm-2 control-label" for="input-shipping-method">Shipping Method</label>
                                        <div class="col-sm-offset-2">
                                            <div class="input-group">
                                                <select name="shipping_method" id="input-shipping-method" class="form-control">
                                                    <option value="">--- Please Select --- </option>
                                                </select><br />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group required">
                                        <label class="col-sm-2 control-label" for="input-payment-method">Payment Method</label>
                                        <div class="col-sm-offset-2">
                                            <div class="input-group">
                                                <select name="payment_method" id="input-payment-method" class="form-control">
                                                    <option value="">--- Please Select --- </option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="input-coupon">Coupon</label>
                                        <div class="col-sm-10">
                                            <div class="input-group">
                                                <input type="text" name="coupon" value="" id="input-coupon" class="form-control">
                                                <span class="input-group-btn">
                                                    <button type="button" id="button-coupon" data-toggle="tooltip" title="" data-loading-text="Loading..." class="btn btn-primary btn-xs" data-original-title="Apply Coupon"><i class="glyphicon glyphicon-refresh"></i></button>
                                                </span>
                                                <br />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="input-voucher">Voucher</label>
                                        <div class="col-sm-10">
                                            <div class="input-group">
                                                <input type="text" name="voucher" value="" id="input-voucher" data-loading-text="Loading..." class="form-control">
                                                <span class="input-group-btn">
                                                    <button type="button" id="button-voucher" data-toggle="tooltip" title="" data-loading-text="Loading..." class="btn btn-primary btn-xs" data-original-title="Apply Voucher"><i class="glyphicon glyphicon-refresh"></i></button>
                                                </span>
                                                <br />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="input-reward">Reward</label>
                                        <div class="col-sm-10">
                                            <div class="input-group">
                                                <input type="text" name="reward" value="" id="input-reward" data-loading-text="Loading..." class="form-control">
                                                <span class="input-group-btn">
                                                    <button type="button" id="button-reward" data-toggle="tooltip" title="" data-loading-text="Loading..." class="btn btn-primary btn-xs" data-original-title="Apply Points"><i class="glyphicon glyphicon-refresh"></i></button>
                                                </span>
                                                <br />
                                            </div>
                                        </div>
                                    </div>
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
                                            </select>
                                            <input type="hidden" name="order_id" value="0"><br />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="input-comment">Comment</label>
                                        <div class="col-sm-10">
                                            <textarea name="comment" rows="5" id="input-comment" class="form-control"></textarea><br />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="input-affiliate">Affiliate</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="affiliate" value="" id="input-affiliate" class="form-control" autocomplete="off"><ul class="dropdown-menu"></ul>
                                            <input type="hidden" name="affiliate_id" value=""><br />
                                        </div>
                                    </div>
                                </fieldset>
                                <div class="row">
                                    <div class="col-sm-6 text-left">
                                        <button type="button" onclick="$('select[name=\'shipping_method\']').prop('disabled') ? $('a[href=\'#tab-payment\']').tab('show') : $('a[href=\'#tab-shipping\']').tab('show');" class="btn btn-default"><i class="glyphicon glyphicon-arrow-left"></i> Back</button>
                                    </div>
                                    <div class="col-sm-6 text-right">
                                        <button type="button" id="button-refresh" data-loading-text="Loading..." class="btn btn-warning"><i class="glyphicon glyphicon-refresh"></i></button>
                                        <button type="button" id="button-save" class="btn btn-primary">Save</button>
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
