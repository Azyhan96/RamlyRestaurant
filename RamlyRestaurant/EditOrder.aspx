<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="EditOrder.aspx.cs" Inherits="RamlyRestaurant.EditOrder" %>

<%@ Register Src="WebUserControl/EditOrder.ascx" TagName="EditOrder" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
        <uc1:EditOrder ID="EditOrder1" runat="server" />
    </div>
</asp:Content>
