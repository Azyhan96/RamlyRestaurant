<%@ Page Title="" Language="C#" MasterPageFile="~/Guest.Master" AutoEventWireup="true" CodeBehind="Catalog.aspx.cs" Inherits="RamlyRestaurant.Catalog" %>

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
                <h1 align="center">Ramly Menu</h1>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                    ConnectionString="<%$ ConnectionStrings:ConnStringStoreDB %>"
                    SelectCommand="SELECT * FROM [Product] WHERE ([cat_id] = @cat_id)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="cat_id" QueryStringField="cat_id" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
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
