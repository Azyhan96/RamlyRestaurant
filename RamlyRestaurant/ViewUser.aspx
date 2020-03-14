<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ViewUser.aspx.cs" Inherits="RamlyRestaurant.ViewUser" %>
<%@ Register src="WebUserControl/ViewUser.ascx" tagname="ViewUser" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 align="center">Register User</h1>
    <uc1:ViewUser ID="ViewUser1" runat="server" />
</asp:Content>
