<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="CustomerProduct.aspx.cs" Inherits="RamlyRestaurant.CustomerProduct" %>

<%@ Register Src="WebUserControl/CustomerProductDetails.ascx" TagName="CustomerProductDetails" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
        <uc1:CustomerProductDetails ID="CustomerProductDetails1" runat="server" />
    </div>
</asp:Content>
