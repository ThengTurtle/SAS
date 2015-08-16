<%@ Page Title="Wish List" Language="vb" AutoEventWireup="false" MasterPageFile="~/Customer.Master" CodeBehind="Wishlist.aspx.vb" Inherits="SAS1.Wishlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CustContent" runat="server">
    <div class="container-fluid">
        <div class="row">
            <div id="content" class="col-sm-12">
                <br />
                <h2>Wish List</h2>
                <table class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <td class="text-center">Image</td>
                            <td class="text-left">Product Name</td>
                            <td class="text-left">Model</td>
                            <td class="text-right">Stock</td>
                            <td class="text-right">Unit Price</td>
                            <td class="text-right">Action</td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="text-center"><a href="#" alt="test" title="test"></a></td>
                            <td class="text-left"><a href="#">test</a></td>
                            <td class="text-left">product 11</td>
                            <td class="text-right">Out Of Stock</td>
                            <td class="text-right">
                                <div class="price">
                                    $123.20                             
                                </div>
                            </td>
                            <td class="text-right">
                                <button type="button" onclick="cart.add('40');" data-toggle="tooltip" title="" class="btn btn-primary btn-xs" data-original-title="Add to Cart"><i class="glyphicon glyphicon-shopping-cart"></i></button>
                                <a href="#" data-toggle="tooltip" title="" class="btn btn-danger btn-xs" data-original-title="Remove"><i class="glyphicon glyphicon-remove"></i></a></td>
                        </tr>
                    </tbody>
                </table>
                <div class="buttons clearfix">
                    <div class="pull-right"><a href="#" class="btn btn-primary">Continue</a></div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
