<%@ Page Title="Products" Language="vb" AutoEventWireup="false" MasterPageFile="~/Employee.Master" CodeBehind="Product.aspx.vb" Inherits="SAS1.ProductList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <%--Content Header--%>
    <div class="col-sm-9 col-sm-offset-4 col-md-10 col-md-offset-2 main">
        <div class="container-fluid">
            <br />
            <div class="nav navbar-nav navbar-right">
                <a href="AddProduct.aspx" data-toggle="tooltip" title="" class="btn btn-primary btn-sm" data-original-title="Add New"><i class="glyphicon glyphicon-plus"></i></a>
                <button type="submit" form="form-product" formaction="#" data-toggle="tooltip" title="" class="btn btn-default btn-sm" data-original-title="Copy"><i class="glyphicon glyphicon-duplicate"></i></button>
                <button type="submit" data-toggle="tooltip" title="" class="btn btn-danger btn-sm" onclick="confirm('Delete/Uninstall cannot be undone! Are you sure you want to do this?') ? $('#form-product').submit() : false;" data-original-title="Delete"><i class="glyphicon glyphicon-trash"></i></button>
            </div>
            <h1>Products</h1>
            <br />
        </div>

        <%--Content Body--%>
        <div class="container-fluid">
            <div class="panel panel-default">

                <%--panel heading--%>
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="glyphicon glyphicon-th-list"></i> Product List</h3>
                </div>

                <%--panel body--%>
                <div class="panel-body">
                    <%--filter--%>
                    <div class="well">
                        <div class="row">
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label class="control-label" for="input-name">Product Name</label>
                                    <input type="text" name="filter_name" value="" placeholder="Product Name" id="input-name" class="form-control" autocomplete="off"><ul class="dropdown-menu"></ul>
                                </div>
                                <div class="form-group">
                                    <label class="control-label" for="input-model">Model</label>
                                    <input type="text" name="filter_model" value="" placeholder="Model" id="input-model" class="form-control" autocomplete="off"><ul class="dropdown-menu"></ul>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label class="control-label" for="input-price">Price</label>
                                    <input type="text" name="filter_price" value="" placeholder="Price" id="input-price" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label class="control-label" for="input-quantity">Quantity</label>
                                    <input type="text" name="filter_quantity" value="" placeholder="Quantity" id="input-quantity" class="form-control">
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label class="control-label" for="input-status">Status</label>
                                    <select name="filter_status" id="input-status" class="form-control">
                                        <option value="*"></option>
                                        <option value="1">Enabled</option>
                                        <option value="0">Disabled</option>
                                    </select>
                                </div>
                                <button type="button" id="button-filter" class="btn btn-primary pull-right"><i class="glyphicon glyphicon-search"></i> Filter</button>
                            </div>
                        </div>
                    </div>

                    <%-- table--%>
                    <form action="#" method="post" enctype="multipart/form-data" id="form-product">
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <td style="width: 1px;" class="text-center">
                                            <input type="checkbox" onclick="$('input[name*=\'selected\']').prop('checked', this.checked);"></td>
                                        <td class="text-center">Image</td>
                                        <td class="text-left"><a href="#" class="asc">Product Name</a>
                                        </td>
                                        <td class="text-left"><a href="#">Model</a>
                                        </td>
                                        <td class="text-left"><a href="#">Price</a>
                                        </td>
                                        <td class="text-right"><a href="#">Quantity</a>
                                        </td>
                                        <td class="text-left"><a href="#">Status</a>
                                        </td>
                                        <td class="text-right">Action</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="text-center">
                                            <input type="checkbox" name="selected[]" value="42">
                                        </td>
                                        <td class="text-center">
                                            <img src="#" alt="test;" class="img-thumbnail">
                                        </td>
                                        <td class="text-left">test"</td>
                                        <td class="text-left">Product 15</td>
                                        <td class="text-left"><span style="text-decoration: line-through;">100.0000</span><br>
                                            <div class="text-danger">90.0000</div>
                                        </td>
                                        <td class="text-right"><span class="label label-success">990</span>
                                        </td>
                                        <td class="text-left">Enabled</td>
                                        <td class="text-right"><a href="EditProduct.aspx" data-toggle="tooltip" title="" class="btn btn-primary btn-xs" data-original-title="Edit"><i class="glyphicon glyphicon-pencil"></i></a></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </form>
                    <div class="row">
                        <div class="col-sm-6 text-left"></div>
                        <div class="col-sm-6 text-right">Showing 1 to 20 </div>
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
