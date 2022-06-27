<%@ Page Title="" Language="C#" MasterPageFile="~/LilHot.Master" AutoEventWireup="true" CodeBehind="EditAdminUserPage.aspx.cs" Inherits="LilHotelier.EditAdminUserPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr.first"))).datatable();
        });
    </script>
    
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
                                <h3>Admin User Info</h3>
                            </div>
                        </div>
                        <hr />  
                        <div class="row">
                            <div class="col">
                                <label style="font-weight:500">Search</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="AdminUserName" runat="server" placeholder="User Name"></asp:TextBox>
                                        <asp:Button CssClass="btn btn-primary" ID="SearchUser" runat="server" Text="Go" OnClick="SearchUser_Click" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <hr />
                        
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
                        <!--Edit User Name-->
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label style="font-weight:500">User ID</label>
                                    <asp:TextBox CssClass="form-control" ID="TxtAdminUserName" runat="server" placeholder="User Name"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <!--Validation Summary-->
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:Label  ID="UserExists" runat="server" ForeColor="Red" Visible="false" Text="User ID Already Exists!"></asp:Label>
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
                                    <asp:Button CssClass="form-control btn btn-success" ID="UpdateInfo" runat="server" Text="Update" OnClick="UpdateInfo_Click" />
                                </div>
                            </div>
                            <div class="col col-md-4 mx-auto">
                                <div class="form-group">
                                    <asp:Button CssClass="form-control btn btn-danger" ID="DeleteInfo" runat="server" Text="Delete" OnClick="DeleteInfo_Click" />
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
                                <h3>Admin Users Details</h3>
                            </div>
                        </div>
                        <hr /> 
                        <!--Grid View-->
                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LittleHotelierDBConnectionString %>" SelectCommand="SELECT * FROM [Admin_User_Table]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="AdminUserInfoTable" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
                                        <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
                                        <asp:BoundField DataField="UserName" HeaderText="User Name" SortExpression="UserName" />
                                        <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
            </div>
        </div>
        </div>
    </div>
</asp:Content>
