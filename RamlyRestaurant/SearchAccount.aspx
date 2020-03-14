<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="SearchAccount.aspx.cs" Inherits="RamlyRestaurant.SearchAccount" %>

<%@ Register Src="~/WebUserControl/SearchAccount.ascx" TagPrefix="uc1" TagName="SearchAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 align="center">Search Account</h1>
    <uc1:SearchAccount runat="server" id="SearchAccount2" />
</asp:Content>
