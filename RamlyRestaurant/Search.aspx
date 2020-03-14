<%@ Page Title="" Language="C#" MasterPageFile="~/Guest.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="RamlyRestaurant.Search" %>

<%@ Register Src="WebUserControl/Catalog.ascx" TagName="Catalog" TagPrefix="uc1" %>
<%@ Register Src="~/WebUserControl/CategoriesList.ascx" TagPrefix="uc1" TagName="CategoriesList" %>
<%@ Register Src="~/WebUserControl/SearchBox.ascx" TagPrefix="uc1" TagName="SearchBox" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%;">
        <tr>
            <td rowspan="3">&nbsp;</td>
            <td>&nbsp;</td>
            <td rowspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                    ConnectionString="<%$ ConnectionStrings:ConnStringStoreDB %>"
                    SelectCommand="SELECT * FROM [Product] WHERE ([prod_name] LIKE '%' + @prod_name + '%')">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="prod_name" QueryStringField="search" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <uc1:CategoriesList runat="server" ID="CategoriesList" />
                <br />
                <uc1:SearchBox runat="server" ID="SearchBox" />
                <br />
                <uc1:Catalog ID="Catalog1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
