<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="FoodCourtApp.Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
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

            </table>

        </fieldset>
    </div>
    <div class="row center">
        <fieldset>
            <legend>Order Details</legend>
            <asp:GridView ID="grdOrderDetails" runat="server" AutoGenerateColumns="False"
                AllowPaging="True"
                DataKeyNames="Id" CellPadding="4" CaptionAlign="Top" ForeColor="#333333" GridLines="None">
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
                     <asp:CommandField ShowDeleteButton="true" ItemStyle-Width="100px" HeaderText="Delete" ButtonType="Button" >
<ItemStyle Width="100px"></ItemStyle> </asp:CommandField>
                </Columns>

            </asp:GridView>

        </fieldset>

    </div>
</asp:Content>
