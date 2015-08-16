<%@ Page Title="Your Transactions" Language="vb" AutoEventWireup="false" MasterPageFile="~/Customer.Master" CodeBehind="TransactionsC.aspx.vb" Inherits="SAS1.TransactionsC" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CustContent" runat="server">
    <div class="row">
        <div id="content" class="col-sm-9">
            <h1>Your Transactions</h1>
            <p>Your current balance is: <b>$0.00</b>.</p>
            <div class="table-responsive">
                <table class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <td class="text-left">Date Added</td>
                            <td class="text-left">Description</td>
                            <td class="text-right">Amount (RM)</td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="text-center" colspan="5">You do not have any transactions!</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="row">
                <div class="col-sm-6 text-left"></div>
                <div class="col-sm-6 text-right">Showing 0 to 0 of 0 (0 Pages)</div>
            </div>
            <div class="buttons clearfix">
                <div class="pull-right"><a href="My Account.aspx" class="btn btn-primary">Continue</a></div>
            </div>
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
