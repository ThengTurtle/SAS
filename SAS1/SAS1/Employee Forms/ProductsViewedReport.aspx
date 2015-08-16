<%@ Page Title="Products Viewed Report" Language="vb" AutoEventWireup="false" MasterPageFile="~/Employee.Master" CodeBehind="ProductsViewedReport.aspx.vb" Inherits="SAS1.ProductsViewedReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <%--Content Header--%>
    <div class="col-sm-9 col-sm-offset-4 col-md-10 col-md-offset-2 main">
        <div class="container-fluid">
            <br />
            <div class="nav navbar-nav navbar-right">
                <a onclick="confirm('Delete/Uninstall cannot be undone! Are you sure you want to do this?') ? location.href='#' : false;" data-toggle="tooltip" title="" class="btn btn-danger btn-xs" data-original-title="Reset"><i class="glyphicon glyphicon-refresh"></i></a>
            </div>
            <h1>Products Viewed Report</h1>
            <br />
        </div>


        <%--Content Body--%>
        <div class="container-fluid">
            <div class="panel panel-default">

                <%--panel heading--%>
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="glyphicon glyphicon-stats"></i> Products Viewed List</h3>
                </div>

                <%--panel body--%>
                <div class="panel-body">
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <td class="text-left">Product Name</td>
                                    <td class="text-left">Model</td>
                                    <td class="text-right">Viewed</td>
                                    <td class="text-right">Percent</td>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="text-left">Apple Cinema 30"</td>
                                    <td class="text-left">Product 15</td>
                                    <td class="text-right">124533</td>
                                    <td class="text-right">655436.84%</td>
                                </tr>
                                <tr>
                                    <td class="text-left">iPhone</td>
                                    <td class="text-left">product 11</td>
                                    <td class="text-right">91997</td>
                                    <td class="text-right">484194.74%</td>
                                </tr>
                                <tr>
                                    <td class="text-left">MacBook</td>
                                    <td class="text-left">Product 16</td>
                                    <td class="text-right">69315</td>
                                    <td class="text-right">364815.79%</td>
                                </tr>
                                <tr>
                                    <td class="text-left">Canon EOS 5D</td>
                                    <td class="text-left">Product 3</td>
                                    <td class="text-right">56562</td>
                                    <td class="text-right">297694.74%</td>
                                </tr>
                                <tr>
                                    <td class="text-left">Samsung Galaxy Tab 10.1</td>
                                    <td class="text-left">SAM1</td>
                                    <td class="text-right">49197</td>
                                    <td class="text-right">258931.58%</td>
                                </tr>
                                <tr>
                                    <td class="text-left">iMac</td>
                                    <td class="text-left">Product 14</td>
                                    <td class="text-right">30689</td>
                                    <td class="text-right">161521.05%</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 text-left"></div>
                        <div class="col-sm-6 text-right">Showing 1 to 19 of 19 (1 Pages)</div>
                    </div>
                </div>
            </div>


            <%--footer--%>
            <footer>
                <p>&copy; <%: DateTime.Now.Year %> - Shopping Advisor System</p>
            </footer>
        </div>
    </div>
</asp:Content>
