<%@ Page Title="" Language="C#" MasterPageFile="~/LilHot.Master" AutoEventWireup="true" CodeBehind="AddStaffUserPage.aspx.cs" Inherits="LilHotelier.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <!--User Edit Info-->
            <div class="col col-md-4 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col text-center">
                                <!--Add Image Here-->
                            </div>
                        </div>
                        <div class="row">
                            <div class="col text-center">
                                <h3>Staff Info</h3>
                            </div>
                        </div>
                        <hr />  
                        <div class="row">
                            <div class="col">
                                <label style="font-weight:500">Search</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="UserID" runat="server" placeholder="User ID"></asp:TextBox>
                                        <asp:Button CssClass="btn btn-primary" ID="SearchUser" runat="server" Text="Go" OnClick="SearchUser_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr />
                        <!--Edit User Type
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label style="font-weight:500">User Type</label>
                                    <asp:DropDownList CssClass=" form-control dropdown-toggle" ID="UserType" runat="server">
                                        <asp:ListItem Text="Select"></asp:ListItem>
                                        <asp:ListItem Text="Admin" Value="Admin"></asp:ListItem>
                                        <asp:ListItem Text="Staff" Value="Staff"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>-->


                        <!--Edit First Name-->
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label style="font-weight:500">First Name</label>
                                    <asp:TextBox CssClass="form-control" ID="FirstName" runat="server" placeholder="First Name"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <!--Edit Last Name-->
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label style="font-weight:500">Last Name</label>
                                    <asp:TextBox CssClass="form-control" ID="LastName" runat="server" placeholder="Last Name"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <!--Edit User ID-->
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label style="font-weight:500">User ID</label>
                                    <asp:TextBox CssClass="form-control" ID="TxtUserID" runat="server" placeholder="User ID"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <!--Validation Summary-->
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:Label  ID="UserExists" runat="server" Visible="false" Text="User Name Already Exists!" ForeColor="Red"></asp:Label>
                                </div>
                            </div>
                        </div>
                        <!--Edit Password-->
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label style="font-weight:500">Password</label>
                                    <asp:TextBox CssClass="form-control" ID="Password" TextMode="Password" runat="server" placeholder="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col col-md-4 mx-auto">
                                <div class="form-group">
                                    <asp:Button ID="Button1" CssClass="form-control btn btn-primary" runat="server" Text="Add" OnClick="Button1_Click" />
                                </div>
                            </div>
                            <div class="col col-md-4 mx-auto">
                                <div class="form-group">
                                    <asp:Button CssClass="form-control btn btn-success" ID="UpdateInfo" runat="server" Text="Update" />
                                </div>
                            </div>
                            <div class="col col-md-4 mx-auto">
                                <div class="form-group">
                                    <asp:Button CssClass="form-control btn btn-danger" ID="DeleteInfo" runat="server" Text="Delete" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--Customer Info Display table-->
            <div class="col col-md-8 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col text-center">
                                <h3>Staff Info Table</h3>
                            </div>
                        </div>
                        <hr /> 
                        <!--Grid View-->
                        <div class="row">
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="UserInfoTable" runat="server"></asp:GridView>
                            </div>
                        </div>
                    </div>
            </div>
        </div>
        </div>
    </div>
</asp:Content>
