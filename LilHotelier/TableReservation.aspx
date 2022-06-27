<%@ Page Title="" Language="C#" MasterPageFile="~/LilHot.Master" AutoEventWireup="true" CodeBehind="TableReservation.aspx.cs" Inherits="LilHotelier.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <br />
        <div class="row">
            <div class="col col-md-8 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col text-center">
                                <h3 class="card-title"> Table Reservation Details</h3>
                            </div>
                        </div>
                        <hr />
                        <br />
                        <!--Customer Info-->
                        <div class="row">
                            <div class="col col-md-6 mx-auto">
                                <div class="form-group">
                                    <label style="font-weight:500">Customer Name</label>
                                    <asp:TextBox ID="CustomerName" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col col-md-6 mx-auto">
                                <div class="form-group">
                                    <label style="font-weight:500">Contact Number</label>
                                    <asp:TextBox ID="ContactNo" TextMode="Phone" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br />
                        <!--Meal Info-->
                        <div class="row">
                            <div class="col col-md-6 mx-auto">
                                <label style="font-weight:500">Reserved Date</label>
                                <asp:TextBox ID="ReservedDate" TextMode="Date" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="col col-md-6 mx-auto">
                                <label style="font-weight:500">Meal Type</label>
                                <asp:DropDownList ID="MealType" CssClass="form-control btn-light border-dark" runat="server">
                                    <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                    <asp:ListItem Text="Breakfast" Value="Breakfast"></asp:ListItem>
                                    <asp:ListItem Text="Lunch" Value="Lunch"></asp:ListItem>
                                    <asp:ListItem Text="Dinner" Value="Dinner"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <br />
                        <!--Table & Rate Info-->
                        <div class="row">
                            <div class="col col-md-6 mx-auto">
                                <div class="form-group">
                                    <label style="font-weight:500">Table Number</label>
                                    <asp:DropDownList ID="TableNo" CssClass="form-control" runat="server">
                                        <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col col-md-6 mx-auto">
                                <div class="form-group">
                                    <label style="font-weight:500">Default Rate</label>
                                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br />
                        <div class="row">
                            <div class="col col-md-6 mx-auto ">
                                <asp:Button CssClass="btn btn-success btn-block" ID="SaveReservation" runat="server" Text="Save Reservation" />
                            </div>
                        </div>
                        <br>
                    </div>
                </div>
            </div>

        </div>
        </div>
</asp:Content>
