<%@ Page Title="Manufacturers" Language="vb" AutoEventWireup="false" MasterPageFile="~/Employee.Master" CodeBehind="Manufacturers.aspx.vb" Inherits="SAS1.Manufacturers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <%--Content Header--%>
    <div class="col-sm-9 col-sm-offset-4 col-md-10 col-md-offset-2 main">
        <div class="container-fluid">
            <br />
            <div class="nav navbar-nav navbar-right">
                <a href="AddManufacturers.aspx" data-toggle="tooltip" title="" class="btn btn-primary btn-sm" data-original-title="Add New"><i class="glyphicon glyphicon-plus"></i></a>
                <button type="button" data-toggle="tooltip" title="" class="btn btn-danger btn-sm" onclick="confirm('Delete/Uninstall cannot be undone! Are you sure you want to do this?') ? $('#form-product').submit() : false;" data-original-title="Delete"><i class="glyphicon glyphicon-trash"></i></button>
            </div>
            <h1>Manufacturers</h1>
            <br />
        </div>

        <%--Content Body--%>
        <div class="container-fluid">
            <div class="panel panel-default">

                <%--panel heading--%>
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="glyphicon glyphicon-th-list"></i> Manufacturer List</h3>
                </div>

                <%--panel body--%>
                <div class="panel-body">
                    <form action="#" method="post" enctype="multipart/form-data" id="form-manufacturer">
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <td style="width: 1px;" class="text-center">
                                            <input type="checkbox" onclick="$('input[name*=\'selected\']').prop('checked', this.checked);"></td>
                                        <td class="text-left"><a href="#" class="asc">Manufacturer Name</a>
                                        </td>
                                        <td class="text-right"><a href="#">Quantity of Products</a>
                                        </td>
                                        <td class="text-right">Action</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="text-center">
                                            <input type="checkbox" name="selected[]" value="8">
                                        </td>
                                        <td class="text-left">Apple</td>
                                        <td class="text-right">0</td>
                                        <td class="text-right"><a href="EditManufacturers.aspx" data-toggle="tooltip" title="" class="btn btn-primary btn-xs" data-original-title="Edit"><i class="glyphicon glyphicon-pencil"></a></td>
                                    </tr>

                                </tbody>
                            </table>
                        </div>
                    </form>
                    <div class="row">
                        <div class="col-sm-6 text-left"></div>
                        <div class="col-sm-6 text-right">Showing 1 to 6 of 6 (1 Pages)</div>
                    </div>
                </div>
            </div>
        </div>


        <%--footer--%>
        <hr />
        <footer>
            <p>&copy; <%: DateTime.Now.Year %> - Shopping Advisor System</p>
        </footer>

    </div>

</asp:Content>
