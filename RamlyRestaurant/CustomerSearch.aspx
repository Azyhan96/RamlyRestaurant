<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="CustomerSearch.aspx.cs" Inherits="RamlyRestaurant.CustomerSearch" %>

<%@ Register Src="WebUserControl/CustomerCatalog1.ascx" TagName="CustomerCatalog1" TagPrefix="uc1" %>
<%@ Register Src="~/WebUserControl/CustomerSearchBox.ascx" TagPrefix="uc1" TagName="CustomerSearchBox" %>
<%@ Register Src="~/WebUserControl/CustomerCategoriesList.ascx" TagPrefix="uc1" TagName="CustomerCategoriesList" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:ConnStringStoreDB %>"
            SelectCommand="SELECT * FROM [Product] WHERE ([prod_name] LIKE '%' + @prod_name + '%')">
            <SelectParameters>
                <asp:QueryStringParameter Name="prod_name" QueryStringField="search" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    <br />
    <div align="center">
        <uc1:CustomerSearchBox runat="server" ID="CustomerSearchBox" />
    </div>
    <br />
    <div align="center">
        <uc1:CustomerCategoriesList runat="server" ID="CustomerCategoriesList" />
    </div>
    <br />
    <div align="center">
        <uc1:CustomerCatalog1 ID="CustomerCatalog11" runat="server" />
    </div>
    <br />
</asp:Content>
