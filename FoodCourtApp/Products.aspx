 <%@ Page Title="Products" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="FoodCourtApp.Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row" style="text-align:right">
        <a href="NewProduct.aspx"> New Product</a>
    </div>
    <div id="divProductGrid" runat="server" class="row" align="center" >
        <asp:GridView ID="grdProducts" CssClass="grd" runat="server" AutoGenerateColumns="False"
            AllowPaging="True"
            DataKeyNames="ProductId" CellPadding="4" CaptionAlign="Top" OnRowDataBound="grdProducts_RowDataBound" OnRowDeleting="grdProducts_RowDeleting" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                
                <asp:BoundField  DataField="ProductName" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Height="30px" ItemStyle-Height="30px" ItemStyle-Width="200px" HeaderText="Product Name" >
<HeaderStyle  Height="30px" ></HeaderStyle>

<ItemStyle Width="200px" ></ItemStyle>
                </asp:BoundField>
                <asp:ImageField HeaderText="Product Logo" ItemStyle-Width="200px"   ControlStyle-Height="50px" ControlStyle-Width="50px" DataImageUrlField="ProductLogoPath">
<ControlStyle Height="50px" Width="50px"></ControlStyle>

<ItemStyle Width="200px"></ItemStyle>
                </asp:ImageField>
                <asp:BoundField DataField="ProductDescription" HeaderStyle-Height="30px" ItemStyle-Height="30px"  ItemStyle-Width="200px" HeaderText="Product Description" >
<HeaderStyle Height="30px"></HeaderStyle>

<ItemStyle Width="200px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="Rate" HeaderStyle-Height="30px" ItemStyle-Height="30px"  ItemStyle-Width="200px" HeaderText="Rate" >
<HeaderStyle Height="30px"></HeaderStyle>

<ItemStyle Width="200px"></ItemStyle>
                </asp:BoundField>
                <asp:HyperLinkField HeaderText="Edit"  ItemStyle-Width="100px" DataNavigateUrlFields="ProductId" DataNavigateUrlFormatString="~/EditProduct.aspx?Id={0}"  Text="Edit" >
<ItemStyle Width="100px"></ItemStyle>
                </asp:HyperLinkField>
                <asp:CommandField ShowDeleteButton="true" ItemStyle-Width="100px" HeaderText="Delete" ButtonType="Button" >
<ItemStyle Width="100px"></ItemStyle>
                </asp:CommandField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    </div>
    <div id="DivNoRecords" runat="server" visible="false">
        No Products Available 
    </div>
</asp:Content>
