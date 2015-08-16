<%@ Page Title="Shopping Cart" Language="vb" AutoEventWireup="false" MasterPageFile="~/Customer.Master" CodeBehind="Cart.aspx.vb" Inherits="SAS1.Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CustContent" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div id="content" class="col-sm-12">
                <h1>Shopping Cart</h1>

                <%--table--%>
                <form action="#" method="post" enctype="multipart/form-data" />
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <td class="text-center">Image</td>
                                <td class="text-left">Product Name</td>
                                <td class="text-left">Model</td>
                                <td class="text-left">Quantity</td>
                                <td class="text-right">Unit Price</td>
                                <td class="text-right">Total</td>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="text-center"><a href="#">
                                    <img src="#" alt="test" title="test" class="img-thumbnail"></a>
                                </td>
                                <td class="text-left"><a href="#">test</a>
                                    <span class="text-danger">test</span>
                                </td>
                                <td class="text-left">product 001</td>
                                <td class="text-left">
                                    <div class="input-group btn-block" style="max-width: 200px;">
                                        <input type="text" name="quantity[YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQwO30=]" value="1" size="1" class="form-control">
                                        <span class="input-group-btn">
                                            <button type="submit" data-toggle="tooltip" title="" class="btn btn-primary" data-original-title="Update"><i class="glyphicon glyphicon-refresh"></i></button>
                                            <button type="button" data-toggle="tooltip" title="" class="btn btn-danger" onclick="cart.remove('YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQwO30=');" data-original-title="Remove"><i class="glyphicon glyphicon-remove"></i></button>
                                        </span>
                                    </div>
                                </td>
                                <td class="text-right">$123.20</td>
                                <td class="text-right">$123.20</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                </form>


                <h2>What would you like to do next?</h2>
                <p>Choose if you have a discount code or reward points you want to use.</p>

                <%--coupon code--%>
                <div class="panel-group" id="accordion">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title"><a href="#collapse-coupon" class="accordion-toggle" data-toggle="collapse" data-parent="#accordion">Use Coupon Code <i class="glyphicon glyphicon-chevron-down"></i></a></h4>
                        </div>
                        <div id="collapse-coupon" class="panel-collapse collapse">
                            <div class="panel-body">
                                <label class="col-sm-3 control-label" for="input-coupon">Enter your coupon here</label>
                                <div class="input-group">
                                    <input type="text" name="coupon" value="" placeholder="Enter your coupon here" id="input-coupon" class="form-control">
                                    <span class="input-group-btn">
                                        <input type="button" value="Apply Coupon" id="button-coupon" data-loading-text="Loading..." class="btn btn-primary">
                                    </span>
                                </div>
                                <%-- <script type="text/javascript"><!--
    $('#button-coupon').on('click', function () {
        $.ajax({
            url: 'index.php?route=checkout/coupon/coupon',
            type: 'post',
            data: 'coupon=' + encodeURIComponent($('input[name=\'coupon\']').val()),
            dataType: 'json',
            beforeSend: function () {
                $('#button-coupon').button('loading');
            },
            complete: function () {
                $('#button-coupon').button('reset');
            },
            success: function (json) {
                $('.alert').remove();

                if (json['error']) {
                    $('.breadcrumb').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

                    $('html, body').animate({ scrollTop: 0 }, 'slow');
                }

                if (json['redirect']) {
                    location = json['redirect'];
                }
            }
        });
    });
    //--></script>--%>
                            </div>
                        </div>
                    </div>

                    <%--gift voucher--%>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title"><a href="#collapse-voucher" data-toggle="collapse" data-parent="#accordion" class="accordion-toggle">Use Gift Voucher <i class="glyphicon glyphicon-chevron-down"></i></a></h4>
                        </div>
                        <div id="collapse-voucher" class="panel-collapse collapse">
                            <div class="panel-body">
                                <label class="col-sm-3 control-label" for="input-voucher">Enter your gift voucher code here</label>
                                <div class="input-group">
                                    <input type="text" name="voucher" value="" placeholder="Enter your gift voucher code here" id="input-voucher" class="form-control">
                                    <span class="input-group-btn">
                                        <input type="submit" value="Apply Voucher" id="button-voucher" data-loading-text="Loading..." class="btn btn-primary">
                                    </span>
                                </div>
                                <%--<script type="text/javascript"><!--
    $('#button-voucher').on('click', function () {
        $.ajax({
            url: 'index.php?route=checkout/voucher/voucher',
            type: 'post',
            data: 'voucher=' + encodeURIComponent($('input[name=\'voucher\']').val()),
            dataType: 'json',
            beforeSend: function () {
                $('#button-voucher').button('loading');
            },
            complete: function () {
                $('#button-voucher').button('reset');
            },
            success: function (json) {
                $('.alert').remove();

                if (json['error']) {
                    $('.breadcrumb').after('<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> ' + json['error'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');

                    $('html, body').animate({ scrollTop: 0 }, 'slow');
                }

                if (json['redirect']) {
                    location = json['redirect'];
                }
            }
        });
    });
    //--></script>--%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <%--subtotal--%>
        <br>
        <div class="row">
            <div class="col-sm-4 col-sm-offset-8">
                <table class="table table-bordered">
                    <tbody>
                        <tr>
                            <td class="text-right"><strong>Sub-Total:</strong></td>
                            <td class="text-right">$101.00</td>
                        </tr>
                        <tr>
                            <td class="text-right"><strong>Total:</strong></td>
                            <td class="text-right">$123.20</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="buttons">
            <div class="pull-left"><a href="#" class="btn btn-default">Continue Shopping</a></div>
            <div class="pull-right"><a href="#" class="btn btn-primary">Checkout</a></div>
        </div>
    </div>

</asp:Content>
