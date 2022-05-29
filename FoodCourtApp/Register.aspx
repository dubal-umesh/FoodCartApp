<%@ Page Title="Register New  User" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="FoodCourtApp.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
        .auto-style6 {
            text-align: right;
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
    <div class="row">
        <table class="tblForm" width="700px">
            <tr>
                <td class="labelAlign"><span class="form-label">First Name</span> </td>
                <td class="tdControl">
                    <asp:TextBox ID="TextBoxfname" CssClass="form-control" runat="server"></asp:TextBox>
                </td>
                <td class="tdValidator">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorname" runat="server" ControlToValidate="TextBoxfname" ErrorMessage="Enter your First name" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="labelAlign"><span class="form-label">Last Name</span> </td>
                <td class="tdControl">
                    <asp:TextBox ID="TextBoxlname" CssClass="form-control" runat="server"></asp:TextBox>
                </td>
                <td class="tdValidator">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorlname" runat="server" ControlToValidate="TextBoxlname" ErrorMessage="Enter your Last name " ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="labelAlign"><span class="form-label">Mobile No</span> </td>
                <td class="tdControl">
                    <asp:TextBox ID="TextBoxmobile" CssClass="form-control" runat="server"></asp:TextBox>
                </td>
                <td class="tdValidator">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxmobile" ErrorMessage="Enter Mobile number" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    <br /><asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBoxmobile" ErrorMessage="Enter valid Mobile no" ForeColor="#FF3300" ValidationExpression="^(\+91[\-\s]?)?[0]?(91)?[789]\d{9}$"></asp:RegularExpressionValidator>
                </td>
            </tr>

            <tr>
                <td class="labelAlign"><span class="form-label">Address</span> </td>
                <td class="tdControl">
                    <asp:TextBox ID="TextBoxadd" CssClass="form-control" runat="server"></asp:TextBox>
                </td>
                <td class="tdValidator">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxadd" ErrorMessage="Enter your Address" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="labelAlign"><span class="form-label">City</span> </td>
                <td class="tdControl">
                    <asp:TextBox ID="TextBoxcity" CssClass="form-control" runat="server"></asp:TextBox>
                </td>
                <td class="tdValidator">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxcity" ErrorMessage="Enter your City name" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="labelAlign"><span class="form-label">Pincode</span> </td>
                <td class="tdControl">
                    <asp:TextBox ID="TextBoxpin" CssClass="form-control" runat="server"></asp:TextBox>
                </td>
                <td class="tdValidator">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxpin" ErrorMessage="Enter Pin code" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    <br/><asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBoxpin" ErrorMessage="Enter valid Pin-code" ForeColor="#FF3300" ValidationExpression="^[1-9][0-9]{5}$"></asp:RegularExpressionValidator>
                    
                </td>
            </tr>
            <tr>
                <td class="labelAlign"><span class="form-label">Email</span> </td>
                <td class="tdControl">
                    <asp:TextBox ID="TextBoxemail" CssClass="form-control" runat="server"></asp:TextBox>
                </td>
                <td class="tdValidator">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxemail" ErrorMessage="Enter Email" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    &nbsp;<em><asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBoxemail" ErrorMessage="Enter valid email id" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="labelAlign"><span class="form-label">UserName</span> </td>
                <td class="tdControl">
                    <asp:TextBox ID="TextBoxUserName" CssClass="form-control" runat="server"></asp:TextBox>
                </td>
                <td class="tdValidator">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBoxpin" ErrorMessage="Enter Pin code" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    <br /><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxpin" ErrorMessage="Enter valid Pin-code" ForeColor="#FF3300" ValidationExpression="^[1-9][0-9]{5}$"></asp:RegularExpressionValidator>
                    
                </td>
            </tr>
              
            <tr>
                <td class="labelAlign"><span class="form-label">Password</span> </td>
                <td class="tdControl">
                    <asp:TextBox ID="TextBoxpass" CssClass="form-control" runat="server"></asp:TextBox>
                </td>
                <td class="tdValidator">
                   
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxpass" ErrorMessage="Enter password" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxpass" ErrorMessage="Enter valid password" ForeColor="Red" ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$"></asp:RegularExpressionValidator>
                </td>
            </tr>

            <tr>
                <td class="labelAlign"><span class="form-label">Confirm Password</span> </td>
                <td class="tdControl">
                    <asp:TextBox ID="TextBoxcpass" CssClass="form-control" runat="server"></asp:TextBox>
                </td>
                <td class="tdValidator">
                   
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBoxcpass" ErrorMessage="Retype password" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                <br /><asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="TextBoxpass" ControlToValidate="TextBoxcpass" ErrorMessage="Password not match" ForeColor="#FF3300"></asp:CompareValidator>
                
                </td>
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
