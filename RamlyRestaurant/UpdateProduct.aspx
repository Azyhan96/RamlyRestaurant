<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UpdateProduct.aspx.cs" Inherits="RamlyRestaurant.UpdateProduct1" %>
<%@ Register src="WebUserControl/UpdateProduct.ascx" tagname="UpdateProduct" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 align="center">Update Product</h1>
    <uc1:UpdateProduct ID="UpdateProduct2" runat="server" />
</asp:Content>
