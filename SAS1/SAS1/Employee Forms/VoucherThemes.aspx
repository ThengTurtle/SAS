<%@ Page Title="Voucher Themes" Language="vb" AutoEventWireup="false" MasterPageFile="~/Employee.Master" CodeBehind="VoucherThemes.aspx.vb" Inherits="SAS1.VoucherThemes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <%--Content Header--%>
    <div class="col-sm-9 col-sm-offset-4 col-md-10 col-md-offset-2 main">
        <div class="container-fluid">
            <br />
            <div class="nav navbar-nav navbar-right">
                <a href="AddVoucherThemes.aspx" data-toggle="tooltip" title="" class="btn btn-primary btn-sm" data-original-title="Add New"><i class="glyphicon glyphicon-plus"></i></a>
                <button type="button" data-toggle="tooltip" title="" class="btn btn-danger btn-sm" onclick="confirm('Delete/Uninstall cannot be undone! Are you sure you want to do this?') ? $('#form-voucher-theme').submit() : false;" data-original-title="Delete"><i class="glyphicon glyphicon-trash"></i></button>

            </div>
            <h1>Voucher Themes</h1>
        </div>
        <br />

        <%--Content Body--%>
        <div class="container-fluid">
            <div class="panel panel-default">

                <%--panel heading--%>
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="glyphicon glyphicon-th-list"></i> Voucher Theme List</h3>
                </div>

                <%--panel body--%>
                <div class="panel-body">
                    <form action="#" method="post" enctype="multipart/form-data" id="form-voucher-theme">
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <td style="width: 1px;" class="text-center">
                                            <input type="checkbox" onclick="$('input[name*=\'selected\']').prop('checked', this.checked);"></td>
                                        <td class="text-left"><a href="#">Voucher Theme Name</a>
                                        </td>
                                        <td class="text-right">Action</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="text-center">
                                            <input type="checkbox" name="selected[]" value="7">
                                        </td>
                                        <td class="text-left">Birthday</td>
                                        <td class="text-right"><a href="EditVoucherThemes.aspx" data-toggle="tooltip" title="" class="btn btn-primary btn-xs" data-original-title="Edit"><i class="glyphicon glyphicon-pencil"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td class="text-center">
                                            <input type="checkbox" name="selected[]" value="6">
                                        </td>
                                        <td class="text-left">Christmas</td>
                                        <td class="text-right"><a href="EditVoucherThemes.aspx" data-toggle="tooltip" title="" class="btn btn-primary btn-xs" data-original-title="Edit"><i class="glyphicon glyphicon-pencil"></i></a></td>
                                    </tr>
                                    <tr>
                                        <td class="text-center">
                                            <input type="checkbox" name="selected[]" value="8">
                                        </td>
                                        <td class="text-left">General</td>
                                        <td class="text-right"><a href="EditVoucherThemes.aspx" data-toggle="tooltip" title="" class="btn btn-primary btn-xs" data-original-title="Edit"><i class="glyphicon glyphicon-pencil"></i></a></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </form>
                    <div class="row">
                        <div class="col-sm-6 text-left"></div>
                        <div class="col-sm-6 text-right">Showing 1 to 3 of 3 (1 Pages)</div>
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
