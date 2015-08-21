<%@ Page Title="Shopping Advisor System" Language="vb" AutoEventWireup="false" MasterPageFile="~/Customer.Master" CodeBehind="YourStore.aspx.vb" Inherits="SAS1.YourStore" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CustContent" runat="server">
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="ImageSource\banner\merdeka_sales.jpg" alt="merdeka_sales" height="1000" width="1200">
                <div class="carousel-caption">
                    <p>merdeka sales</p>
                </div>
            </div>
            <div class="item">
                <img src="ImageSource\banner\clerance_sales.png" alt="clearance_sales" height="1000" width="1200">
                <div class="carousel-caption">
                    Clearance Sales
                </div>
            </div>
            <div class="item">
                <img src="ImageSource\banner\backtoschool_sales.jpg" alt="backtoschool_sales" height="1000" width="1200">
                <div class="carousel-caption">
                    Clearance Sales
                </div>
            </div>
            testing
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <br />
    <br />
    <br>
    <div class="row">
        <h2>Top Best Selling</h2>
        <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
                <img src="ImageSource\best_seller\ayamasHotDog.jpg" alt="ayamasHotDog.jpg" height="200" width="200">
                <div class="caption">
                    <h3>Thumbnail label</h3>
                    <p>...</p>
                    <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
                <img src="ImageSource\best_seller\colgate_total.jpg" alt="colgate_total.jpg" height="200" width="200">
                <div class="caption">
                    <h3>Thumbnail label</h3>
                    <p>...</p>
                    <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
                <img src="ImageSource\best_seller\nescafe3in1.jpg" alt="nescafe3in1.jpg" height="200" width="200">
                <div class="caption">
                    <h3>Thumbnail label</h3>
                    <p>...</p>
                    <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
                </div>
            </div>
        </div>
        </div>
    <div class="row">
        <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
                <img src="ImageSource\best_seller\sunwhite_rice.jpg" alt="sunwhite_rice.jpg" height="200" width="200">
                <div class="caption">
                    <h3>Thumbnail label</h3>
                    <p>...</p>
                    <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
                <img src="ImageSource\best_seller\top_detergent_powder.jpg" alt="top_detergent_powder.jpg" height="200" width="200">
                <div class="caption">
                    <h3>Thumbnail label</h3>
                    <p>...</p>
                    <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-md-4">
            <div class="thumbnail">
                <img src="ImageSource\best_seller\wiseCottage.jpg" alt="wiseCottage.jpg" height="200" width="200">
                <div class="caption">
                    <h3>Thumbnail label</h3>
                    <p>...</p>
                    <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
