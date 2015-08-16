<%@ Page Title="Gift Vouchers" Language="vb" AutoEventWireup="false" MasterPageFile="~/Employee.Master" CodeBehind="GiftVouchers.aspx.vb" Inherits="SAS1.GiftVouchers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <%--Content Header--%>
    <div class="col-sm-6 col-sm-offset-2 col-md-12 col-md-offset-1 main">
        <div class="container-fluid">
            <br />
            <div class="nav navbar-nav navbar-right">
                <a href="AddGiftVouchers.aspx" data-toggle="tooltip" title="" class="btn btn-primary btn-sm" data-original-title="Add New"><i class="glyphicon glyphicon-plus"></i></a>
                <button type="button" data-toggle="tooltip" title="" class="btn btn-danger btn-sm" onclick="confirm('Delete/Uninstall cannot be undone! Are you sure you want to do this?') ? $('#form-voucher').submit() : false;" data-original-title="Delete"><i class="glyphicon glyphicon-trash"></i></button>
            </div>
            <h1>Gift Vouchers</h1>
            <br />
        </div>

        <%--Content Body--%>
        <div class="container-fluid">
            <div class="panel panel-default">

                <%--panel heading--%>
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="glyphicon glyphicon-th-list"></i> Gift Voucher List</h3>
                </div>

                <%--panel body--%>
                <div class="panel-body">
                    <form action="#" method="post" enctype="multipart/form-data" id="form-voucher">
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <td style="width: 1px;" class="text-center">
                                            <input type="checkbox" onclick="$('input[name*=\'selected\']').prop('checked', this.checked);"></td>
                                        <td class="text-left"><a href="#">Code</a>
                                        </td>
                                        <td class="text-left"><a href="#">From</a>
                                        </td>
                                        <td class="text-left"><a href="#">To</a>
                                        </td>
                                        <td class="text-right"><a href="#">Amount</a>
                                        </td>
                                        <td class="text-left"><a href="#">Theme</a>
                                        </td>
                                        <td class="text-left"><a href="#">Status</a>
                                        </td>
                                        <td class="text-left"><a href="#" class="desc">Date Added</a>
                                        </td>
                                        <td class="text-right">Action</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="text-center">
                                            <input type="checkbox" name="selected[]" value="85">
                                        </td>
                                        <td class="text-left">88e7bf5801</td>
                                        <td class="text-left">porky</td>
                                        <td class="text-left">porky</td>
                                        <td class="text-right">$1.00</td>
                                        <td class="text-left">Birthday</td>
                                        <td class="text-left">Enabled</td>
                                        <td class="text-left">01/08/2015</td>
                                        <td class="text-right"><a href="EditGiftVouchers.aspx" data-toggle="tooltip" title="" class="btn btn-primary btn-xs" data-original-title="Edit"><i class="glyphicon glyphicon-pencil"></i></a></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </form>
                    <div class="row">
                        <div class="col-sm-6 text-left">
                            <ul class="pagination">
                                <li class="active"><span>1</span></li>
                                <li><a href="#">&gt;</a></li>
                                <li><a href="#">&gt;|</a></li>
                            </ul>
                        </div>
                        <div class="col-sm-6 text-right">Showing 1 to 20</div>
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
