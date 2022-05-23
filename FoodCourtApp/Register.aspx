<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="FoodCourtApp.Register" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
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
        <table class="auto-style5">
            <tr>
                <td class="auto-style6"><strong><em>First Name:</em></strong></td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBoxfname" runat="server" BorderColor="Black" BorderWidth="2px"></asp:TextBox>
                </td>
                <td><em>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorname" runat="server" ControlToValidate="TextBoxfname" ErrorMessage="Enter your First name" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </em></td>
            </tr>
            <tr>
                <td class="auto-style6"><strong><em>Last Name:</em></strong></td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBoxlname" runat="server" BorderColor="Black" BorderWidth="2px"></asp:TextBox>
                </td>
                <td><em>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorlname" runat="server" ControlToValidate="TextBoxlname" ErrorMessage="Enter your Last name " ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </em></td>
            </tr>
            <tr>
                <td class="auto-style6"><strong><em>Mobile No:</em></strong></td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBoxmobile" runat="server" BorderColor="Black" BorderWidth="2px"></asp:TextBox>
                </td>
                <td><em>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatormob" runat="server" ControlToValidate="TextBoxmobile" ErrorMessage="Enter Mobile number" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </em>&nbsp;<em><asp:RegularExpressionValidator ID="RegularExpressionValidatormob" runat="server" ControlToValidate="TextBoxmobile" ErrorMessage="Enter valid Mobile no" ForeColor="#FF3300" ValidationExpression="^(\+91[\-\s]?)?[0]?(91)?[789]\d{9}$"></asp:RegularExpressionValidator>
                </em></td>
            </tr>
           
            <tr>
                <td class="auto-style6"><strong><em>Address:</em></strong></td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBoxadd" runat="server" BorderColor="Black" BorderWidth="2px"></asp:TextBox>
                </td>
                <td><em>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatoradd" runat="server" ControlToValidate="TextBoxadd" ErrorMessage="Enter your Address" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </em></td>
            </tr>
            <tr>
                <td class="auto-style6"><strong><em>City:</em></strong></td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBoxcity" runat="server" BorderColor="Black" BorderWidth="2px"></asp:TextBox>
                </td>
                <td><em>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxcity" ErrorMessage="Enter your City name" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </em></td>
            </tr>
            <tr>
                <td class="auto-style6"><strong><em>Pincode:</em></strong></td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBoxpin" runat="server" BorderColor="Black" BorderWidth="2px"></asp:TextBox>
                </td>
                <td><em>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorpin" runat="server" ControlToValidate="TextBoxpin" ErrorMessage="Enter Pin code" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </em>&nbsp;<em><asp:RegularExpressionValidator ID="RegularExpressionValidatorpin" runat="server" ControlToValidate="TextBoxpin" ErrorMessage="Enter valid Pin-code" ForeColor="#FF3300" ValidationExpression="^[1-9][0-9]{5}$"></asp:RegularExpressionValidator>
                </em></td>
            </tr>
            <tr>
                <td class="auto-style6"><strong><em>Email:</em></strong></td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBoxemail" runat="server" BorderColor="Black" BorderWidth="2px"></asp:TextBox>
                </td>
                <td><em>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatoremail" runat="server" ControlToValidate="TextBoxemail" ErrorMessage="Enter Email" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </em>&nbsp;<em><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxemail" ErrorMessage="Enter valid email id" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </em></td>
            </tr>
             <tr>
                <td class="auto-style6"><strong><em>UserName:</em></strong></td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBoxUserName" runat="server" BorderColor="Black" BorderWidth="2px"></asp:TextBox>
                </td>
                <td><em>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxpin" ErrorMessage="Enter Pin code" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </em>&nbsp;<em><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxpin" ErrorMessage="Enter valid Pin-code" ForeColor="#FF3300" ValidationExpression="^[1-9][0-9]{5}$"></asp:RegularExpressionValidator>
                </em></td>
            </tr>
            <tr>
                <td class="auto-style6"><strong><em>Password:</em></strong></td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBoxpass" runat="server" BorderColor="Black" BorderWidth="2px" TextMode="Password"></asp:TextBox>
                </td>
                <td><em>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorpass" runat="server" ControlToValidate="TextBoxpass" ErrorMessage="Enter password" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </em>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorpass" runat="server" ControlToValidate="TextBoxpass" ErrorMessage="Enter valid password" ForeColor="Red" ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6"><strong><em>Confirm Password:</em></strong></td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBoxcpass" runat="server" BorderColor="Black" BorderWidth="2px" TextMode="Password"></asp:TextBox>
                </td>
                <td><em>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorcpass" runat="server" ControlToValidate="TextBoxcpass" ErrorMessage="Retype password" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </em>&nbsp;<em><asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxpass" ControlToValidate="TextBoxcpass" ErrorMessage="Password not match" ForeColor="#FF3300"></asp:CompareValidator>
                </em></td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <br />
                    <br />
                </td>
                <td class="auto-style8">
                    <asp:Label ID="Lblreg" runat="server" Text="Label"></asp:Label>
                    <em>
                    <br />
                    <asp:Button ID="Buttonreg" runat="server" BackColor="Silver" OnClick="Buttonreg_Click" Text="Register" />
                </em>
                    <span class="auto-style9">
                        <br />
                        Already register please </span>&nbsp;<asp:HyperLink ID="HyperLinklogin" runat="server" NavigateUrl="~/login.aspx">Login Here</asp:HyperLink>
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>
