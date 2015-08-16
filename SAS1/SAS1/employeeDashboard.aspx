<%@ Page Title="Employee Dashboard" Language="vb" AutoEventWireup="false" MasterPageFile="~/Employee.Master" CodeBehind="EmployeeDashboard.aspx.vb" Inherits="SAS1.EmployeeDashboard1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <%--THIS IS for ORIGINAL FILE Header--%>
    <%--<div class="navbar-collapse collapse in" id="bs-example-navbar-collapse-1" aria-expanded="false">
                    <ul class="nav navbar-nav  navbar-right">
                        <li class="dropdown" style="width: auto;"><a class="dropdown-toggle" data-toggle="dropdown" role="button">Alarm<span class="label label-danger pull-left">20</span></a>
                            <ul class="dropdown-menu dropdown-menu-right alerts-dropdown">
                                <li class="dropdown-header">Orders</li>
                                <li><a href="#" style="display: block; overflow: auto;">Pending <span class="label label-warning pull-right">0</span></a></li>
                                <li><a href="#">Completed <span class="label label-success pull-right">0</span></a></li>
                                <li><a href="$">Returns <span class="label label-danger pull-right">58</span></a></li>
                                <li class="divider"></li>
                                <li class="dropdown-header">Products</li>
                                <li><a href="#">Out of stock <span class="label label-danger pull-right">16</span></a></li>
                            </ul>
                        </li>
                        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" role="button">Store</a>
                            <ul class="dropdown-menu dropdown-menu-right">
                                <li class="dropdown-header">Stores</li>
                                <li><a href="#" target="_blank">Your Store</a></li>
                            </ul>
                        </li>
                        <li><a href="#">Logout<span class="hidden-xs hidden-sm hidden-md">Logout</span></a></li>
                    </ul>
                </div>--%>

    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-3 col-md-2 sidebar">
                <ul class="nav nav-sidebar">
                    <li class="active"><a href="EmployeeDashboard.aspx">Dashboard<span class="sr-only">(current)</span></a></li>
                    <li class="dropdown" style="width: auto">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false" aria-haspopup="true" style="height: auto;">Catalog<span class="caret"></span></a>
                        <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                            <li><a href="Product.aspx">Products</a></li>
                            <li><a href="Manufacturers.aspx">Manufacturers</a></li>
                        </ul>
                    </li>
                    <li class="dropdown" style="width: auto">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false" aria-haspopup="true" style="height: auto;">Sales<span class="caret"></span></a>
                        <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                            <li><a href="#">Orders</a></li>
                            <li><a href="#">Returns</a></li>
                            <li><a href="#">Gift Vouchers</a></li>
                        </ul>
                    </li>
                    <li class="dropdown" style="width: auto">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false" aria-haspopup="true" style="height: auto;">Marketing<span class="caret"></span></a>
                        <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                            <li><a href="#">Marketing</a></li>
                            <li><a href="#">Coupons</a></li>
                            <li><a href="#">Mails</a></li>
                        </ul>
                    </li>
                    <li class="dropdown" style="width: auto">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false" aria-haspopup="true" style="height: auto;">Report<span class="caret"></span></a>
                        <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                            <li><a href="#">Sales</a></li>
                            <li><a href="ProductList.aspx">Products</a></li>
                            <li><a href="#">Marketing</a></li>
                        </ul>
                    </li>
                </ul>
            </div>

            <div class="col-sm-9 col-sm-offset-4 col-md-10 col-md-offset-2 main">
                <div class="container-fluid">
                    <h1>Dashboard No logout button please refer ORI</h1>
                    <br />
                </div>
                <div class="row placeholders">
                    <div class="col-xs-6 col-sm-4 placeholder">
                        <div class="panel panel-primary">
                            <div class="panel-heading">TOTAL ORDERS</div>
                            <div class="panel-body">from a-z orders (counting every orders)</div>
                            <div class="panel-body">
                                <p><a href="#">View More...</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-4 placeholder">
                        <div class="panel panel-primary">
                            <div class="panel-heading">TOTAL SALES</div>
                            <div class="panel-body">from a-z orders (counting every sales)</div>
                            <div class="panel-body">
                                <p><a href="#">View More...</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-6 col-sm-4 placeholder">
                        <div class="panel panel-primary">
                            <div class="panel-heading">TOTAL CUSTOMERS</div>
                            <div class="panel-body">from a-z orders (counting every customers)</div>
                            <div class="panel-body">
                                <p><a href="#">View More...</a></p>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-lg-4 col-md-12 col-sm-12 col-sx-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title"><i class="glyphicon glyphicon-calendar"></i> Recent Activity (NO CALENDAR)</h3>
                            </div>
                            <ul class="list-group">
                                <li class="list-group-item"><a href="#">Devesh Samaiya</a> registered a new account.<br>
                                    <small class="text-muted"><i class="fa fa-clock-o"></i>09/08/2015 01:15:09</small></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-8 col-md-12 col-sm-12 col-sx-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h3 class="panel-title"><i class="glyphicon glyphicon-shopping-cart"></i> Latest Orders</h3>
                            </div>
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <td class="text-right">Order ID</td>
                                            <td>Customer</td>
                                            <td>Status</td>
                                            <td>Date Added</td>
                                            <td class="text-right">Total</td>
                                            <td class="text-right">Action</td>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="text-right">1869</td>
                                            <td>qwe qwe</td>
                                            <td>Pending</td>
                                            <td>07/08/2015</td>
                                            <td class="text-right">$130.00</td>
                                            <td class="text-right"><a href="#" data-toggle="tooltip" title="" class="btn btn-primary btn-xs" data-original-title="View"><i class="glyphicon glyphicon-eye-open"></i></a></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>


                <footer>
                    <p>&copy; <%: DateTime.Now.Year %> - Shopping Advisor System</p>
                    <p>
                        <a runat="server" href="~/About">About</a>
                        <a runat="server" href="~/Contact">Contact Us</a>
                    </p>
                </footer>

            </div>
        </div>
    </div>
</asp:Content>
