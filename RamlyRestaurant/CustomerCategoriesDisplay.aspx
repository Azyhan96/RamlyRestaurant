<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="CustomerCategoriesDisplay.aspx.cs" Inherits="RamlyRestaurant.CustomerCategoriesDisplay" %>

<%@ Register Src="~/WebUserControl/CustomerCatalog1.ascx" TagPrefix="uc1" TagName="CustomerCatalog1" %>
<%@ Register Src="~/WebUserControl/CustomerSearchBox.ascx" TagPrefix="uc1" TagName="CustomerSearchBox" %>
<%@ Register Src="~/WebUserControl/CustomerCategoriesList.ascx" TagPrefix="uc1" TagName="CustomerCategoriesList" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div align="center">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:ConnStringStoreDB %>"
            SelectCommand="SELECT * FROM [Product] WHERE ([cat_id] = @cat_id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="cat_id" QueryStringField="cat_id" Type="Int32" />
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
    <uc1:CustomerCatalog1 runat="server" ID="CustomerCatalog1" />
</asp:Content>
