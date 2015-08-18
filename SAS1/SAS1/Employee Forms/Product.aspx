<%@ Page Title="Products" Language="vb" AutoEventWireup="false" MasterPageFile="~/Employee.Master" CodeBehind="Product.aspx.vb" Inherits="SAS1.ProductList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <%--Content Header--%>
    <div class="col-sm-9 col-sm-offset-4 col-md-10 col-md-offset-2 main">
        <div class="container-fluid">
            <br />
            <div class="nav navbar-nav navbar-right">
                <a href="AddProduct.aspx" data-toggle="tooltip" title="" class="btn btn-primary btn-sm" data-original-title="Add New" runat="server"><i class="glyphicon glyphicon-plus"></i></a>
                <asp:Linkbutton id="btndelete" data-toggle="tooltip" title="" class="btn btn-danger btn-sm"    OnClientClick="return confirm('Delete cannot be undone! Are you sure you want to do this?')" data-original-title="Delete" runat="server"><i class="glyphicon glyphicon-trash"></i></asp:Linkbutton>
            </div>
            <h1>Products</h1>
            <br />
        </div>

        <%--Content Body--%>
        <div class="container-fluid">
            <div class="panel panel-default">

                <%--panel heading--%>
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="glyphicon glyphicon-th-list"></i> Product List</h3>
                </div>

                <%--panel body--%>
                <div class="panel-body">
                    <%--filter--%>
                    <div class="well">
                        <div class="row">
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label class="control-label" for="input-name">Product Name</label>
                                    <asp:TextBox ID="tbxProductName" runat="server" placeholder="Product Name" class="form-control" autocomplete="off" ></asp:TextBox><ul class="dropdown-menu"></ul>
                                </div>
                                <div class="form-group">
                                    <label class="control-label" for="input-price">Price</label>
                                    <asp:TextBox ID="tbxPrice" runat="server" placeholder="Price" class="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label class="control-label" for="input-quantity">Quantity</label>
                                    <asp:TextBox ID="tbxQuantity" runat="server" placeholder="Quantity" class="form-control" ></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label class="control-label" for="input-status">Status</label>
                                    <asp:DropDownList ID="ddlStatus" runat="server" class="form-control">
                                        <asp:ListItem Value="-1">--Select One---</asp:ListItem>
                                        <asp:ListItem Value="1">Enabled</asp:ListItem>
                                        <asp:ListItem Value="0">Disabled</asp:ListItem>
                                    </asp:DropDownList>
                                    </div>
                            </div>
                            <div class="col-sm-4">
                                <button type="button" id="btnFilter" runat="server" onserverclick ="btnFilter_ServerClick"  class="btn btn-primary pull-right"><i class="glyphicon glyphicon-search"></i> Filter</button>
                            </div>
                        </div>
                    </div>

                    <%-- table--%>
                    
                        <div class="table-responsive">
                            <asp:ListView ID ="lvItemdisplay" runat ="server" GroupPlaceholderID ="groupPlaceHolder1" ItemPlaceholderID ="itemPlaceHolder1" >
                            <LayoutTemplate>
                                <table class="table table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <td style="width: 1px;" class="text-center">
                                                <asp:CheckBox ID="cbxAll" runat="server" OnCheckedChanged="cbxAll_CheckedChanged"/></td>
                                            <td class="text-center">Image</td>
                                            <td class="text-left"><a href="#" class="asc">Product Name</a></td>
                                            <td class="text-left"><a href="#">Price</a>
                                            </td>
                                            <td class="text-right"><a href="#">Quantity</a>
                                            </td>
                                            <td class="text-left"><a href="#">Status</a>
                                            </td>
                                            <td class="text-right">Action</td>
                                        </tr>
                                    </thead>
                                    <asp:PlaceHolder runat ="server" ID ="groupPlaceHolder1"></asp:PlaceHolder>
                                </table>
                            </LayoutTemplate>
                            <GroupTemplate>
                                <tr>
                                    <asp:PlaceHolder runat ="server" ID ="itemPlaceHolder1"></asp:PlaceHolder>
                                </tr>
                            </GroupTemplate>
                            <ItemTemplate >
                                <td class="text-center">
                                    <asp:CheckBox ID="cbxProducts" runat="server" />
                                        </td>
                                <td class="text-center">
                                    <asp:Image ID="imgproductimage" runat="server" class="img-thumbnail" ImageUrl='~/ImageSource/<%# Eval("ImageUrl")%>'/>
                                        </td>
                                <td class="text-left"><%# Eval("productName")%></td>
                                <td class="text-left"><span style="text-decoration: line-through;"><%# Eval("unitPrice")%></span><br/>
                                            <div class="text-danger"><%# Eval("DiscountedPrice")%></div>
                                <td class="text-left"><%# Eval("Quantity")%></td>
                                <td class="text-left"><%# ShowStatus(Eval("Status")) %></td>
                                <td class="text-right"><a href="EditProduct.aspx" data-toggle="tooltip" title="" class="btn btn-primary btn-xs" data-original-title="Edit"><i class="glyphicon glyphicon-pencil"></i></a></td>
                                    <td style="display:none"><asp:HiddenField ID="hfProductsHiddenvalue" runat="server" Value='<%# Eval("productID") %>' /></td>
                            </ItemTemplate>
                        </asp:ListView>
                        </div>
               
                    <div class="row">
                        <div class="col-sm-6 text-left"></div>
                        <div class="col-sm-6 text-right">Showing 1 to 20 </div>
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
