<%@ Page Title="Coupons" Language="vb" AutoEventWireup="false" MasterPageFile="~/Employee.Master" CodeBehind="EditCoupon.aspx.vb" Inherits="SAS1.EditCoupon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <%--Content Header--%>
    <div class="col-sm-9 col-sm-offset-4 col-md-10 col-md-offset-2 main">
        <div class="container-fluid">
            <br />
            <div class="nav navbar-nav navbar-right">
                <button type="submit" form="form-coupon" data-toggle="tooltip" title="" class="btn btn-primary" data-original-title="Save"><i class="glyphicon glyphicon-floppy-disk"></i></button>
                <a href="Coupon.aspx" data-toggle="tooltip" title="" class="btn btn-default" data-original-title="Cancel"><i class="glyphicon glyphicon-menu-left"></i></a>
            </div>
        <h1>Coupons</h1>
        <br />
        </div>

    <%--Content Body--%>
    <div class="container-fluid">
        <div class="panel panel-default">


            <%--panel heading--%>
            <div class="panel-heading">
                <h3 class="panel-title"><i class="glyphicon glyphicon-pencil"></i> Edit Coupon</h3>
            </div>

            <%--panel body--%>
            <div class="panel-body">
                <form action="#" method="post" enctype="multipart/form-data" id="form-coupon" class="form-horizontal">
                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#tab-general" data-toggle="tab">General</a></li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="tab-general">

                            <%--name--%>
                            <div class="form-group required">
                                <label class="col-sm-2 control-label" for="input-name">Coupon Name</label>
                                <div class="col-sm-10">
                                    <input type="text" name="name" value="" placeholder="Coupon Name" id="input-name" class="form-control"><br />
                                </div>
                            </div>

                            <%--code--%>
                            <div class="form-group required">
                                <label class="col-sm-2 control-label" for="input-code"><span data-toggle="tooltip" title="" data-original-title="The code the customer enters to get the discount.">Code <span class="label label-primary">?</span></span></label>
                                <div class="col-sm-10">
                                    <input type="text" name="code" value="" placeholder="Code" id="input-code" class="form-control"><br />
                                </div>
                            </div>

                            <%--type--%>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="input-type"><span data-toggle="tooltip" title="" data-original-title="Percentage or Fixed Amount.">Type <span class="label label-primary">?</span></span></label>
                                <div class="col-sm-10">
                                    <select name="type" id="input-type" class="form-control">
                                        <option value="P">Percentage</option>
                                        <option value="F">Fixed Amount</option>
                                    </select><br />
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="input-discount">Discount</label>
                                <div class="col-sm-10">
                                    <input type="text" name="discount" value="" placeholder="Discount" id="input-discount" class="form-control"><br />
                                </div>
                            </div>

                            <%--total amount--%>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="input-total"><span data-toggle="tooltip" title="" data-original-title="The total amount that must be reached before the coupon is valid.">Total Amount <span class="label label-primary">?</span></span></label>
                                <div class="col-sm-10">
                                    <input type="text" name="total" value="" placeholder="Total Amount" id="input-total" class="form-control"><br />
                                </div>
                            </div>

                            <%--customer login--%>
                            <div class="form-group">
                                <label class="col-sm-2 control-label"><span data-toggle="tooltip" title="" data-original-title="Customer must be logged in to use the coupon.">Customer Login <span class="label label-primary">?</span></span></label>
                                <div class="col-sm-10">
                                    <div class="radio">
                                        <label class="radio-inline">
                                            <input type="radio" name="logged" value="1">
                                            Yes                                     
                                        </label>
                                        <label class="radio">
                                            <input type="radio" name="logged" value="0" checked="checked">
                                            No                                     
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">Free Shipping</label>
                                <div class="col-sm-10">
                                    <div class="radio">
                                        <label class="radio-inline">
                                            <input type="radio" name="shipping" value="1">
                                            Yes                                     
                                        </label>
                                        <label class="radio">
                                            <input type="radio" name="shipping" value="0" checked="checked">
                                            No                                     
                                        </label>
                                    </div>
                                </div>
                            </div>

                            <%--product--%>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="input-product"><span data-toggle="tooltip" title="" data-original-title="Choose specific products the coupon will apply to. Select no products to apply coupon to entire cart.">Products <span class="label label-primary">?</span></span></label>
                                <div class="col-sm-10">
                                    <input type="text" name="product" value="" placeholder="Products" id="input-product" class="form-control" autocomplete="off"><ul class="dropdown-menu"></ul>
                                    <br />
                                    <div id="coupon-product" class="well well-sm" style="height: 150px; overflow: auto;">
                                    </div>
                                </div>
                            </div>

                            <%--category--%>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="input-category"><span data-toggle="tooltip" title="" data-original-title="Choose all products under selected category.">Category <span class="label label-primary">?</span></span></label>
                                <div class="col-sm-10">
                                    <input type="text" name="category" value="" placeholder="Category" id="input-category" class="form-control" autocomplete="off"><ul class="dropdown-menu"></ul>
                                    <br />
                                    <div id="coupon-category" class="well well-sm" style="height: 150px; overflow: auto;">
                                    </div>
                                </div>
                            </div>


                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="input-date-start">Date Start</label>
                                <div class="col-sm-4">
                                    <div class="input-group date">
                                        <input type="text" name="date_start" value="2015-08-10" placeholder="Date Start" data-format="YYYY-MM-DD" id="input-date-start" class="form-control">
                                        <span class="input-group-btn">
                                            <button type="button" class="btn btn-default"><i class="glyphicon glyphicon-calendar"></i></button>
                                        </span>
                                        <br />
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="input-date-end">Date End</label>
                                <div class="col-sm-4">
                                    <div class="input-group date">
                                        <input type="text" name="date_end" value="2015-09-10" placeholder="Date End" data-format="YYYY-MM-DD" id="input-date-end" class="form-control">
                                        <span class="input-group-btn">
                                            <button type="button" class="btn btn-default"><i class="glyphicon glyphicon-calendar"></i></button>
                                        </span>
                                        <br />
                                    </div>
                                </div>
                            </div>

                            <%--uses per coupon--%>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="input-uses-total"><span data-toggle="tooltip" title="" data-original-title="The maximum number of times the coupon can be used by any customer. Leave blank for unlimited">Uses Per Coupon <span class="label label-primary">?</span></span></label>
                                <div class="col-sm-10">
                                    <input type="text" name="uses_total" value="1" placeholder="Uses Per Coupon" id="input-uses-total" class="form-control"><br />
                                </div>
                            </div>

                            <%--uses per customer--%>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="input-uses-customer"><span data-toggle="tooltip" title="" data-original-title="The maximum number of times the coupon can be used by a single customer. Leave blank for unlimited">Uses Per Customer <span class="label label-primary">?</span></span></label>
                                <div class="col-sm-10">
                                    <input type="text" name="uses_customer" value="1" placeholder="Uses Per Customer" id="input-uses-customer" class="form-control"><br />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="input-status">Status</label>
                                <div class="col-sm-10">
                                    <select name="status" id="input-status" class="form-control">
                                        <option value="1" selected="selected">Enabled</option>
                                        <option value="0">Disabled</option>
                                        <br />
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
