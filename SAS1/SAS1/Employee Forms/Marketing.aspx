<%@ Page Title="Marketing Tracking" Language="vb" AutoEventWireup="false" MasterPageFile="~/Employee.Master" CodeBehind="Marketing.aspx.vb" Inherits="SAS1.Marketing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <%--Content Header--%>
    <div class="col-sm-9 col-sm-offset-4 col-md-10 col-md-offset-2 main">
        <div class="container-fluid">
            <br />
            <div class="nav navbar-nav navbar-right">
                <a href="AddMarketing.aspx" data-toggle="tooltip" title="" class="btn btn-primary" data-original-title="Add New"><i class="glyphicon glyphicon-plus"></i></a>
                <button type="button" data-toggle="tooltip" title="" class="btn btn-danger" onclick="confirm('Delete/Uninstall cannot be undone! Are you sure you want to do this?') ? $('#form-marketing').submit() : false;" data-original-title="Delete"><i class="glyphicon glyphicon-menu-left"></i></button>
            </div>
            <h1>Marketing Tracking</h1>
            <br />
        </div>

        <%--Content Body--%>
        <div class="container-fluid">
            <div class="panel panel-default">

                <%--panel heading--%>
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="glyphicon glyphicon-th-list"></i> Marketing Tracking List</h3>
                </div>

                <%--panel body--%>
                <div class="panel-body">
                    <div class="well">
                        <div class="row">

                            <%--first column--%>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label class="control-label" for="input-name">Campaign Name</label>
                                    <input type="text" name="filter_name" value="" placeholder="Campaign Name" id="input-name" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label class="control-label" for="input-code">Tracking Code</label>
                                    <input type="text" name="filter_code" value="" placeholder="Tracking Code" id="input-code" class="form-control">
                                </div>
                            </div>

                            <%--second column--%>
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <label class="control-label" for="input-date-added">Date Added</label>
                                    <div class="input-group date">
                                        <input type="text" name="filter_date_added" value="" placeholder="Date Added" data-format="YYYY-MM-DD" class="form-control">
                                        <span class="input-group-btn">
                                            <button type="button" class="btn btn-default"><i class="glyphicon glyphicon-calendar"></i></button>
                                        </span>
                                    </div>
                                </div>
                                <button type="button" id="button-filter" class="btn btn-primary pull-right"><i class="glyphicon glyphicon-search"></i> Filter</button>
                            </div>
                        </div>
                    </div>

                    <form action="#" method="post" enctype="multipart/form-data" id="form-marketing">
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <td style="width: 1px;" class="text-center">
                                            <input type="checkbox" onclick="$('input[name*=\'selected\']').prop('checked', this.checked);"></td>
                                        <td class="text-left"><a href="#">Campaign Name</a>
                                        </td>
                                        <td class="text-left"><a href="#">Code</a>
                                        </td>
                                        <td class="text-right">Clicks</td>
                                        <td class="text-right">Orders</td>
                                        <td class="text-left"><a href="#">Date Added</a>
                                        </td>
                                        <td class="text-right">Action</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="text-center" colspan="8">No results!</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </form>
                    <div class="row">
                        <div class="col-sm-6 text-left"></div>
                        <div class="col-sm-6 text-right">Showing 0 to 0 of 0 (0 Pages)</div>
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
