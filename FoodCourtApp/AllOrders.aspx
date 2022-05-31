<%@ Page Title="Orders" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AllOrders.aspx.cs" Inherits="FoodCourtApp.AllOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row main-content">
        <fieldset class="fieldsetStyle">
            <legend class="legendStye">Orders</legend>
            <div style="padding:25px;">
                <asp:GridView ID="grdOrders" runat="server" AutoGenerateColumns="False"
                    AllowPaging="True"
                    DataKeyNames="OrderId" CellPadding="4" CaptionAlign="Top" ForeColor="#333333" GridLines="None" >
                    <Columns>
                        <asp:BoundField DataField="OrderNumber" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Height="30px" ItemStyle-Height="30px" ItemStyle-Width="200px" HeaderText="Product Name">
                            <HeaderStyle Height="30px"></HeaderStyle>
                            <ItemStyle Width="200px"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="OrderDate" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Height="30px" ItemStyle-Height="30px" ItemStyle-Width="200px" HeaderText="Quantity">
                            <HeaderStyle Height="30px"></HeaderStyle>
                            <ItemStyle Width="200px"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="CustomerName" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Height="30px" ItemStyle-Height="30px" ItemStyle-Width="200px" HeaderText="Rate">
                            <HeaderStyle Height="30px"></HeaderStyle>
                            <ItemStyle Width="200px"></ItemStyle>
                        </asp:BoundField>
                        <asp:BoundField DataField="Status" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Height="30px" ItemStyle-Height="30px" ItemStyle-Width="200px" HeaderText="Amount">
                            <HeaderStyle Height="30px"></HeaderStyle>
                            <ItemStyle Width="200px"></ItemStyle>
                        </asp:BoundField>

                        <asp:TemplateField HeaderText="View">
                            <ItemTemplate>
                                <a href="OrderDetailsPage.aspx?OrderId=<%#Eval("OrderId") %>">View</a>
                            </ItemTemplate>
                        </asp:TemplateField>

                    </Columns>

                </asp:GridView>
            </div>
        </fieldset>
    </div>
</asp:Content>
