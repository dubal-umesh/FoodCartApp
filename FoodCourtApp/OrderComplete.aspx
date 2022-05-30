<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OrderComplete.aspx.cs" Inherits="FoodCourtApp.OrderComplete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="width:100%;text-align:center" runat="server" id="divSuccess">
        <h1><span id="spnOrderNo" runat="server"></span> has been placed Successfully.</h1>
    </div>
    <div style="width:100%;text-align:center" runat="server" id="divError">
        <h1><span id="spanErrorMessage" style="color:red" runat="server" visible="false"></span></h1>
    </div>
</asp:Content>
