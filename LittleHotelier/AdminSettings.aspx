<%@ Page Title="" Language="C#" MasterPageFile="~/LilHot.Master" AutoEventWireup="true" CodeBehind="AdminSettings.aspx.cs" Inherits="LilHotelier.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container text-center">
        <br />
        <h3>Admin Settings</h3>
        <br />
        <div class="row">

            <!--Create/Modify/Delete User Card-->
            <div class="col col-md-3 mx-auto">
                <div class="card" style="height:300px">
                    <div class="card-body">
                        <div class="row ">
                            <div class="col text-center">
                            <img src="imgs/EditUser.png" style="width:80px; height:80px;" />

                            </div>
                        </div>
                        <div class="row">
                            <div class="col text-center">
                                <h3>Create/Modify User</h3>
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col text-center">
                                <a href="EditAdminUserPage.aspx" style="color: #000000; font-size:large; font-weight:500">Admin User</a>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col text-center">
                                <a href="AddStaffUserPage.aspx" style="color: #000000; font-size:large; font-weight:500">Staff User</a>
                            </div>
                        </div>
                    </div>


                </div>
            </div>


            <!--Change Rate Card-->
            <div class="col col-md-3 mx-auto">
                <div class="card" style="height:300px">
                    <div class="card-body">
                        <div class="row ">
                            <div class="col text-center">
                                <img src="imgs/editRate.png" style="width:80px; height:80px;"/>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col text-center">
                                <h3>Edit Default Rates</h3>
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col text-center">
                                <a href="EditDefaultRate.aspx" style="color: #000000; font-weight:500; font-size:large">Change Room Rates</a>
                            </div>
                        </div>                             
                    </div>


                </div>
            </div>


            <!--Edit Customer Info-->
            <div class="col col-md-3 mx-auto">
                <div class="card" style="height:300px">
                    <div class="card-body">
                        <div class="row ">
                            <div class="col text-center">
                            <img src="imgs/EditUser.png" style="width:80px; height:80px;" />

                            </div>
                        </div>
                        <div class="row">
                            <div class="col text-center">
                                <h3>Edit Customer Info</h3>
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col text-center">
                                <a href="CustomerInfoEdit.aspx" style="color: #000000; font-size:large; font-weight:500">Edit Info</a>
                            </div>
                        </div>
                        <br />
                    </div>
                </div>
            </div>


            <!--Edit Final Payment-->
            <div class="col col-md-3 mx-auto">
                <div class="card" style="height:300px">
                    <div class="card-body">
                        <div class="row ">
                            <div class="col text-center">
                                <img src="imgs/editRate.png" style="width:80px; height:80px;"/>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col text-center">
                                <h3>Edit Final Payments</h3>
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col text-center">
                                <a href="#" style="color: #000000; font-weight:500; font-size:large">Edit Room Payment</a>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col text-center">
                            <a href="#" style="color: #000000; font-weight:500; font-size:large">Edit Food Payment</a></div>
                        </div>
                        
                                                    
                    </div>


                </div>
            </div>
        </div>
    </div>
</asp:Content>
