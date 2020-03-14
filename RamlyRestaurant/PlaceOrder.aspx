<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="PlaceOrder.aspx.cs" Inherits="RamlyRestaurant.PlaceOrder" %>
<%@ Register src="WebUserControl/PlaceOrder.ascx" tagname="PlaceOrder" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:PlaceOrder ID="PlaceOrder1" runat="server" />
</asp:Content>
