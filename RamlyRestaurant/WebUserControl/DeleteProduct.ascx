<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DeleteProduct.ascx.cs" Inherits="RamlyRestaurant.WebUserControl.DeleteProduct" %>
<div align="center">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:ConnStringStoreDB %>"
        DeleteCommand="DELETE FROM [Product] WHERE [prod_id] = @prod_id"
        InsertCommand="INSERT INTO [Product] ([cat_id], [prod_name], [prod_price], [prod_desc], [prod_image], [prod_promotion]) VALUES (@cat_id, @prod_name, @prod_price, @prod_desc, @prod_image, @prod_promotion)"
        SelectCommand="SELECT * FROM [Product]"
        UpdateCommand="UPDATE [Product] SET [cat_id] = @cat_id, [prod_name] = @prod_name, [prod_price] = @prod_price, [prod_desc] = @prod_desc, [prod_image] = @prod_image, [prod_promotion] = @prod_promotion WHERE [prod_id] = @prod_id">
        <DeleteParameters>
            <asp:Parameter Name="prod_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="cat_id" Type="Int32" />
            <asp:Parameter Name="prod_name" Type="String" />
            <asp:Parameter Name="prod_price" Type="String" />
            <asp:Parameter Name="prod_desc" Type="String" />
            <asp:Parameter Name="prod_image" Type="String" />
            <asp:Parameter Name="prod_promotion" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="cat_id" Type="Int32" />
            <asp:Parameter Name="prod_name" Type="String" />
            <asp:Parameter Name="prod_price" Type="String" />
            <asp:Parameter Name="prod_desc" Type="String" />
            <asp:Parameter Name="prod_image" Type="String" />
            <asp:Parameter Name="prod_promotion" Type="Boolean" />
            <asp:Parameter Name="prod_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="prod_id"
        DataSourceID="SqlDataSource1" PageSize="8">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="prod_id" HeaderText="Product ID"
                InsertVisible="False" ReadOnly="True" SortExpression="prod_id" />
            <asp:BoundField DataField="cat_id" HeaderText="Category ID"
                SortExpression="cat_id" />
            <asp:BoundField DataField="prod_name" HeaderText="Product Name"
                SortExpression="prod_name" />
            <asp:BoundField DataField="prod_price" DataFormatString="RM {0:n2}"
                HeaderText="Price" SortExpression="prod_price" />
            <asp:BoundField DataField="prod_desc" HeaderText="Product Description"
                SortExpression="prod_desc">
                <ControlStyle Width="295px" />
                <ItemStyle Width="300px" />
            </asp:BoundField>
            <asp:BoundField DataField="prod_image" HeaderText="Image"
                SortExpression="prod_image" />
            <asp:CheckBoxField DataField="prod_promotion" HeaderText="Promotion"
                SortExpression="prod_promotion" />
            <asp:ImageField DataImageUrlField="prod_image"
                DataImageUrlFormatString="../images/Menu/{0}" HeaderText="Image"
                ReadOnly="True">
                <ControlStyle Width="50px" />
            </asp:ImageField>
        </Columns>
    </asp:GridView>
</div>
