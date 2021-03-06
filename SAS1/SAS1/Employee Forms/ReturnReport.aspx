﻿<%@ Page Title="Return Report" Language="vb" AutoEventWireup="false" MasterPageFile="~/Employee.Master" CodeBehind="ReturnReport.aspx.vb" Inherits="SAS1.ReturnReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <%--Content Header--%>
    <div class="col-sm-9 col-sm-offset-4 col-md-10 col-md-offset-2 main">
        <div class="container-fluid">
            <br />
            <h1>Return Report</h1>
            <br />
        </div>

        <%--Content Body--%>
        <div class="container-fluid">
            <div class="panel panel-default">

                <%--panel heading--%>
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="glyphicon glyphicon-stats"></i> Returns List</h3>
                </div>

                <%--panel body--%>
                <div class="panel-body">
                    <div class="well">
                        <div class="row">
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label class="control-label" for="input-date-start">Date Start</label>
                                    <div class="input-group date">
                                        <input type="text" name="filter_date_start" value="" placeholder="Date Start" data-format="YYYY-MM-DD" id="input-date-start" class="form-control">
                                        <span class="input-group-btn">
                                            <button type="button" class="btn btn-default"><i class="glyphicon glyphicon-calendar"></i></button>
                                        </span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="control-label" for="input-date-end">Date End</label>
                                    <div class="input-group date">
                                        <input type="text" name="filter_date_end" value="" placeholder="Date End" data-format="YYYY-MM-DD" id="input-date-end" class="form-control">
                                        <span class="input-group-btn">
                                            <button type="button" class="btn btn-default"><i class="glyphicon glyphicon-calendar"></i></button>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-5">
                                <div class="form-group">
                                    <label class="control-label" for="input-group">Group By</label>
                                    <select name="filter_group" id="input-group" class="form-control">
                                        <option value="year">Years</option>
                                        <option value="month">Months</option>
                                        <option value="week" selected="selected">Weeks</option>
                                        <option value="day">Days</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label class="control-label" for="input-status">Return Status</label>
                                    <select name="filter_return_status_id" id="input-status" class="form-control">
                                        <option value="0">All Statuses</option>
                                        <option value="2">Awaiting Products</option>
                                        <option value="3">Complete</option>
                                        <option value="1">Pending</option>
                                    </select>
                                </div>
                                <button type="button" id="button-filter" class="btn btn-primary pull-right"><i class="glyphicon glyphicon-search"></i> Filter</button>
                            </div>
                        </div>
                    </div>
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <td class="text-left">Date Start</td>
                                    <td class="text-left">Date End</td>
                                    <td class="text-right">No. Returns</td>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="text-left">10/10/2014</td>
                                    <td class="text-left">11/10/2014</td>
                                    <td class="text-right">3</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 text-left">
                            <ul class="pagination">
                                <li class="active"><span>1</span></li>
                                <li><a href="#">2</a></li>
                                <li><a href="#">&gt;</a></li>
                                <li><a href="#">&gt;|</a></li>
                            </ul>
                        </div>
                        <div class="col-sm-6 text-right">Showing 1 to 20 of 29 (2 Pages)</div>
                    </div>
                </div>
            </div>
            <%--footer--%>
            <footer>
                <p>&copy; <%: DateTime.Now.Year %> - Shopping Advisor System</p>
            </footer>
        </div>
    </div>
</asp:Content>
