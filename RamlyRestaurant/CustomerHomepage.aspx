<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="CustomerHomepage.aspx.cs" Inherits="RamlyRestaurant.CustomerHomepage" %>


<%@ Register Src="~/WebUserControl/CustomerSearchBox.ascx" TagPrefix="uc1" TagName="CustomerSearchBox" %>
<%@ Register Src="~/WebUserControl/CustomerCategoriesList.ascx" TagPrefix="uc1" TagName="CustomerCategoriesList" %>
<%@ Register Src="~/WebUserControl/CustomerCatalog1.ascx" TagPrefix="uc1" TagName="CustomerCatalog1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 align="center">Pastikan Ramly Baru Beli</h1>
    <div align="center">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:ConnStringStoreDB %>"
            SelectCommand="SELECT * FROM [Product] WHERE ([prod_promotion] = @prod_promotion)">
            <SelectParameters>
                <asp:Parameter DefaultValue="True" Name="prod_promotion" Type="Boolean" />
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
        <uc1:CustomerCatalog1 runat="server" ID="CustomerCatalog1" />
    </div>
</asp:Content>
