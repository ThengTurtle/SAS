<%@ Page Title="Address Book" Language="vb" AutoEventWireup="false" MasterPageFile="~/Customer.Master" CodeBehind="EditAddress.aspx.vb" Inherits="SAS1.EditAddress" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CustContent" runat="server">
    <div class="row">
        <div id="content" class="col-sm-9">
            <h2>Edit Address</h2>
            <form action="#" method="post" enctype="multipart/form-data" class="form-horizontal">
                <fieldset>
                    <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-firstname">First Name</label>
                        <div class="col-sm-10">
                            <input type="text" name="firstname" value="Theng" placeholder="First Name" id="input-firstname" class="form-control"><br />
                        </div>
                    </div>
                    <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-lastname">Last Name</label>
                        <div class="col-sm-10">
                            <input type="text" name="lastname" value="Turtle" placeholder="Last Name" id="input-lastname" class="form-control"><br />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-company">Company</label>
                        <div class="col-sm-10">
                            <input type="text" name="company" value="" placeholder="Company" id="input-company" class="form-control"><br />
                        </div>
                    </div>
                    <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-address-1">Address 1</label>
                        <div class="col-sm-10">
                            <input type="text" name="address_1" value="Kampar" placeholder="Address 1" id="input-address-1" class="form-control"><br />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-address-2">Address 2</label>
                        <div class="col-sm-10">
                            <input type="text" name="address_2" value="" placeholder="Address 2" id="input-address-2" class="form-control"><br />
                        </div>
                    </div>
                    <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-city">City</label>
                        <div class="col-sm-10">
                            <input type="text" name="city" value="Kampar" placeholder="City" id="input-city" class="form-control"><br />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-postcode">Post Code</label>
                        <div class="col-sm-10">
                            <input type="text" name="postcode" value="31900" placeholder="Post Code" id="input-postcode" class="form-control"><br />
                        </div>
                    </div>
                    <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-country">Country</label>
                        <div class="col-sm-10">
                            <select name="country_id" id="input-country" class="form-control">
                                <option value="">--- Please Select --- </option>
                                <option value="1">Malaysia</option>
                            </select><br />
                        </div>
                    </div>
                    <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-zone">Region / State</label>
                        <div class="col-sm-10">
                            <select name="zone_id" id="input-zone" class="form-control">
                                <option value="">--- Please Select --- </option>
                                <option value="1">Federal Territory of Kuala Lumpur</option>
                                <option value="2">Federal Territory of Labuan</option>
                                <option value="3">Federal Territory of Putrajaya</option>
                                <option value="4">Johor Darul Ta'zim</option>
                                <option value="5">Kedah Darul Aman</option>
                                <option value="6">Kelantan Darul Naim</option>
                                <option value="7">Malacca</option>
                                <option value="8">Negeri Sembilan Darul Khusus</option>
                                <option value="9">Pahang Darul Makmur</option>
                                <option value="10">Perak Darul Ridzuan</option>
                                <option value="11">Perlis Indera Kayangan</option>
                                <option value="12">Penang</option>
                                <option value="13">Sabah</option>
                                <option value="14">Sarawak</option>
                                <option value="15">Selangor Darul Ehsan</option>
                                <option value="16">Terengganu Darul Iman</option>
                            </select><br />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label">Default Address</label>
                        <div class="col-sm-10">
                            <label class="radio-inline">
                                <input type="radio" name="default" value="1" checked="checked">
                                Yes</label>
                            <label class="radio-inline">
                                <input type="radio" name="default" value="0">
                                No</label><br />
                        </div>
                    </div>
                </fieldset>
                <div class="buttons clearfix">
                    <div class="pull-left"><a href="AddressBook.aspx" class="btn btn-default">Back</a></div>
                    <div class="pull-right">
                        <input type="submit" value="Continue" class="btn btn-primary">
                    </div>
                </div>
            </form>
        </div>
        <div id="column-right" class="col-sm-3 hidden-xs">
            <div class="list-group">
                <a href="My Account.aspx" class="list-group-item">My Account</a>
                <a href="MyAccountInformation.aspx" class="list-group-item">Edit Account</a>
                <a href="ChangePassword.aspx" class="list-group-item">Password</a>
                <a href="AddressBook.aspx" class="list-group-item">Address Books</a>
                <a href="Wishlist.aspx" class="list-group-item">Wish List</a>
                <a href="#" class="list-group-item">Order History</a>
                <a href="#" class="list-group-item">Reward Points</a>
                <a href="#n" class="list-group-item">Returns</a>
                <a href="#" class="list-group-item">Transactions</a>
                <a href="#" class="list-group-item">Logout</a>
            </div>
        </div>
    </div>
</asp:Content>
