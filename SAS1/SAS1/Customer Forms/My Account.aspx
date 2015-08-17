<%@ Page Title="My Account" Language="vb" AutoEventWireup="false" MasterPageFile="~/Customer.Master" CodeBehind="My Account.aspx.vb" Inherits="SAS1.My_Account" %>
<asp:Content ID="Content1" ContentPlaceHolderID="CustContent" runat="server">
    <div class="row">
        <div id="content" class="col-sm-9">
            <h2>My Account</h2>
            <ul class="list-unstyled">
                <li><a href="MyAccountInformation.aspx">Edit your account information</a></li>
                <li><a href="ChangePassword.aspx">Change your password</a></li>
                <li><a href="AddressBook.aspx">Modify your address book entries</a></li>
                <li><a href="Wishlist.aspx">Modify your wish list</a></li>
            </ul>
            <h2>My Orders</h2>
            <ul class="list-unstyled">
                <li><a href="OrderHistory.aspx">View your order history</a></li>
                <li><a href="RewardPointsC.aspx">Your Reward Points</a></li>
                <li><a href="ProductReturnsC.aspx">View your return requests</a></li>
                <li><a href="TransactionsC.aspx">Your Transactions</a></li>
            </ul>
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
