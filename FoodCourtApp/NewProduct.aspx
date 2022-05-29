<%@ Page Title="New Product" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewProduct.aspx.cs" Inherits="FoodCourtApp.NewProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <table class="tblForm" width="700px">
            <tr>
                <td class="labelAlign"><span class="form-label">Product Name</span> </td>
                <td class="tdControl">
                    <asp:TextBox ID="txtProductName" CssClass="form-control" runat="server"></asp:TextBox>
                </td>
                <td class="tdValidator">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorname" runat="server" ControlToValidate="txtProductName" ErrorMessage="Enter Product Name" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="labelAlign"><span class="form-label">Product Logo</span> </td>
                <td class="tdControl">
                    <asp:FileUpload ID="FileUploadControl" CssClass="form-control" runat="server"></asp:FileUpload>
                    <asp:Button runat="server" ID="UploadButton" Text="Upload" OnClick="UploadButton_Click" />
                    <br />
                    <br />
                    <asp:Label runat="server" ID="StatusLabel" Text="Upload status: " />
                    <asp:HiddenField ID="hdnProductLogo" runat="server" />
                    <asp:Image ID="imgProductLogo" runat="server" Width="50px" Height="50px" />
                </td>
                <td class="tdValidator">
                    <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtProductName" ErrorMessage="Enter Product Name" ForeColor="#FF3300"></asp:RequiredFieldValidator>--%>
                </td>
            </tr>

            <tr>
                <td class="labelAlign"><span class="form-label">Product Description</span> </td>
                <td class="tdControl">
                    <asp:TextBox ID="txtProdDescription" CssClass="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td class="tdValidator">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorlname" runat="server" ControlToValidate="txtProdDescription" ErrorMessage="Enter Product Description." ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="labelAlign"><span class="form-label">Rate</span> </td>
                <td class="tdControl">
                    <asp:TextBox ID="txtRate" CssClass="form-control" runat="server"></asp:TextBox>
                </td>
                <td class="tdValidator">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtRate" ErrorMessage="Enter Product Rate" ForeColor="#FF3300"></asp:RequiredFieldValidator>

                </td>
            </tr>


            <tr>
                <td class="labelAlign"></td>
                <td class="tdControl">
                    <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click"></asp:Button>
                </td>
                <td class="tdValidator">
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click"></asp:Button>

                </td>
            </tr>
            <tr>
                <td colspan="3" style="text-align: center">
                    <asp:Label ID="lblMessage" ForeColor="Red" Visible="false" runat="server"></asp:Label>

                </td>
            </tr>


        </table>
    </div>
</asp:Content>
