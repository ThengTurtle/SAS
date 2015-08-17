<%@ Page Title="Dashboard" Language="vb" AutoEventWireup="false" MasterPageFile="~/Employee.Master" CodeBehind="Dashboard.aspx.vb" Inherits="SAS1.Dashboard" %>
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
                    <div class="panel-body">
                        <asp:Label ID="lblTotalSales" runat="server" Text=""></asp:Label></div>
                    <div class="panel-body">
                        <p><a href="Orders.aspx">View More...</a></p>
                    </div>
                </div>
            </div>
            <div class="col-xs-6 col-sm-4 placeholder">
                <div class="panel panel-primary">
                    <div class="panel-heading">TOTAL CUSTOMERS</div>
                    <div class="panel-body">
                        <asp:Label ID="lbltotalcustomers" runat="server" Text=""></asp:Label></div>
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
                    <asp:DataList ID ="dlRecentActivity" runat="server" class="list-group">
                        <ItemTemplate>
                            <li class="list-group-item"><%# Eval("Description")%><br /><small class="text-muted"><i class="fa fa-clock-o"></i> <%# Eval("DateTime")%></small></li>
                        </ItemTemplate>
                    </asp:DataList>
                </div>
            </div>

          <%--latest order--%>
            <div class="col-lg-8 col-md-12 col-sm-12 col-sx-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title"><i class="glyphicon glyphicon-shopping-cart"></i> Latest Orders</h3>
                    </div>
                    <div class="table-responsive">
                        <asp:ListView ID ="lvTotalOrders" runat ="server" GroupPlaceholderID ="groupPlaceHolder1" ItemPlaceholderID ="itemPlaceHolder1" >
                            <LayoutTemplate>
                                <table class="table">
                                    <tr>
                                        <th>OrderID</th>
                                        <th>Customer</th>
                                        <th>Date Added</th>
                                        <th>Total</th>
                                        <th>Action</th>
                                    </tr>
                                    <asp:PlaceHolder runat ="server" ID ="groupPlaceHolder1"></asp:PlaceHolder>
                                </table>
                            </LayoutTemplate>
                            <GroupTemplate>
                                <tr>
                                    <asp:PlaceHolder runat ="server" ID ="itemPlaceHolder1"></asp:PlaceHolder>
                                </tr>
                            </GroupTemplate>
                            <ItemTemplate >
                                <td><%# Eval("orderID")%></td>
                                <td><%# Eval("CustomerName")%></td>
                                <td><%# Eval("orderDate")%></td>
                                <td><%# Eval("UnitPrice")%></td>
                                <td class="text-right"><a href="Orders.aspx" data-toggle="tooltip" title="" class="btn btn-primary btn-xs" data-original-title="View"><i class="glyphicon glyphicon-eye-open"></i></a></td>
                            </ItemTemplate>
                        </asp:ListView>
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
