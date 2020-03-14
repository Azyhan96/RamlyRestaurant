<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CustomerProductDetails.ascx.cs" Inherits="RamlyRestaurant.WebUserControl.CustomerProductDetails" %>
<div align="center">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:ConnStringStoreDB %>"
        SelectCommand="SELECT * FROM [Product] WHERE ([prod_id] = @prod_id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="prod_id" QueryStringField="prod_id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="prod_id" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <div align="center">
                <asp:Image ID="Image1" runat="server" Height="200" ImageUrl='<%# "~/images/Menu/" + Eval("prod_image") %>' />
            </div>
            <br />
            <div align="center">
                Product ID:
        <asp:Label ID="Labelprod_id" runat="server" Text='<%# Eval("prod_id") %>' />
            </div>
            <br />
            <div align="center">
                Name:
        <asp:Label ID="Labelprod_name" runat="server" Text='<%# Eval("prod_name") %>' />
            </div>
            <br />
            <div align="center">
                Price:
        <asp:Label ID="Labelprod_price" runat="server" Text='<%# Eval("prod_price", "RM {0:n2}") %>' />
            </div>
            <br />
            <div align="center">
                Description:
        <asp:Label ID="Labelprod_desc" runat="server" Text='<%# Eval("prod_desc") %>' />
            </div>
            <br />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
</div>
