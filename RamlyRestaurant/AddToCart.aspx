﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="AddToCart.aspx.cs" Inherits="RamlyRestaurant.AddToCart" %>

<%@ Register src="WebUserControl/AddToCart.ascx" tagname="AddToCart" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:AddToCart ID="AddToCart1" runat="server" />
</asp:Content>
