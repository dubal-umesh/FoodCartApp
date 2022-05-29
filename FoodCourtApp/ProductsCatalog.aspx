<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductsCatalog.aspx.cs" Inherits="FoodCourtApp.ProductsCatalog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .productList {
            border: 1px solid #6c757d;
            margin-bottom: 10px;
            padding: 15px;
            border-radius: 3px;
        }

        .row {
            width: 100% !important;
        }
    </style>
    <asp:DataList ID="dlProducts" runat="server" RepeatColumns="3" CssClass="row" OnItemCommand="dlProducts_ItemCommand">
        <ItemTemplate>
            <div class="row productList" style="width: 100%">

                <table class="grd">
                    <tr>
                        <td>
                            <img alt="No Image"   width="150" src='<%#Eval("ProductLogoPath")%>' />

                        </td>
                        <td>
                            <h4><%#Eval("ProductName")%></h4>
                            <h6><%#Eval("Rate")%></h6>
                            <div>
                                <%#Eval("ProductDescription")%>
                            </div>

                        </td>
                    </tr>
                    <td>
                    <td colspan="2">
                        <asp:Button ID="btnAddtoCart" runat="server" CssClass="form-control" Text="Add To Cart" />
                        <asp:HiddenField ID="hdnProductId" runat="server" Value='<%#Eval("ProductId") %>' />

                    </td>

                </table>


            </div>
        </ItemTemplate>


    </asp:DataList>
</asp:Content>
