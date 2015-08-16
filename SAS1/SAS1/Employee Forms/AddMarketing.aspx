<%@ Page Title="Marketing Tracking" Language="vb" AutoEventWireup="false" MasterPageFile="~/Employee.Master" CodeBehind="AddMarketing.aspx.vb" Inherits="SAS1.AddMarketing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <%--Content Header--%>
    <div class="col-sm-9 col-sm-offset-4 col-md-10 col-md-offset-2 main">
        <div class="container-fluid">
            <br />
            <div class="nav navbar-nav navbar-right">
                <button type="submit" form="form-marketing" data-toggle="tooltip" title="" class="btn btn-primary" data-original-title="Save"><i class="glyphicon glyphicon-floppy-disk"></i></button>
                <a href="Marketing.aspx" data-toggle="tooltip" title="" class="btn btn-default" data-original-title="Cancel"><i class="glyphicon glyphicon-menu-left"></i></a>
            </div>
            <h1>Marketing Tracking</h1>
            <br />
        </div>


        <%--Content Body--%>
        <div class="container-fluid">
            <div class="panel panel-default">

                <%--panel heading--%>
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="glyphicon glyphicon-pencil"></i> Add Marketing Tracking</h3>
                </div>

                <%--panel body--%>
                <div class="panel-body">
                    <form action="#" method="post" enctype="multipart/form-data" id="form-marketing" class="form-horizontal">
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-name">Campaign Name</label>
                            <div class="col-sm-10">
                                <input type="text" name="name" value="" placeholder="Campaign Name" id="input-name" class="form-control"><br />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="input-description">Campaign Description</label>
                            <div class="col-sm-10">
                                <textarea name="description" rows="5" placeholder="Campaign Description" id="input-description" class="form-control"></textarea><br />
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-code"><span data-toggle="tooltip" title="" data-original-title="The tracking code that will be used to marketing track campaigns.">Tracking Code <span class="label label-primary">?</span></span></label>
                            <div class="col-sm-10">
                                <input type="text" name="code" value="55c9081976be8" placeholder="Tracking Code" id="input-code" class="form-control"><br />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="input-example"><span data-toggle="tooltip" title="" data-original-title="So the system can track refferals you neeed to add the tracking code to the end of the URL linking to your site.">Examples <span class="label label-primary">?</span></span></label>
                            <div class="col-sm-10">
                                <input type="text" placeholder="Examples" id="input-example1" class="form-control">
                                <br>
                                <input type="text" placeholder="Examples" id="input-example2" class="form-control">
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
