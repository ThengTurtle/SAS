<%@ Page Title="Products" Language="vb" AutoEventWireup="false" MasterPageFile="~/Employee.Master" CodeBehind="EditProductReturn.aspx.vb" Inherits="SAS1.EditProductReturn1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <%--Content Header--%>
    <div class="col-sm-9 col-sm-offset-4 col-md-10 col-md-offset-2 main">
        <div class="container-fluid">
            <br />
            <div class="nav navbar-nav navbar-right">
                <button type="submit" form="form-product" data-toggle="tooltip" title="" class="btn btn-primary btn-sm" data-original-title="Save" data-placement="left"><i class="glyphicon glyphicon-floppy-disk"></i></button>
                <a href="Product Returns.aspx" data-toggle="tooltip" title="" class="btn btn-default btn-sm" data-original-title="Cancel"><i class="glyphicon glyphicon-menu-left (Cancel button)"></i></a>
            </div>
            <h1>Products</h1>
            <br />
        </div>

        <%--Content Body--%>
        <div class="container-fluid">
            <div class="panel panel-default">

                <%--panel heading--%>
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="glyphicon glyphicon-pencil"></i> Edit Product Return</h3>
                </div>

                <%--panel body--%>
                <div class="panel-body">
                    <form action="#" method="post" enctype="multipart/form-data" id="form-return" class="form-horizontal">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#tab-general" data-toggle="tab">General</a></li>
                            <li class=""><a href="#tab-history" data-toggle="tab">History</a></li>
                        </ul>
                        <div class="tab-content">

                            <%--general tab--%>
                            <div class="tab-pane active" id="tab-general">
                                <fieldset>
                                    <legend>Order Information</legend>
                                    <div class="form-group required">
                                        <label class="col-sm-2 control-label" for="input-order-id">Order ID</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="order_id" value="3123213" placeholder="Order ID" id="input-order-id" class="form-control"><br />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="input-date-ordered">Order Date</label>
                                        <div class="col-sm-10">
                                            <div class="input-group date">
                                                <input type="text" name="date_ordered" value="2015-08-03" placeholder="Order Date" data-format="YYYY-MM-DD" id="input-date-ordered" class="form-control">
                                                <span class="input-group-btn">
                                                    <button type="button" class="btn btn-default"><i class="glyphicon glyphicon-calendar"></i></button>
                                                </span><br />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="input-customer">Customer</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="customer" value="" placeholder="Customer" id="input-customer" class="form-control" autocomplete="off"><ul class="dropdown-menu"></ul>
                                            <input type="hidden" name="customer_id" value="0"><br />
                                        </div>
                                    </div>
                                    <div class="form-group required">
                                        <label class="col-sm-2 control-label" for="input-firstname">First Name</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="firstname" value="Sara" placeholder="First Name" id="input-firstname" class="form-control"><br />
                                        </div>
                                    </div>
                                    <div class="form-group required">
                                        <label class="col-sm-2 control-label" for="input-lastname">Last Name</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="lastname" value="Baghbanzadeh" placeholder="Last Name" id="input-lastname" class="form-control"><br />
                                        </div>
                                    </div>
                                    <div class="form-group required">
                                        <label class="col-sm-2 control-label" for="input-email">E-Mail</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="email" value="ssrg_group@uottawa.ca" placeholder="E-Mail" id="input-email" class="form-control"><br />
                                        </div>
                                    </div>
                                    <div class="form-group required">
                                        <label class="col-sm-2 control-label" for="input-telephone">Telephone</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="telephone" value="6135526633" placeholder="Telephone" id="input-telephone" class="form-control"><br />
                                        </div>
                                    </div>
                                </fieldset>
                                <fieldset>
                                    <legend>Product Information &amp; Reason for Return</legend>
                                    <div class="form-group required">
                                        <label class="col-sm-2 control-label" for="input-product"><span data-toggle="tooltip" title="" data-original-title="(Autocomplete)">Product</span></label>
                                        <div class="col-sm-10">
                                            <input type="text" name="product" value="sadasds" placeholder="Product" id="input-product" class="form-control" autocomplete="off"><ul class="dropdown-menu"></ul>
                                            <input type="hidden" name="product_id" value="0"><br />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="input-model">Model</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="model" value="asdsadsa" placeholder="Model" id="input-model" class="form-control"><br />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="input-quantity">Quantity</label>
                                        <div class="col-sm-10">
                                            <input type="text" name="quantity" value="1" placeholder="Quantity" id="input-quantity" class="form-control"><br />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="input-return-reason">Return Reason</label>
                                        <div class="col-sm-10">
                                            <select name="return_reason_id" id="input-return-reason" class="form-control">
                                                <option value="1" selected="selected">Dead On Arrival</option>
                                                <option value="4">Faulty, please supply details</option>
                                                <option value="3">Order Error</option>
                                                <option value="5">Other, please supply details</option>
                                                <option value="2">Received Wrong Item</option>
                                            </select><br />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="input-opened">Opened</label>
                                        <div class="col-sm-10">
                                            <select name="opened" id="input-opened" class="form-control">
                                                <option value="1">Opened</option>
                                                <option value="0" selected="selected">Unopened</option>
                                            </select><br />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="input-comment">Comment</label>
                                        <div class="col-sm-10">
                                            <textarea name="comment" rows="5" placeholder="Comment" id="input-comment" class="form-control"></textarea><br />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="input-return-action">Return Action</label>
                                        <div class="col-sm-10">
                                            <select name="return_action_id" id="input-return-action" class="form-control">
                                                <option value="0"></option>
                                                <option value="2">Credit Issued</option>
                                                <option value="1">Refunded</option>
                                                <option value="3">Replacement Sent</option>
                                            </select><br />
                                        </div>
                                    </div>
                                </fieldset>
                            </div>
                            <div class="tab-pane" id="tab-history">
                                <div id="history">
                                    <br />
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
                                                <td class="text-center" colspan="4">No results!</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <div class="row">
                                        <div class="col-sm-6 text-left"></div>
                                        <div class="col-sm-6 text-right">Showing 0 to 0 of 0 (0 Pages)</div>
                                    </div>
                                </div>
                                <br>
                                <fieldset>
                                    <legend>Add Return History</legend>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="input-return-status">Return Status</label>
                                        <div class="col-sm-10">
                                            <select name="return_status_id" id="input-return-status" class="form-control">
                                                <option value="2" selected="selected">Awaiting Products</option>
                                                <option value="3">Complete</option>
                                                <option value="1">Pending</option>
                                            </select><br />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="input-notify">Notify Customer</label>
                                        <div class="col-sm-9">
                                           <div class="checkbox">
                                            <label>
                                                <input type="checkbox" name="notify" value="1" id="input-notify">
                                            </label>
                                               <br />
                                           </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-2 control-label" for="input-history-comment">Comment</label>
                                        <div class="col-sm-10">
                                            <textarea name="history_comment" rows="8" id="input-history-comment" class="form-control"></textarea><br />
                                        </div>
                                    </div>
                                    <div class="text-right">
                                        <button id="button-history" data-loading-text="Loading..." class="btn btn-primary"><i class="glyphicon glyphicon-plus"></i> Add History</button>
                                    </div>
                                </fieldset>
                            </div>

                        </div>
                    </form>
                </div>
            </div>
            <%--<script type="text/javascript"><!--
    $('input[name=\'customer\']').autocomplete({
        'source': function (request, response) {
            $.ajax({
                url: 'index.php?route=sale/customer/autocomplete&token=db32917dd9a654189a04b033822e2a43&filter_name=' + encodeURIComponent(request),
                dataType: 'json',
                success: function (json) {
                    response($.map(json, function (item) {
                        return {
                            category: item['customer_group'],
                            label: item['name'],
                            value: item['customer_id'],
                            firstname: item['firstname'],
                            lastname: item['lastname'],
                            email: item['email'],
                            telephone: item['telephone']
                        }
                    }));
                }
            });
        },
        'select': function (item) {
            $('input[name=\'customer\']').val(item['label']);
            $('input[name=\'customer_id\']').val(item['value']);
            $('input[name=\'firstname\']').attr('value', item['firstname']);
            $('input[name=\'lastname\']').attr('value', item['lastname']);
            $('input[name=\'email\']').attr('value', item['email']);
            $('input[name=\'telephone\']').attr('value', item['telephone']);
        }
    });
    //--></script> 
  <script type="text/javascript"><!--
    $('input[name=\'product\']').autocomplete({
        'source': function (request, response) {
            $.ajax({
                url: 'index.php?route=catalog/product/autocomplete&token=db32917dd9a654189a04b033822e2a43&filter_name=' + encodeURIComponent(request),
                dataType: 'json',
                success: function (json) {
                    response($.map(json, function (item) {
                        return {
                            label: item['name'],
                            value: item['product_id'],
                            model: item['model']
                        }
                    }));
                }
            });
        },
        'select': function (item) {
            $('input[name=\'product\']').val(item['label']);
            $('input[name=\'product_id\']').val(item['value']);
            $('input[name=\'model\']').val(item['model']);
        }
    });

    $('#history').delegate('.pagination a', 'click', function (e) {
        e.preventDefault();

        $('#history').load(this.href);
    });

    $('#history').load('index.php?route=sale/return/history&token=db32917dd9a654189a04b033822e2a43&return_id=58');

    $('#button-history').on('click', function (e) {
        e.preventDefault();

        $.ajax({
            url: 'index.php?route=sale/return/history&token=db32917dd9a654189a04b033822e2a43&return_id=58',
            type: 'post',
            dataType: 'html',
            data: 'return_status_id=' + encodeURIComponent($('select[name=\'return_status_id\']').val()) + '&notify=' + ($('input[name=\'notify\']').prop('checked') ? 1 : 0) + '&comment=' + encodeURIComponent($('textarea[name=\'history_comment\']').val()),
            beforeSend: function () {
                $('#button-history').button('loading');
            },
            complete: function () {
                $('#button-history').button('reset');
            },
            success: function (html) {
                $('.alert').remove();

                $('#history').html(html);

                $('textarea[name=\'history_comment\']').val('');
            }
        });
    });
    //--></script> 
  <script type="text/javascript"><!--
    $('.date').datetimepicker({
        pickTime: false
    });
    //--></script>--%>
        </div>


        <%--footer--%>
        <hr />
        <footer>
            <p>&copy; <%: DateTime.Now.Year %> - Shopping Advisor System</p>
        </footer>
    </div>
    </div>
</asp:Content>
