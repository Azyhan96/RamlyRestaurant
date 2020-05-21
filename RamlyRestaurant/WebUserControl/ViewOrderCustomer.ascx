<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ViewOrderCustomer.ascx.cs" Inherits="RamlyRestaurant.WebUserControl.ViewOrderCustomer" %>
<div align="center">
    <b>Orders</b>
</div>
<br />
<div align="center">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="sno" HeaderText="No" SortExpression="sno">
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="orderid" HeaderText="Order Id" SortExpression="orderid">
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="customername" HeaderText="Name" SortExpression="customername">
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="prod_id" HeaderText="Product Id" SortExpression="prod_id">
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="prod_name" HeaderText="Product Name" SortExpression="prod_name">
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="prod_price" HeaderText="Product Price" SortExpression="prod_price">
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="quantity" HeaderText="Quantity" SortExpression="quantity">
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="dateoforder" HeaderText="Date" SortExpression="dateoforder">
                <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
        </Columns>
    </asp:GridView>
</div>
<br />
<div align="center">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnStringStoreDB %>" SelectCommand="SELECT * FROM [OrderDetails] WHERE ([customername] = @customername)">
        <SelectParameters>
            <asp:SessionParameter Name="customername" SessionField="cust_name" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</div>
