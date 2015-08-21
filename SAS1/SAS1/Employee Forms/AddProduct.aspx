<%@ Page Title="Product" Language="vb" AutoEventWireup="false" MasterPageFile="~/Employee.Master" CodeBehind="AddProduct.aspx.vb" Inherits="SAS1.AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <%--Content Header--%>
    <div class="col-sm-9 col-sm-offset-4 col-md-10 col-md-offset-2 main">
        <div class="container-fluid">
            <br />
            <div class="nav navbar-nav navbar-right">
                <button type="submit" form="form-product" data-toggle="tooltip" title="" class="btn btn-primary btn-sm" data-original-title="Save" data-placement="left"><i class="glyphicon glyphicon-floppy-disk"></i></button>
                <a href="Product.aspx" data-toggle="tooltip" title="" class="btn btn-default btn-sm" data-original-title="Cancel"><i class="glyphicon glyphicon-menu-left (Cancel button)"></i></a>
            </div>
            <h1>Products</h1>
            <br />
        </div>


        <%--Content Body--%>
        <div class="container-fluid">
            <div class="panel panel-default">

                <%--panel header--%>
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="glyphicon glyphicon-pencil"></i>Add Product</h3>
                </div>

                <%--panel body--%>
                <div class="panel-body">
                    <form action="#" method="post" enctype="multipart/form-data" id="form-product" class="form-horizontal">

                        <%--tab--%>
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#tab-general" data-toggle="tab">General</a></li>
                            <li class=""><a href="#tab-data" data-toggle="tab">Data</a></li>
                            <li class=""><a href="#tab-links" data-toggle="tab">Links</a></li>
                            <li class=""><a href="#tab-image" data-toggle="tab">Image</a></li>
                            <li class=""><a href="#tab-discount" data-toggle="tab">Discount</a></li>
                            <li class=""><a href="#tab-special" data-toggle="tab">Special</a></li>
                            <li class=""><a href="#tab-reward" data-toggle="tab">Reward Points</a></li>
                        </ul>

                        <div class="tab-content">

                            <%--general tab--%>
                            <div class="tab-pane fade active in" id="tab-general">
                                <div class="form-group required">
                                    <label class="col-sm-2 control-label" for="input-name1">Product Name</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="product_description[1][name]" value="" placeholder="Product Name" id="input-name1" class="form-control"/><br />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-related"><span data-toggle="tooltip" title="" data-original-title="(Autocomplete)">Description</span></label>
                                    <div class="col-sm-8">
                                        <textarea class="form-control" rows="3" id="textArea" style="margin: 0px -14.84375px 0px 0px; height: 78px; width: 440px;"></textarea>
                                    </div>
                                </div>

                            </div>


                            <%--data tab--%>
                            <div class="tab-pane fade" id="tab-data">

                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-image">Image</label>
                                    <div class="col-sm-10">
                                        <a href="" id="thumb-image" data-toggle="image" class="img-thumbnail">
                                            <img src="#"></a>
                                        <input type="hidden" name="image" value="" id="input-image" /><br />
                                    </div>
                                </div>

                                <div class="form-group required">
                                    <label class="col-sm-2 control-label" for="input-model">Model</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="model" value="" placeholder="Model" id="input-model" class="form-control" /><br />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-sku"><span data-toggle="tooltip" title="" data-original-title="Stock Keeping Unit">SKU <span class="label label-primary">?</span></span></label>
                                    <div class="col-sm-10">
                                        <input type="text" name="sku" value="" placeholder="SKU" id="input-sku" class="form-control"/><br />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-upc"><span data-toggle="tooltip" title="" data-original-title="Universal Product Code">UPC <span class="label label-primary">?</span></span></label>
                                    <div class="col-sm-10">
                                        <input type="text" name="upc" value="" placeholder="UPC" id="input-upc" class="form-control"/><br />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-ean"><span data-toggle="tooltip" title="" data-original-title="European Article Number">EAN <span class="label label-primary">?</span></span></label>
                                    <div class="col-sm-10">
                                        <input type="text" name="ean" value="" placeholder="EAN" id="input-ean" class="form-control"/><br />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-jan"><span data-toggle="tooltip" title="" data-original-title="Japanese Article Number">JAN <span class="label label-primary">?</span></span></label>
                                    <div class="col-sm-10">
                                        <input type="text" name="jan" value="" placeholder="JAN" id="input-jan" class="form-control"/><br />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-isbn"><span data-toggle="tooltip" title="" data-original-title="International Standard Book Number">ISBN <span class="label label-primary">?</span></span></label>
                                    <div class="col-sm-10">
                                        <input type="text" name="isbn" value="" placeholder="ISBN" id="input-isbn" class="form-control"/><br />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-mpn"><span data-toggle="tooltip" title="" data-original-title="Manufacturer Part Number">MPN <span class="label label-primary">?</span></span></label>
                                    <div class="col-sm-10">
                                        <input type="text" name="mpn" value="" placeholder="MPN" id="input-mpn" class="form-control"/><br />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-location">Location</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="location" value="" placeholder="Location" id="input-location" class="form-control"/><br />
                                    </div>
                                    <br />
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-price">Price</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="price" value="" placeholder="Price" id="input-price" class="form-control"/><br />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-tax-class">Tax Class</label>
                                    <div class="col-sm-10">
                                        <select name="tax_class_id" id="input-tax-class" class="form-control">
                                            <option value="0">--- None --- </option>
                                            <option value="9">Taxable Goods (GST) </option>
                                        </select><br />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-quantity">Quantity</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="quantity" value="1" placeholder="Quantity" id="input-quantity" class="form-control"/><br />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-minimum"><span data-toggle="tooltip" title="" data-original-title="Force a minimum ordered amount">Minimum Quantity <span class="label label-primary">?</span></span></label>
                                    <div class="col-sm-10">
                                        <input type="text" name="minimum" value="1" placeholder="Minimum Quantity" id="input-minimum" class="form-control" /><br />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-subtract">Subtract Stock</label>
                                    <div class="col-sm-10">
                                        <select name="subtract" id="input-subtract" class="form-control">
                                            <option value="1" selected="selected">Yes</option>
                                            <option value="0">No</option>
                                        </select><br />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-stock-status"><span data-toggle="tooltip" title="" data-original-title="Status shown when a product is out of stock">Out Of Stock Status <span class="label label-primary">?</span></span></label>
                                    <div class="col-sm-10">
                                        <select name="stock_status_id" id="input-stock-status" class="form-control">
                                            <option value="6">2-3 Days</option>
                                            <option value="7">In Stock</option>
                                            <option value="5">Out Of Stock</option>
                                            <option value="8">Pre-Order</option>
                                        </select><br />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-2 control-label">Requires Shipping</label><br />
                                    <div class="col-sm-10 ">
                                        <div class="radio">
                                            <label class="radio-inline">
                                                <input type="radio" name="shipping" value="1" checked="checked" />
                                                Yes                                     
                                            </label>
                                            <label class="radio">
                                                <input type="radio" name="shipping" value="0" />
                                                No                                   
                                            </label>
                                        </div>
                                    </div>
                                </div>


                                <%-- SEO keyword--%>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-keyword"><span data-toggle="tooltip" title="" data-original-title="Do not use spaces, instead replace spaces with - and make sure the keyword is globally unique.">SEO Keyword <span class="label label-primary">?</span></span></label>
                                    <div class="col-sm-10">
                                        <input type="text" name="keyword" value="" placeholder="SEO Keyword" id="input-keyword" class="form-control" /><br />
                                    </div>
                                </div>

                                <%--date available--%>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-date-available">Date Available</label>
                                    <div class="col-sm-offset-2">
                                        <div class="input-group date">
                                            <input type="text" name="date_available" value="2015-08-10" placeholder="Date Available" data-format="YYYY-MM-DD" id="input-date-available" class="form-control" />
                                            <span class="input-group-btn">
                                                <button class="btn btn-default" type="button"><i class="glyphicon glyphicon-calendar"></i></button>
                                            </span>
                                        </div>
                                    </div>
                                </div>


                                <%--   dimension--%>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-length">Dimensions (L x W x H)</label>
                                    <div class="col-sm-10">
                                        <div class="row">
                                            <div class="col-sm-4">
                                                <input type="text" name="length" value="" placeholder="Length" id="input-length" class="form-control"/>
                                            </div>
                                            <div class="col-sm-4">
                                                <input type="text" name="width" value="" placeholder="Width" id="input-width" class="form-control"/>
                                            </div>
                                            <div class="col-sm-4">
                                                <input type="text" name="height" value="" placeholder="Height" id="input-height" class="form-control"/><br />
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-length-class">Length Class</label>
                                    <div class="col-sm-10">
                                        <select name="length_class_id" id="input-length-class" class="form-control">
                                            <option value="1" selected="selected">Centimeter</option>
                                            <option value="2">Millimeter</option>
                                            <option value="3">Inch</option>
                                        </select><br />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-weight">Weight</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="weight" value="" placeholder="Weight" id="input-weight" class="form-control"/><br />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-weight-class">Weight Class</label>
                                    <div class="col-sm-10">
                                        <select name="weight_class_id" id="input-weight-class" class="form-control">
                                            <option value="1" selected="selected">Kilogram</option>
                                            <option value="2">Gram</option>
                                            <option value="5">Pound </option>
                                            <option value="6">Ounce</option>
                                        </select><br />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-status">Status</label>
                                    <div class="col-sm-10">
                                        <select name="status" id="input-status" class="form-control">
                                            <option value="1" selected="selected">Enabled</option>
                                            <option value="0">Disabled</option>
                                        </select><br />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-sort-order">Sort Order</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="sort_order" value="1" placeholder="Sort Order" id="input-sort-order" class="form-control"/>
                                    </div>
                                </div>
                            </div>


                            <%--link tab--%>
                            <div class="tab-pane fade" id="tab-links">
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-manufacturer"><span data-toggle="tooltip" title="" data-original-title="(Autocomplete)">Manufacturer</span></label>
                                    <div class="col-sm-9">
                                        <input type="text" name="manufacturer" value="" placeholder="Manufacturer" id="input-manufacturer" class="form-control" autocomplete="off"/><ul class="dropdown-menu"/></ul>
                                        <input type="hidden" name="manufacturer_id" value="0"/><br />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-related"><span data-toggle="tooltip" title="" data-original-title="(Autocomplete)">Related Products (product categorization) </span></label>
                                    <div class="col-sm-8">
                                        <input type="text" name="related" value="" placeholder="Related Products" id="input-related" class="form-control" autocomplete="off"/><ul class="dropdown-menu"/></ul>
                                    </div>
                                </div>
                            </div>


                            <%--image tab--%>
                            <div class="tab-pane active" id="tab-image">
                                <br />
                                <div class="table-responsive">
                                    <table id="images" class="table table-striped table-bordered table-hover">
                                        <thead>
                                            <tr>
                                                <td class="text-left">Image</td>
                                                <td class="text-right">Sort Order</td>
                                                <td></td>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <td colspan="2"></td>
                                                <td class="text-left">
                                                    <button type="button" onclick="addImage();" data-toggle="tooltip" title="" class="btn btn-primary" data-original-title="Add Image"><i class="glyphicon glyphicon-plus"></i></button>
                                                </td>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>

                            <%--discount tab--%>
                            <div class="tab-pane fade" id="tab-discount">
                                <div class="table-responsive">
                                    <br />
                                    <table id="discount" class="table table-striped table-bordered table-hover">
                                        <thead>
                                            <tr>
                                                <td class="text-left">Customer Group (got java script)</td>
                                                <td class="text-right">Quantity</td>
                                                <td class="text-right">Priority</td>
                                                <td class="text-right">Price</td>
                                                <td class="text-left">Date Start</td>
                                                <td class="text-left">Date End</td>
                                                <td></td>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <td colspan="6"></td>
                                                <td class="text-left">
                                                    <button type="button" onclick="addDiscount();" data-toggle="tooltip" title="" class="btn btn-primary btn-xs" data-original-title="Add Discount"><i class="glyphicon glyphicon-plus-sign"></i></button>
                                                </td>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>


                            <%--special tab--%>
                            <div class="tab-pane fade" id="tab-special">
                                <div class="table-responsive">
                                    <br />
                                    <table id="special" class="table table-striped table-bordered table-hover">
                                        <thead>
                                            <tr>
                                                <td class="text-left">Customer Group (got java script)</td>
                                                <td class="text-right">Priority</td>
                                                <td class="text-right">Price</td>
                                                <td class="text-left">Date Start</td>
                                                <td class="text-left">Date End</td>
                                                <td></td>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <td colspan="5"></td>
                                                <td class="text-left">
                                                    <button type="button" onclick="addSpecial();" data-toggle="tooltip" title="" class="btn btn-primary btn-xs" data-original-title="Add Special"><i class="glyphicon glyphicon-plus-sign"></i></button>
                                                </td>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>


                            <%--reward tab--%>
                            <div class="tab-pane fade" id="tab-reward">
                                <div class="form-group">
                                    <br />
                                    <label class="col-lg-2 control-label" for="input-points">
                                        <span data-toggle="tooltip" title="" data-original-title="Number of points needed to buy this item. If you don't want this product to be purchased with points leave as 0.">Points <span class="label label-primary">?</span></span><br />
                                    </label>
                                    <div class="col-sm-offset-0">
                                        <input type="text" name="points" value="" placeholder="Points" id="input-points" class="form-control" /><br />
                                    </div>
                                </div>
                                <div class="table-responsive">
                                    <table class="table table-bordered table-hover">
                                        <thead>
                                            <tr>
                                                <td class="text-left">Customer Group</td>
                                                <td class="text-centre">Reward Points</td>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td class="text-left">Default</td>
                                                <td class="text-right">
                                                    <input type="text" name="product_reward[1][points]" value="" class="form-control" /></td>
                                            </tr>
                                        </tbody>
                                    </table>
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
