<%@ Page Title="Product Returns" Language="vb" AutoEventWireup="false" MasterPageFile="~/Employee.Master" CodeBehind="Product Returns.aspx.vb" Inherits="SAS1.Product_Returns" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <%--Content Header--%>
    <div class="col-sm-4 col-sm-offset-2 col-md-11 col-md-offset-2 main">
        <div class="container-fluid">
            <br />
            <div class="nav navbar-nav navbar-right">
                <a href="AddProductReturn.aspx" data-toggle="tooltip" title="" class="btn btn-primary btn-sm" data-original-title="Add New"><i class="glyphicon glyphicon-plus"></i></a>
                <button type="button" data-toggle="tooltip" title="" class="btn btn-danger btn-sm" onclick="confirm('Delete/Uninstall cannot be undone! Are you sure you want to do this?') ? $('#form-return').submit() : false;" data-original-title="Delete"><i class="glyphicon glyphicon-trash"></i></button>
            </div>
            <h1>Product Returns</h1>
            <br />
        </div>

        <%--Content Body--%>
        <div class="container-fluid">
            <div class="panel panel-default">
                
                <%--panel heading--%>
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="glyphicon glyphicon-th-list"></i> Product Return List</h3>
                </div>

                 <%--panel body--%>
                <div class="panel-body">
                    <div class="well">
                        <div class="row">
                            <div class="col-sm-3">
                                <div class="form-group">
                                    <label class="control-label" for="input-return-id">Return ID</label>
                                    <input type="text" name="filter_return_id" value="" placeholder="Return ID" id="input-return-id" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label class="control-label" for="input-order-id">Order ID</label>
                                    <input type="text" name="filter_order_id" value="" placeholder="Order ID" id="input-order-id" class="form-control">
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="form-group">
                                    <label class="control-label" for="input-customer">Customer</label>
                                    <input type="text" name="filter_customer" value="" placeholder="Customer" id="input-customer" class="form-control" autocomplete="off"><ul class="dropdown-menu"></ul>
                                </div>
                                <div class="form-group">
                                    <label class="control-label" for="input-product">Product</label>
                                    <input type="text" name="filter_product" value="" placeholder="Product" id="input-product" class="form-control" autocomplete="off"><ul class="dropdown-menu"></ul>
                                </div>
                            </div>
                            <div class="col-sm-3">
                                <div class="form-group">
                                    <label class="control-label" for="input-model">Model</label>
                                    <input type="text" name="filter_model" value="" placeholder="Model" id="input-model" class="form-control" autocomplete="off"><ul class="dropdown-menu"></ul>
                                </div>
                                <div class="form-group">
                                    <label class="control-label" for="input-return-status">Return Status</label>
                                    <select name="filter_return_status_id" id="input-return-status" class="form-control">
                                        <option value="*"></option>
                                        <option value="2" selected="selected">Awaiting Products</option>
                                        <option value="3">Complete</option>
                                        <option value="1">Pending</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-sm-3">
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
                    <form action="#" method="post" enctype="multipart/form-data" id="form-return">
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <td style="width: 1px;" class="text-center">
                                            <input type="checkbox" onclick="$('input[name*=\'selected\']').prop('checked', this.checked);"></td>
                                        <td class="text-right"><a href="#C" class="desc">Return ID</a>
                                        </td>
                                        <td class="text-right"><a href="#">Order ID</a>
                                        </td>
                                        <td class="text-left"><a href="#">Customer</a>
                                        </td>
                                        <td class="text-left"><a href="#">Product</a>
                                        </td>
                                        <td class="text-left"><a href="#">Model</a>
                                        </td>
                                        <td class="text-left"><a href="#">Status</a>
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
                                            <input type="checkbox" name="selected[]" value="58">
                                        </td>
                                        <td class="text-right">58</td>
                                        <td class="text-right">3123213</td>
                                        <td class="text-left">Sara Baghbanzadeh</td>
                                        <td class="text-left">sadasds</td>
                                        <td class="text-left">asdsadsa</td>
                                        <td class="text-left">Awaiting Products</td>
                                        <td class="text-left">01/08/2015</td>
                                        <td class="text-left">01/08/2015</td>
                                        <td class="text-right"><a href="EditProductReturn.aspx" data-toggle="tooltip" title="" class="btn btn-primary btn-xs" data-original-title="Edit"><i class="glyphicon glyphicon-pencil"></i></a></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </form>
                    <div class="row">
                        <div class="col-sm-6 text-left">
                            <ul class="pagination">
                                <li class="active"><span>1</span></li>
                            </ul>
                        </div>
                        <div class="col-sm-6 text-right">Showing 1 to 20 of 20 </div>
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
