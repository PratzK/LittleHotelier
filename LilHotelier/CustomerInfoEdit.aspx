<%@ Page Title="" Language="C#" MasterPageFile="~/LilHot.Master" AutoEventWireup="true" CodeBehind="CustomerInfoEdit.aspx.cs" Inherits="LilHotelier.AdminCustomerInfoEdit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script>
        $(document).ready(function () {
            $("#<%=CustomerInfoTable.ClientID%>").prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();
        });
     </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <!--Customer Info Edit-->
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
                                <h3>Customer Info</h3>
                            </div>
                        </div>
                        <hr />  
                        <div class="row">
                            <div class="col">
                                <label style="font-weight:500">Search</label>
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox CssClass="form-control" ID="SearchContactNumber" runat="server" placeholder="Contact Number" TextMode="Phone"></asp:TextBox>
                                        <asp:Button CssClass="btn btn-primary" ID="SearchContact" runat="server" Text="Go" OnClick="SearchContact_Click" />
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
                        <!--Edit Last Name Here-->
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label style="font-weight:500">Last Name</label>
                                    <asp:TextBox CssClass="form-control" ID="LastName" runat="server" placeholder="Last Name"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <!--Edit Conatct Number Here-->
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label style="font-weight:500">Contact Number</label>
                                    <asp:TextBox CssClass="form-control" ID="ContactNumber" runat="server" placeholder="Contact Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:Label ID="Label1" Visible="false" runat="server" Text="Contact Number Already Registered!" ForeColor="Red"></asp:Label>
                                </div>
                            </div>
                        </div>
                        <!--Edit Email address Here-->
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label style="font-weight:500">Email ID</label>
                                    <asp:TextBox CssClass="form-control" ID="EmailId" runat="server" placeholder="Email ID"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        
                        <!--Edit Address Here-->
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label style="font-weight:500">Address</label>
                                    <asp:TextBox ID="Address" CssClass="form-control" placeholder="Address" TextMode="MultiLine" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col col-md-4 mx-auto">
                                <div class="form-group">
                                    <asp:Button CssClass="form-control btn btn-primary" ID="AddInfo" runat="server" Text="Add" OnClick="AddInfo_Click" />
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
                                <h3>Customer Details Table</h3>
                            </div>
                        </div>
                        <hr /> 
                        <!--Grid View-->
                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LittleHotelierDBConnectionString %>" SelectCommand="SELECT * FROM [Customer_Info_Table]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="CustomerInfoTable" runat="server" AutoGenerateColumns="False" DataKeyNames="ContactNumber" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="FirstName" HeaderText="First Name" SortExpression="FirstName" />
                                        <asp:BoundField DataField="LastName" HeaderText="Last Name" SortExpression="LastName" />
                                        <asp:BoundField DataField="ContactNumber" HeaderText="Contact Number" ReadOnly="True" SortExpression="ContactNumber" />
                                        <asp:BoundField DataField="EmailID" HeaderText="Email ID" SortExpression="EmailID" />
                                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
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
