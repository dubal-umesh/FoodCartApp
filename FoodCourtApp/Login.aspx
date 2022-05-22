<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FoodCourtApp.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <style type="text/css">
    .auto-style1 {
        text-align: center;
    }

    .auto-style2 {
        color: #000000;
        font-size: large;
        background-color: #FFFF66;
    }

    .auto-style3 {
        text-align: center;
        font-size: medium;
        text-decoration: underline;
    }

    .auto-style4 {
        background-color: #66FFFF;
    }

    .auto-style5 {
        width: 100%;
    }

    .auto-style6 {
            text-align: right;
            width: 534px;
        }

    .auto-style7 {
        width: 534px;
    }

    .auto-style8 {
        width: 257px;
    }

    .auto-style9 {
        font-size: small;
    }
</style>
     <div>
       
        <p class="auto-style3">
            <strong><em><span class="auto-style4">Registration Form</span></em></strong>
        </p>
         </div>
    <div class="row">
        <table id="tbllogin" class="center">
            <tr>
                <td>
                    <asp:Label CssClass="form-label" runat="server">User Name</asp:Label></td>
                <td>
                    <asp:TextBox ID="txtUserName" CssClass="form-control" runat="server"></asp:TextBox>
                </td>
                 <td><em>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatoruser" runat="server" ControlToValidate="txtUserName" ErrorMessage="Enter username" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </em></td>

            </tr>
            <tr>
                <td colspan="2">
                    <br />
                </td>
                
            </tr>
            <tr>
                <td>
                    <asp:Label CssClass="form-label" runat="server">Password</asp:Label></td>
                <td>
                    <asp:TextBox ID="txtPassword" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                 <td><em>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorpass" runat="server" ControlToValidate="txtPassword" ErrorMessage="Enter Password" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </em></td>
            </tr>
            <tr>
                <td colspan="2">
                    <br />
                </td>
                
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label CssClass="form-label" ForeColor="Red" ID="lblErrorMessage" runat="server"></asp:Label></td>
                
                
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="btnLogin" runat="server" Text="Login" BackColor="Silver" OnClick="btnLogin_Click" />
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:HyperLink ID="lnkRegister" runat="server" Text="Register" NavigateUrl="~/Register.aspx" />
                </td>
            </tr>

        </table>
    </div>

</asp:Content>
