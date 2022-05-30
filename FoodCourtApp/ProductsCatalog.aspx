<%@ Page Title="Product Catalog" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductsCatalog.aspx.cs" Inherits="FoodCourtApp.ProductsCatalog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .productList {
            border: 1px solid #6c757d;
            margin-bottom: 10px;
            padding: 15px;
            border-radius: 10px;
        }

        .btn {
            background-color: #FF1;
        }

        .row {
            width: 100% !important;
        }

            .row td {
                padding: 5px !important;
            }
    </style>
    <asp:DataList ID="dlProducts" runat="server" RepeatColumns="3" CssClass="row" OnItemCommand="dlProducts_ItemCommand">
        <ItemTemplate>
            <div class="row productList" style="width: 100%">

                <table class="grd">
                    <tr>
                        <td>
                            <img alt="No Image" width="150px" height="100px" src='<%#Eval("ProductLogoPath")%>' />

                        </td>
                        <td>
                            <h4><%#Eval("ProductName")%></h4>
                            <h6><%#Eval("Rate")%></h6>


                        </td>
                    </tr>
                    <tr>
                        <td align="right" >Quantity</td>
                        <td>
                            <asp:TextBox ID="txtQty" Width="150px" ToolTip="Enter Quantity" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                                ControlToValidate="txtQty" runat="server"
                                ErrorMessage="Only Numbers allowed" ForeColor="Red"
                                ValidationExpression="\d+">
                            </asp:RegularExpressionValidator>
                        </td>

                    </tr>
                    <tr>

                        <td colspan="2" align="right">

                            <asp:Button ID="btnAddtoCart" Width="150px" runat="server" CssClass="form-control btn" Text="Add To Cart" />
                            <asp:HiddenField ID="hdnProductId" runat="server" Value='<%#Eval("ProductId") %>' />
                            <asp:HiddenField ID="hdnRate" runat="server" Value='<%#Eval("Rate") %>' />
                            <asp:HiddenField ID="hdnProductName" runat="server" Value='<%#Eval("ProductName") %>' />

                            

                        </td>
                    </tr>
                </table>


            </div>
        </ItemTemplate>


    </asp:DataList>
</asp:Content>
