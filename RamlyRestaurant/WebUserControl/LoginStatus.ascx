<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LoginStatus.ascx.cs" Inherits="RamlyRestaurant.WebUserControl.LoginStatus" %>

<asp:Label ID="LabelLoginStatus" runat="server"></asp:Label>
<div>
    <asp:Button ID="ButtonLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />
</div>
