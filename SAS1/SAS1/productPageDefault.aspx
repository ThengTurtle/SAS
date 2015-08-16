<%@ Page Title="Product" Language="vb" AutoEventWireup="false" MasterPageFile="~/Customer.Master" CodeBehind="productPageDefault.aspx.vb" Inherits="SAS1.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CustContent" runat="server">



    <div class="row">
        <div id="content" class="col-md-12">
            <div class="row">
                <div class="col-md-6">
                    <ul class="thumbnails">
                        <li><a class="thumbnail" href="$" title="nescafemild">
                            <img src="#" title="nescafemild" alt="nescafemild"></a></li>
                    </ul>

                    <ul class="nav nav-tabs">
                        <li class="active"><a href="#desc" data-toggle="tab">Description</a></li>
                        <li><a href="#specs" data-toggle="tab">Specification</a></li>
                    </ul>
                    <div id="myTabContent" class="tab-content">
                        <div class="tab-pane fade active in" id="desc">
                            <p>NESCAFÉ 3in1 Mild serves you an unforgettably smooth and creamy coffee experience</p>
                            <br />
                            <h4>Nutrition: </h4>
                            <p>As per back of pack available on Nestlé.co.my</p>
                        </div>
                        <div class="tab-pane fade active in" id="specs">
                        </div>
                    </div>
                </div>



                <div class="col-md-6">
                    <div class ="btn-group">
                        <button type="button" data-toggle="tooltip" data-placement="top" class="btn btn-default" title="" onclick="wishlist.add('42');" data-original-title="Add to Wish List"><i class="glyphicon glyphicon-heart"></i></button>
                        <button type="button" data-toggle="tooltip" data-placement="top" class="btn btn-default" title="" onclick="compare.add('42');" data-original-title="Compare this Product"><i class="glyphicon glyphicon-transfer"></i></button>
                    </div>
                    <h4>Nescafe 3 in 1 Mild Blend & Brew Premix Coffee 25sticks x 20g </h4>

                    <ul class="list-unstyled">
                        <li>Brand: <a href="#">Nescafe</a></li>
                        <li>Product Code: NS001</li>
                        <li>Availability: In Stock</li>
                    </ul>
                    <br />

                    <div class="form-group">
                        <label class="control-label" for="input-quantity">Quantity</label>
                        <input type="text" name="quantity" value="1" size="1" id="input-quantity" class="form-control">
                        <input type="hidden" name="product_id" value="42">
                        <br>
                        <button type="button" id="button-cart" data-loading-text="Loading..." class="btn btn-primary">Add to Cart</button>
                    </div>

                </div>


            </div>
        </div>
    </div>




</asp:Content>
