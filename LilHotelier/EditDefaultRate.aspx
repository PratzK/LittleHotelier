<%@ Page Title="" Language="C#" MasterPageFile="~/LilHot.Master" AutoEventWireup="true" CodeBehind="EditDefaultRate.aspx.cs" Inherits="LilHotelier.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <br />
        <div class="row">
            <div class="col col-md-8 mx-auto text-center">
                <h3>Edit Deafult Rates</h3>
                <hr /> 
            </div>
        </div>
        <!--Room Default Rates-->
        <div class="row">
            <div class="col">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col text-center">
                                <h4 class="card-title">Room Default Rates</h4>
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col col-md-4 mx-auto">
                                <div class="form-group">
                                    <label style="font-weight:500; color:black">Room Type</label>
                                    <asp:DropDownList CssClass="form-control btn-light border-dark" ID="RoomType" runat="server">
                                        <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                        <asp:ListItem Text="Single" Value="Single"></asp:ListItem>
                                        <asp:ListItem Text="Double" Value="Double"></asp:ListItem>
                                        <asp:ListItem Text="Deluxe" Value="Deluxe"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col col-md-4 mx-auto">
                                <div class="form-group">
                                    <label style="font-weight:500;  color:black">Current Default Rate</label>
                                    <asp:TextBox CssClass="form-control btn-light btn-border-dark" ID="CurrentRate" ReadOnly="true" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col col-md-4 mx-auto">
                                <div class="form-group">
                                    <label style="font-weight:500;  color:black">New Default Rate</label>
                                    <asp:TextBox CssClass="form-control btn-light btn-border-dark" ID="NewDefaultRate" placeholder="0.00" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br />
        <!--Table Default Rates-->
        <div class="row">
            <div class="col">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col text-center">
                                <h4 class="card-title">Table Default Rates</h4>
                            </div>
                        </div>
                        <hr />
                        <div class="row">
                            <div class="col col-md-4 mx-auto">
                                <div class="form-group">
                                    <label style="font-weight:500; color:black">Meal Type</label>
                                    <asp:DropDownList CssClass="form-control btn-light border-dark" ID="MealType" runat="server">
                                        <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                        <asp:ListItem Text="Breakfast" Value="Breakfast"></asp:ListItem>
                                        <asp:ListItem Text="Lunch" Value="Lunch"></asp:ListItem>
                                        <asp:ListItem Text="Dinner" Value="Dinner"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col col-md-4 mx-auto">
                                <div class="form-group">
                                    <label style="font-weight:500;  color:black">Current Default Rate</label>
                                    <asp:TextBox CssClass="form-control btn-light btn-border-dark" ID="CurrentTableRate" ReadOnly="true" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col col-md-4 mx-auto">
                                <div class="form-group">
                                    <label style="font-weight:500;  color:black">New Default Rate</label>
                                    <asp:TextBox CssClass="form-control btn-light btn-border-dark" ID="NewTableRate" placeholder="0.00" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
       
    </div>
</asp:Content>
