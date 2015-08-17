<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.vb" Inherits="SAS1._Default" %>

<asp:Content ID="content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="Content/StyleSheet1.css" />
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="background">
        <div class="container">
            <h1 class="intro">Shopping Advisor System a platform for customers and sellers</h1>
        </div>
        <div class="buttons">
			<a href="employeeRegister.aspx" class="btn btn-info">Register</a>
			<a href="employeeLogin.aspx" class="btn btn-danger">Login</a>
		</div>
    </div>

</asp:Content>
