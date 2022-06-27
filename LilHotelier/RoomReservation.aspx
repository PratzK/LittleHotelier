<%@ Page Title="" Language="C#" MasterPageFile="~/LilHot.Master" AutoEventWireup="true" CodeBehind="RoomReservation.aspx.cs" Inherits="LilHotelier.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <br />
        <div class="row">
            <div class="col col-md-8 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <!-- Reservation content -->
                        <div class="row">
                            <div class="col text-center">
                                <h3 class="card-title"> Reservation Details</h3>
                            </div>
                        </div>
                        <hr />
                        <br />
                        <!-- Customer Info -->
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
                                    <asp:TextBox ID="ContactNo" CssClass="form-control" TextMode="Phone" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br />
                        <!-- Date Details -->
                        <div class="row">
                            <div class="col col-md-6 mx-auto">
                                <label style="font-weight:500">Check-in Date</label>
                                <div class="form-group">
                                    <asp:TextBox ID="CheckInDate" CssClass="form-control" TextMode="Date" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col col-md-6 mx-auto">
                                <label style="font-weight:500">Check-out Date</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TCheckOutDate" CssClass="form-control" TextMode="Date" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <br />
                        <!-- Room Details -->
                        <div class="row">
                            <!-- Room Type -->
                            <div class="col col-md-4">
                                <div class="form-group" style="font-weight: 500">
                                    <label>Room Type</label>
                                    <asp:DropDownList ID="RoomType" runat="server" Width="175px" Height="40" CssClass="form-control btn-light border-dark">
                                        <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                        <asp:ListItem Text="Single" Value="Single"></asp:ListItem>
                                        <asp:ListItem Text="Double" Value="Double"></asp:ListItem>
                                        <asp:ListItem Text="Deluxe" Value="Deluxe"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <!-- Room No. -->
                            <div class="col col-md-4">
                                <div class="form-group" style="font-weight: 500">
                                    <label>Room No.</label>
                                    <asp:DropDownList ID="RoomNo" runat="server" Width="175px" Height="40" CssClass="form-control btn-light border-dark">
                                        <asp:ListItem Text="Select" Value="Select">

                                        </asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <!-- Room Default Rate -->
                            <div class="col col-md-4" title="Room No">
                                <div class="form-group" style="font-weight: 500">
                                    <label>Default Rate</label>
                                    <asp:TextBox ID="TxtDefaultRate" CssClass="form-control" runat="server" ReadOnly="true"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                         <br />
                        <div class="row">
                            <div class="col col-md-6 mx-auto ">
                                <asp:Button CssClass="btn btn-success btn-block" ID="SaveReservation" runat="server" Text="Save Reservation" />
                            </div>
                        </div>
                        <br />
                        
                    </div>
                </div>
            </div>
        </div>

    </div>
</asp:Content>
