<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AddToCart.ascx.cs" Inherits="RamlyRestaurant.AddToCart1" %>
<div align="center">
You have 
<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
&nbsp;in your cart&nbsp;
<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/CustomerMenu.aspx">Continue Shopping</asp:HyperLink>
<br />
<br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="378px" OnRowDeleting="GridView1_RowDeleting" ShowFooter="True" Width="779px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
    <Columns>
        <asp:BoundField DataField="sno" HeaderText="S.No">
            <ItemStyle HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="prod_id" HeaderText="Product ID">
            <ItemStyle HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:ImageField DataImageUrlField="prod_image" HeaderText="Image" DataImageUrlFormatString="~\images\Menu\{0}">
            <ControlStyle Height="90px" />
            <ItemStyle HorizontalAlign="Center" />
        </asp:ImageField>
        <asp:BoundField DataField="prod_name" HeaderText="Product Name">
            <ItemStyle HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="prod_price" HeaderText="Price">
            <ItemStyle HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="quantity" HeaderText="Quantity">
            <ItemStyle HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="totalprice" HeaderText="Total Price" FooterStyle-HorizontalAlign="Center">
<FooterStyle HorizontalAlign="Center"></FooterStyle>

            <ItemStyle HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:CommandField DeleteText="Remove" ShowDeleteButton="True" />
        <asp:CommandField SelectText="Modify" ShowSelectButton="True" />
    </Columns>
    <HeaderStyle Height="50px" />
</asp:GridView>
<p class="auto-style1">
    <asp:Button ID="ButtonCheckout" runat="server" Height="32px" Text="Checkout" Width="93px" OnClick="ButtonCheckout_Click1" />
</p>
</div>
