<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OrderDetailsPage.aspx.cs" Inherits="FoodCourtApp.OrderDetailsPage" %>
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
                DataKeyNames="Id,OrderId" CellPadding="4" CaptionAlign="Top" ForeColor="#333333" GridLines="None" >
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
                    
                </Columns>

            </asp:GridView>

        </fieldset>
        <br />
        
        

    </div>
</asp:Content>
