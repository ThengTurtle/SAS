<%@ Page Title="Manufacturers" Language="vb" AutoEventWireup="false" MasterPageFile="~/Employee.Master" CodeBehind="EditManufacturers.aspx.vb" Inherits="SAS1.EditManufacturers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <%--Content Header--%>
    <div class="col-sm-10 col-sm-offset-4 col-md-10 col-md-offset-2 main">
        <div class="container-fluid">
            <br />
            <div class="nav navbar-nav navbar-right">
                <a href="#" data-toggle="tooltip" title="" class="btn btn-primary btn-sm" data-original-title="Save"><i class="glyphicon glyphicon-floppy-disk"></i></a>
                <a href="Manufacturers.aspx" data-toggle="tooltip" title="" class="btn btn-default btn-sm" data-original-title="Cancel"><i class="glyphicon glyphicon-menu-left (Cancel button)"></i></a>
            </div>
            <h1>Manufacturers</h1>
            <br />
        </div>

        <%--Content Body--%>
        <div class="container-fluid">
            <div class="panel panel-default">

           <%--panel heading--%>
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="glyphicon glyphicon-pencil"></i> Add Manufacturer</h3>
                </div>

               <%--panel body--%>
                <div class="panel-body">
                    <form action="#" method="post" enctype="multipart/form-data" id="form-manufacturer" class="form-horizontal">

                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-name">Manufacturer Name</label>
                            <div class="col-sm-10">
                                <input type="text" name="name" value="" placeholder="Manufacturer Name" id="input-name" class="form-control"><br />
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="input-keyword"><span data-toggle="tooltip" title="" data-original-title="Do not use spaces, instead replace spaces with - and make sure the keyword is globally unique.">SEO Keyword <span class="label label-primary">?</span></span></label>
                            <div class="col-sm-10">
                                <input type="text" name="keyword" value="" placeholder="SEO Keyword" id="input-keyword" class="form-control"><br />
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="input-image">Image</label>
                            <div class="col-sm-10">
                                <a href="" id="thumb-image" data-toggle="image" class="img-thumbnail">
                                    <img src="#" alt="" title="" data-placeholder="image"></a>
                                <input type="hidden" name="image" value="" id="input-image">
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
