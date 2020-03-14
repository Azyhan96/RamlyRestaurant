<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="DeleteProduct.aspx.cs" Inherits="RamlyRestaurant.DeleteProduct" %>
<%@ Register src="WebUserControl/DeleteProduct.ascx" tagname="DeleteProduct" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 align="center">Delete Product</h1>
    <uc1:DeleteProduct ID="DeleteProduct1" runat="server" />
</asp:Content>
