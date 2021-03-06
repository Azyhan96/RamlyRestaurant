﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CategoriesList.ascx.cs" Inherits="RamlyRestaurant.WebUserControl.CategoriesList" %>
<asp:SqlDataSource ID="SqlDataSource1" runat="server"
    ConnectionString="<%$ ConnectionStrings:ConnStringStoreDB %>"
    SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
<asp:DataList ID="DataList1" runat="server"
    DataKeyField="cat_id" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal">
    <ItemTemplate>
        <asp:HyperLink ID="HyperLink1" Text='<%# Eval("cat_name") %>' runat="server" NavigateUrl='<%# "~/Catalog.aspx?cat_id=" + Eval("cat_id") %>'></asp:HyperLink>
        <br />
    </ItemTemplate>
</asp:DataList>

