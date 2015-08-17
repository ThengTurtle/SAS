<%@ Page Title="Change Password" Language="vb" AutoEventWireup="false" MasterPageFile="~/Customer.Master" CodeBehind="ChangePassword.aspx.vb" Inherits="SAS1.ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CustContent" runat="server">
    <div class="row">
        <div id="content" class="col-sm-9">
            <h1>Change Password</h1>
            <form action="#" method="post" enctype="multipart/form-data" class="form-horizontal">
                <fieldset>
                    <legend>Your Password</legend>
                    <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-password">Password</label>
                        <div class="col-sm-10">
                            <input type="password" name="password" value="" placeholder="Password" id="input-password" class="form-control"><br />
                        </div>
                    </div>
                    <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-confirm">Password Confirm</label>
                        <div class="col-sm-10">
                            <input type="password" name="confirm" value="" placeholder="Password Confirm" id="input-confirm" class="form-control"/><br />

                        </div>
                    </div>
                </fieldset>
                <div class="buttons clearfix">
                    <div class="pull-left"><a href="My Account.aspx" class="btn btn-default">Back</a></div>
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
                <a href="OrderHistory.aspx" class="list-group-item">Order History</a> 
                <a href="RewardPointsC.aspx" class="list-group-item">Reward Points</a> 
                <a href="ProductReturnsC.aspx" class="list-group-item">Returns</a> 
                <a href="TransactionsC.aspx" class="list-group-item">Transactions</a> 
                <a href="#" class="list-group-item">Logout</a>
            </div>
        </div>
    </div>
</asp:Content>
