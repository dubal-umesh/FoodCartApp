<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="FoodCourtApp.Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .btn {
            background-color: darkorange;
        }

        .center {
            margin-top: 2px !important;
        }
    </style>
    <div class="row">
        <fieldset>
            <legend>Customer Information</legend>
            <table width="60%" class="center">
                <tr>
                    <td>Customer Name
                    </td>
                    <td>
                        <asp:Label ID="lblCustomerName" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Customer Address
                    </td>
                    <td>
                        <asp:Label ID="lblAddress" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Contact No
                    </td>
                    <td>
                        <asp:Label ID="lblContactNo" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Order No
                    </td>
                    <td>
                        <asp:Label ID="lblOrderNo" CssClass="form-label" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Order Date
                    </td>
                    <td>
                        <asp:Label ID="lblOrderDate" CssClass="form-label" runat="server"></asp:Label>
                    </td>
                </tr>
                 <tr>
                    <td>Total Amount
                    </td>
                    <td>
                        <asp:Label ID="lblTotalAmount" Font-Bold="true" CssClass="form-label" runat="server"></asp:Label>
                    </td>
                </tr>

            </table>

        </fieldset>
    </div>
    <div class="row center">
        <fieldset>
            <legend>Order Details</legend>
            <asp:Label ID="lblMessage" runat="server" Visible="false"></asp:Label>
            <asp:GridView ID="grdOrderDetails" runat="server" AutoGenerateColumns="False"
                AllowPaging="True"
                DataKeyNames="Id,OrderId" CellPadding="4" CaptionAlign="Top" ForeColor="#333333" GridLines="None" OnRowDataBound="grdOrderDetails_RowDataBound" OnRowDeleting="grdOrderDetails_RowDeleting">
                <Columns>
                    <asp:BoundField DataField="ProductName" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Height="30px" ItemStyle-Height="30px" ItemStyle-Width="200px" HeaderText="Product Name">
                        <HeaderStyle Height="30px"></HeaderStyle>
                        <ItemStyle Width="200px"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Qty" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Height="30px" ItemStyle-Height="30px" ItemStyle-Width="200px" HeaderText="Quantity">
                        <HeaderStyle Height="30px"></HeaderStyle>
                        <ItemStyle Width="200px"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Rate" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Height="30px" ItemStyle-Height="30px" ItemStyle-Width="200px" HeaderText="Rate">
                        <HeaderStyle Height="30px"></HeaderStyle>
                        <ItemStyle Width="200px"></ItemStyle>
                    </asp:BoundField>
                    <asp:BoundField DataField="Amount" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Height="30px" ItemStyle-Height="30px" ItemStyle-Width="200px" HeaderText="Amount">
                        <HeaderStyle Height="30px"></HeaderStyle>
                        <ItemStyle Width="200px"></ItemStyle>
                    </asp:BoundField>
                    <asp:CommandField ShowDeleteButton="true" ItemStyle-Width="100px" HeaderText="Delete" ButtonType="Button">
                        <ItemStyle Width="100px"></ItemStyle>
                    </asp:CommandField>
                </Columns>

            </asp:GridView>

        </fieldset>
        <br />
        
        <fieldset>
            <div class="row" style="text-align: right">
                <table align="right">
                    <tr>
                        <td style="padding: 15px">
                            <asp:Button ID="btnMoreitems" CssClass="form-control btn" runat="server" Text="Add More Items" OnClick="btnMoreitems_Click" /></td>
                        <td>
                            <asp:Button ID="btnPlaceOrder" CssClass="form-control btn" runat="server" Enabled="false" Text="Place Order" OnClick="btnPlaceOrder_Click" /></td>
                    </tr>
                </table>
            </div>
        </fieldset>

    </div>
</asp:Content>
