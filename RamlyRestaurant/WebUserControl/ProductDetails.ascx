<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ProductDetails.ascx.cs" Inherits="RamlyRestaurant.WebUserControl.ProductDetails" %>
<div align="center">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:ConnStringStoreDB %>"
        SelectCommand="SELECT * FROM [Product] WHERE ([prod_id] = @prod_id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="prod_id" QueryStringField="prod_id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:DataList ID="DataList1" runat="server" DataKeyField="prod_id"
        DataSourceID="SqlDataSource1">
        <ItemTemplate>
            Product ID:
        <asp:Label ID="Labelprod_id" runat="server" Text='<%# Eval("prod_id") %>' />
            <br />
            Name:
        <asp:Label ID="Labelprod_name" runat="server" Text='<%# Eval("prod_name") %>' />
            <br />
            Price:
        <asp:Label ID="Labelprod_price" runat="server" Text='<%# Eval("prod_price", "RM {0:n2}") %>' />
            <br />
            Description:
        <asp:Label ID="Labelprod_desc" runat="server" Text='<%# Eval("prod_desc") %>' />
            <br />
            <br />
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/images/Menu/" + Eval("prod_image") %>'
                Height="200" BorderWidth="1px" />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
</div>
