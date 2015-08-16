<%@ Page Title="Voucher Themes" Language="vb" AutoEventWireup="false" MasterPageFile="~/Employee.Master" CodeBehind="EditVoucherThemes.aspx.vb" Inherits="SAS1.EditVoucherThemes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <%--Content Header--%>
    <div class="col-sm-9 col-sm-offset-4 col-md-10 col-md-offset-2 main">
        <div class="container-fluid">
            <br />
            <div class="nav navbar-nav navbar-right">
                <button type="submit" form="form-theme-voucher" data-toggle="tooltip" title="" class="btn btn-primary" data-original-title="Save"><i class="glyphicon glyphicon-floppy-disk"></i></button>
                <a href="VoucherThemes.aspx" data-toggle="tooltip" title="" class="btn btn-default" data-original-title="Cancel"><i class="glyphicon glyphicon-menu-left"></i></a>
            </div>
        <h1>Voucher Themes</h1>
        <br />
        </div>


    <%--Content Body--%>
    <div class="container-fluid">
        <div class="panel panel-default">

            <%--panel heading--%>
            <div class="panel-heading">
                <h3 class="panel-title"><i class="glyphicon glyphicon-pencil"></i> Edit Voucher Theme</h3>
            </div>

            <%--panel body--%>
            <div class="panel-body">
                <form action="#" method="post" enctype="multipart/form-data" id="form-theme-voucher" class="form-horizontal">
                    <div class="form-group required">
                        <label class="col-sm-2 control-label">Voucher Theme Name</label>
                        <div class="col-sm-offset-2">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-globe"></i></span>
                                <input type="text" name="voucher_theme_description[1][name]" value="" placeholder="Voucher Theme Name" class="form-control"><br />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-image">Image</label>
                        <div class="col-sm-10">
                            <a href="#" id="thumb-image" data-toggle="image" class="img-thumbnail">
                                <img src="#" alt="" title="" data-placeholder="image" /></a>
                            <input type="hidden" name="image" value="" id="input-image" />
                        </div>
                    </div>
                </form>
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
