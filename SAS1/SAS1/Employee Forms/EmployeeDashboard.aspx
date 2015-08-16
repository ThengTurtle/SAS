<%@ Page Title="Dashboard" Language="vb" AutoEventWireup="false" MasterPageFile="~/Employee.Master" CodeBehind="EmployeeDashboard.aspx.vb" Inherits="SAS1.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <%--Content Header--%>
    <div class="col-sm-9 col-sm-offset-4 col-md-10 col-md-offset-2 main">
        <div class="container-fluid">
            <h1>Dashboard</h1>
            <br />
        </div>



        <%--Content Body1--%>
        <div class="row placeholders">
            <div class="col-xs-6 col-sm-4 placeholder">
                <div class="panel panel-primary">
                    <div class="panel-heading">TOTAL ORDERS</div>
                    <div class="panel-body">
                        <asp:Label ID="lblTotalOrders" runat="server" Text=""></asp:Label></div>
                    <div class="panel-body">
                        <p><a href="Orders.aspx" runat="server" >View More...</a></p>
                    </div>
                </div>
            </div>
            <div class="col-xs-6 col-sm-4 placeholder">
                <div class="panel panel-primary">
                    <div class="panel-heading">TOTAL SALES</div>
                    <div class="panel-body">from a-z orders (counting every sales)</div>
                    <div class="panel-body">
                        <p><a href="Orders.aspx">View More...</a></p>
                    </div>
                </div>
            </div>
            <div class="col-xs-6 col-sm-4 placeholder">
                <div class="panel panel-primary">
                    <div class="panel-heading">TOTAL CUSTOMERS</div>
                    <div class="panel-body">from a-z orders (counting every customers)</div>
                    <div class="panel-body">
                        <p><a href="Customers.aspx">View More...</a></p>
                    </div>
                </div>
            </div>
        </div>

        <%--Content Body2--%>
        <div class="row">
            <%--recent activity--%>
            <div class="col-lg-4 col-md-12 col-sm-12 col-sx-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title"><i class="glyphicon glyphicon-calendar"></i> Recent Activity</h3>
                    </div>
                    <ul class="list-group">
                        <li class="list-group-item"><a href="#">Devesh Samaiya</a> registered a new account.<br/>
                            <small class="text-muted"><i class="fa fa-clock-o"></i>09/08/2015 01:15:09</small></li>
                    </ul>
                </div>
            </div>


          <%--latest order--%>
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
                                    <td class="text-right"><a href="Orders.aspx" data-toggle="tooltip" title="" class="btn btn-primary btn-xs" data-original-title="View"><i class="glyphicon glyphicon-eye-open"></i></a></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

       <%-- Footer--%>
        <hr />
        <footer>
            <p>&copy; <%: DateTime.Now.Year %> - Shopping Advisor System</p>
        </footer>

    </div>
</asp:Content>
