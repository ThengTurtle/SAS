<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Employee.Master" CodeBehind="EmployeeLogin.aspx.vb" Inherits="SAS1.employeeLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <div id="content">
        <div class="container">
            <div class="col-sm-offset-4 col-sm-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h1 class="panel-title">Please enter your login details.</h1>
                    </div>
                    <div class="panel-body">

                        <div class="form-group">
                            <label for="input-username">Username</label>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <asp:TextBox ID="tbxUsername" placeholder="Username" runat="server" class="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="input-password">Password</label>
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                <asp:TextBox ID="tbxPassword" placeholder="Password" runat="server" class="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <asp:Label ID="lblLoginMessage" runat="server" ForeColor="Red"></asp:Label>
                        <div class="text-right">
                            <asp:Button ID="btnLogin" class="btn btn-primary" runat="server" Text="Login" />
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
