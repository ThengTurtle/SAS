<%@ Page Title="Address Book" Language="vb" AutoEventWireup="false" MasterPageFile="~/Customer.Master" CodeBehind="AddressBook.aspx.vb" Inherits="SAS1.AddressBook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="CustContent" runat="server">
    <div class="row">
        <div id="content" class="col-sm-9">
            <h2>Address Book Entries</h2>
            <table class="table table-bordered table-hover">
                <tbody>
                    <tr>
                        <td class="text-left">Theng Turtle<br>
                            Kampar<br>
                            Kampar 31900<br>
                            Ma'an<br>
                            Jordan</td>
                        <td class="text-right">
                            <a href="EditAddress.aspx" class="btn btn-info">Edit</a> &nbsp; 
                            <a href="#" class="btn btn-danger">Delete</a></td>
                    </tr>
                </tbody>
            </table>
            <div class="buttons clearfix">
                <div class="pull-left"><a href="My Account.aspx" class="btn btn-default">Back</a></div>
                <div class="pull-right"><a href="EditAddress.aspx" class="btn btn-primary">New Address</a></div>
            </div>
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
