<%@ Page Title="" Language="C#" MasterPageFile="~/LilHot.Master" AutoEventWireup="true" CodeBehind="AdminLoginPage.aspx.cs" Inherits="LilHotelier.AdminLoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="conatiner">
        <br />
        <div class="row">
            <div class="col-md-6 mx-auto">
                 <!--Login Screen Border-->
                <div class="card">
                     <!--Login Screen Area-->
                    <div class="card-body">
                         <!--Login Image, Text & Divider-->

                        <div class="row">
                            <div class="col text-center">
                                <!--Change Image!!!!!!-->
                                <img src="imgs/userlogin.png" style="width: 125px; height: 125px;" class="img-fluid max-width:100% height:auto" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col text-center">
                                <h3>Admin Login</h3>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <br />
                         <!--Login Form Text Boxes & Button-->
                        <div class="row">
                            <div class="col col-md-8 mx-auto">
                                <div class="form-group">
                                    <asp:Textbox cssClass="form-control" ID="AdminUserId" runat="server" placeholder="User ID"></asp:Textbox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col col-md-8 mx-auto">
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="AdminPswd" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col col-md-6 mx-auto">
                                <div class="form-group">
                                    <asp:Button class="btn btn-success btn-block" ID="LoginBtn" runat="server" Text="Login" OnClick="LoginBtn_Click"/>
                                </div>
                            </div>
                        </div>
                        <br />
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
