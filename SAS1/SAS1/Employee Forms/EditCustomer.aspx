<%@ Page Title="Customers" Language="vb" AutoEventWireup="false" MasterPageFile="~/Employee.Master" CodeBehind="EditCustomer.aspx.vb" Inherits="SAS1.EditCustomer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <%--Content Header--%>
    <div class="col-sm-9 col-sm-offset-4 col-md-10 col-md-offset-2 main">
        <div class="container-fluid">
            <br />
            <div class="nav navbar-nav navbar-right">
                <button type="submit" form="form-customer" data-toggle="tooltip" title="" class="btn btn-primary" data-original-title="Save"><i class="glyphicon glyphicon-floppy-disk"></i></button>
                <a href="Customers.aspx" data-toggle="tooltip" title="" class="btn btn-default" data-original-title="Cancel"><i class="glyphicon glyphicon-menu-left"></i></a>
            </div>
            <h1>Customers</h1>
            <br />
        </div>


        <%--Content Body--%>
        <div class="container-fluid">
            <div class="panel panel-default">

                <%--panel heading--%>
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="glyphicon glyphicon-pencil"></i> Edit Customer</h3>
                </div>

                <%--panel body--%>
                <div class="panel-body">
                    <form action="#" method="post" enctype="multipart/form-data" id="form-customer" class="form-horizontal">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#tab-general" data-toggle="tab">General</a></li>
                            <li><a href="#tab-history" data-toggle="tab">History</a></li>
                            <li><a href="#tab-transaction" data-toggle="tab">Transactions</a></li>
                            <li><a href="#tab-reward" data-toggle="tab">Reward Points</a></li>
                        </ul>
                        <div class="tab-content">

                            <%--general tab--%>
                            <div class="tab-pane active" id="tab-general">
                                <br />
                                <div class="row">
                                    <div class="col-sm-2">
                                        <ul class="nav nav-pills nav-stacked" id="address">
                                            <li class="active"><a href="#tab-customer" data-toggle="tab">General</a></li>
                                            <li><a href="#tab-address1" data-toggle="tab"><i class="glyphicon glyphicon-minus" onclick="$('#address a:first').tab('show'); $('#address a[href=\'#tab-address1\']').parent().remove(); $('#tab-address1').remove();"></i>Address 1</a></li>
                                            <li id="address-add"><a onclick="addAddress();"><i class="glyphicon glyphicon-plus"></i>Add Address</a></li>
                                        </ul>
                                    </div>
                                    <div class="col-sm-10">
                                        <div class="tab-content">
                                            <div class="tab-pane active" id="tab-customer">
                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label" for="input-customer-group">Customer Group</label>
                                                    <div class="col-sm-10">
                                                        <select name="customer_group_id" id="input-customer-group" class="form-control">
                                                            <option value="1" selected="selected">Default</option>
                                                        </select><br />
                                                    </div>
                                                </div>
                                                <div class="form-group required">
                                                    <label class="col-sm-2 control-label" for="input-firstname">First Name</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" name="firstname" value="*" placeholder="First Name" id="input-firstname" class="form-control"><br />
                                                    </div>
                                                </div>
                                                <div class="form-group required">
                                                    <label class="col-sm-2 control-label" for="input-lastname">Last Name</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" name="lastname" value="*" placeholder="Last Name" id="input-lastname" class="form-control"><br />
                                                    </div>
                                                </div>
                                                <div class="form-group required">
                                                    <label class="col-sm-2 control-label" for="input-email">E-Mail</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" name="email" value="a@s.com" placeholder="E-Mail" id="input-email" class="form-control"><br />
                                                    </div>
                                                </div>
                                                <div class="form-group required">
                                                    <label class="col-sm-2 control-label" for="input-telephone">Telephone</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" name="telephone" value="*3*" placeholder="Telephone" id="input-telephone" class="form-control"><br />
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label" for="input-fax">Fax</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" name="fax" value="*3*5*7*9*12*15*18*21*24*27*30*33" placeholder="Fax" id="input-fax" class="form-control"><br />
                                                    </div>
                                                </div>
                                                <div class="form-group required">
                                                    <label class="col-sm-2 control-label" for="input-password">Password</label>
                                                    <div class="col-sm-10">
                                                        <input type="password" name="password" value="" placeholder="Password" id="input-password" class="form-control" autocomplete="off"><br />
                                                    </div>
                                                </div>
                                                <div class="form-group required">
                                                    <label class="col-sm-2 control-label" for="input-confirm">Confirm</label>
                                                    <div class="col-sm-10">
                                                        <input type="password" name="confirm" value="" placeholder="Confirm" autocomplete="off" id="input-confirm" class="form-control"><br />
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label" for="input-status">Status</label>
                                                    <div class="col-sm-10">
                                                        <select name="status" id="input-status" class="form-control">
                                                            <option value="1" selected="selected">Enabled</option>
                                                            <option value="0">Disabled</option>
                                                        </select><br />
                                                    </div>
                                                </div>
                                            </div>

                                            <%--add new address--%>
                                            <div class="tab-pane" id="tab-address1">
                                                <input type="hidden" name="address[1][address_id]" value="3257">
                                                <div class="form-group required">
                                                    <label class="col-sm-2 control-label" for="input-firstname1">First Name</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" name="address[1][firstname]" value="*" placeholder="First Name" id="input-firstname1" class="form-control">
                                                    </div>
                                                </div>
                                                <div class="form-group required">
                                                    <label class="col-sm-2 control-label" for="input-lastname1">Last Name</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" name="address[1][lastname]" value="*" placeholder="Last Name" id="input-lastname1" class="form-control">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label" for="input-company1">Company</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" name="address[1][company]" value="*3*5*7*9*12*15*18*21*24*27*30*33*36*39*4" placeholder="Company" id="input-company1" class="form-control">
                                                    </div>
                                                </div>
                                                <div class="form-group required">
                                                    <label class="col-sm-2 control-label" for="input-address-11">Address 1</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" name="address[1][address_1]" value="*3*5*7*9*12*15*18*21*24*27*30*33*36*39*42*45*48*51*54*57*60*63*66*69*72*75*78*81*84*87*90*93*96*100*104*108*112*116*120*124*128*" placeholder="Address 1" id="input-address-11" class="form-control">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label" for="input-address-21">Address 2</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" name="address[1][address_2]" value="*3*5*7*9*12*15*18*21*24*27*30*33*36*39*42*45*48*51*54*57*60*63*66*69*72*75*78*81*84*87*90*93*96*99*103*107*111*115*119*123*127*1" placeholder="Address 2" id="input-address-21" class="form-control">
                                                    </div>
                                                </div>
                                                <div class="form-group required">
                                                    <label class="col-sm-2 control-label" for="input-city1">City</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" name="address[1][city]" value="*3*5*7*9*12*15*18*21*24*27*30*33*36*39*42*45*48*51*54*57*60*63*66*69*72*75*78*81*84*87*90*93*96*100*104*108*112*116*120*124*128*" placeholder="City" id="input-city1" class="form-control">
                                                    </div>
                                                </div>
                                                <div class="form-group required">
                                                    <label class="col-sm-2 control-label" for="input-postcode1">Postcode</label>
                                                    <div class="col-sm-10 required">
                                                        <input type="text" name="address[1][postcode]" value="*3*5*7*10*" placeholder="Postcode" id="input-postcode1" class="form-control">
                                                    </div>
                                                </div>
                                                <div class="form-group required">
                                                    <label class="col-sm-2 control-label" for="input-country1">Country</label>
                                                    <div class="col-sm-10">
                                                        <select name="address[1][country_id]" id="input-country1" onchange="country(this, '1', '3086');" class="form-control">
                                                            <option value="129">Malaysia</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="form-group required">
                                                    <label class="col-sm-2 control-label" for="input-zone1">Region / State</label>
                                                    <div class="col-sm-10">
                                                        <select name="address[1][zone_id]" id="input-zone1" class="form-control">
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
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label">Default Address</label>
                                                    <div class="col-sm-10">
                                                        <label class="radio">
                                                            <input type="radio" name="address[1][default]" value="1" checked="checked">
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <%--histroy tab--%>
                            <br />
                            <div class="tab-pane" id="tab-history">
                                <div id="history">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <td class="text-left">Date Added</td>
                                                <td class="text-left">Comment</td>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td class="text-center" colspan="2">No results!</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <div class="row">
                                        <div class="col-sm-6 text-left"></div>
                                        <div class="col-sm-6 text-right">Showing 0 to 0 of 0 (0 Pages)</div>
                                    </div>
                                </div>
                                <br>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-comment">Comment</label>
                                    <div class="col-sm-10">
                                        <textarea name="comment" rows="8" placeholder="Comment" id="input-comment" class="form-control"></textarea><br />
                                    </div>
                                </div>
                                <div class="text-right">
                                    <button id="button-history" data-loading-text="Loading..." class="btn btn-primary"><i class="glyphicon glyphicon-plus"></i> Add History</button>
                                </div>
                            </div>


                            <%--transaction tab--%>
                            <br />
                            <div class="tab-pane" id="tab-transaction">
                                <div id="transaction">
                                    <div class="table-responsive">
                                        <table class="table table-bordered table-hover">
                                            <thead>
                                                <tr>
                                                    <td class="text-left">Date Added</td>
                                                    <td class="text-left">Description</td>
                                                    <td class="text-right">Amount</td>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="text-center" colspan="3">No results!</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6 text-left"></div>
                                        <div class="col-sm-6 text-right">Showing 0 to 0 of 0 (0 Pages)</div>
                                    </div>
                                </div>
                                <br>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-transaction-description">Description</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="description" value="" placeholder="Description" id="input-transaction-description" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-amount">Amount</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="amount" value="" placeholder="Amount" id="input-amount" class="form-control"><br />
                                    </div>
                                </div>
                                <div class="text-right">
                                    <button type="button" id="button-transaction" data-loading-text="Loading..." class="btn btn-primary"><i class="glyphicon glyphicon-plus"></i> Add Transaction</button>
                                </div>
                            </div>

                            <%--reward tab--%>
                            <br />
                            <div class="tab-pane" id="tab-reward">
                                <div id="reward">
                                    <div class="table-responsive">
                                        <table class="table table-bordered table-hover">
                                            <thead>
                                                <tr>
                                                    <td class="text-left">Date Added</td>
                                                    <td class="text-left">Description</td>
                                                    <td class="text-right">Points</td>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td class="text-center" colspan="3">No results!</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-6 text-left"></div>
                                        <div class="col-sm-6 text-right">Showing 0 to 0 of 0 (0 Pages)</div>
                                    </div>
                                </div>
                                <br>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-reward-description">Description</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="description" value="" placeholder="Description" id="input-reward-description" class="form-control">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label class="col-sm-2 control-label" for="input-points"><span data-toggle="tooltip" title="" data-original-title="Use minus to remove points">Points</span></label>
                                    <div class="col-sm-10">
                                        <input type="text" name="points" value="" placeholder="Points" id="input-points" class="form-control"><br />
                                    </div>
                                </div>
                                <div class="text-right">
                                    <button type="button" id="button-reward" data-loading-text="Loading..." class="btn btn-primary"><i class="glyphicon glyphicon-plus"></i> Add Reward Points</button>
                                </div>
                            </div>

                        </div>
                    </form>
                </div>
            </div>



            <%--footer--%>
            <footer>
                <p>&copy; <%: DateTime.Now.Year %> - Shopping Advisor System</p>
            </footer>
        </div>
    </div>



</asp:Content>
