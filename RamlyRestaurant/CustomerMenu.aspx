<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="CustomerMenu.aspx.cs" Inherits="RamlyRestaurant.CustomerMenu" %>

<%@ Register Src="~/WebUserControl/CustomerCatalog.ascx" TagPrefix="uc1" TagName="CustomerCatalog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 align="center">Ramly Menu</h1>
    <br />
    <div align="center">
        <uc1:CustomerCatalog runat="server" ID="CustomerCatalog" />
    </div>
</asp:Content>
