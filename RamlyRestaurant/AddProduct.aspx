<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="RamlyRestaurant.AddProduct1" %>

<%@ Register Src="~/WebUserControl/AddProduct.ascx" TagPrefix="uc1" TagName="AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 align="center">Add Product</h1>
    <div align="center">
        <uc1:AddProduct runat="server" ID="AddProduct" />
    </div>
</asp:Content> 
