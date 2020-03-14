<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="CustomerFeedback.aspx.cs" Inherits="RamlyRestaurant.CustomerFeedback" %>
<%@ Register src="WebUserControl/Feedback.ascx" tagname="Feedback" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:Feedback ID="Feedback1" runat="server" />
</asp:Content>
