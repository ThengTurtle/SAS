<%@ Page Title="Coupons" Language="vb" AutoEventWireup="false" MasterPageFile="~/Employee.Master" CodeBehind="Coupon.aspx.vb" Inherits="SAS1.Coupon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <%--Content Header--%>
    <div class="col-sm-9 col-sm-offset-4 col-md-10 col-md-offset-2 main">
        <div class="container-fluid">
            <br />
            <div class="nav navbar-nav navbar-right">
                <a href="AddCoupon.aspx" data-toggle="tooltip" title="" class="btn btn-primary" data-original-title="Add New"><i class="glyphicon glyphicon-plus"></i></a>
                <button type="button" data-toggle="tooltip" title="" class="btn btn-danger" onclick="confirm('Delete/Uninstall cannot be undone! Are you sure you want to do this?') ? $('#form-coupon').submit() : false;" data-original-title="Delete"><i class="glyphicon glyphicon-trash"></i></button>
            </div>
            <h1>Coupons</h1>
            <br />
        </div>


        <%--Content Body--%>
        <div class="container-fluid">
            <div class="panel panel-default">

                <%--panel heading--%>
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="glyphicon glyphicon-th-list"></i> Coupon List</h3>
                </div>

                <%--panel body--%>
                <div class="panel-body">
                    <form action="#" method="post" enctype="multipart/form-data" id="form-coupon">
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <td style="width: 1px;" class="text-center">
                                            <input type="checkbox" onclick="$('input[name*=\'selected\']').prop('checked', this.checked);"></td>
                                        <td class="text-left"><a href="#">Coupon Name</a>
                                        </td>
                                        <td class="text-left"><a href="#">Code</a>
                                        </td>
                                        <td class="text-right"><a href="#">Discount</a>
                                        </td>
                                        <td class="text-left"><a href="#">Date Start</a>
                                        </td>
                                        <td class="text-left"><a href="#">Date End</a>
                                        </td>
                                        <td class="text-left"><a href="#">Status</a>
                                        </td>
                                        <td class="text-right">Action</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="text-center">
                                            <input type="checkbox" name="selected[]" value="4">
                                        </td>
                                        <td class="text-left">-10% Discount</td>
                                        <td class="text-left">2222</td>
                                        <td class="text-right">10.0000</td>
                                        <td class="text-left">01/01/2014</td>
                                        <td class="text-left">01/01/2020</td>
                                        <td class="text-left">Disabled</td>
                                        <td class="text-right"><a href="EditCoupon.aspx" data-toggle="tooltip" title="" class="btn btn-primary btn-xs" data-original-title="Edit"><i class="glyphicon glyphicon-pencil"></i></a></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </form>
                    <div class="row">
                        <div class="col-sm-6 text-left"></div>
                        <div class="col-sm-6 text-right">Showing 1  (1 Pages)</div>
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
