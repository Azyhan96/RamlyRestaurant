<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CustomerSearchBox.ascx.cs" Inherits="RamlyRestaurant.WebUserControl.CustomerSearchBox" %>
<div>
    Search menu
    <asp:TextBox ID="TextBoxCustomerSearch" runat="server"></asp:TextBox>
    <asp:Button ID="ButtonCustomerSearch" runat="server" OnClick="ButtonCustomerSearch_Click" Text="Search" />
</div>

