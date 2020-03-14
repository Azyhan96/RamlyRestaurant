<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="CustomerAbout.aspx.cs" Inherits="RamlyRestaurant.CustomerAbout" %>
<%@ Register src="WebUserControl/About.ascx" tagname="About" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:About ID="About1" runat="server" />
</asp:Content>
