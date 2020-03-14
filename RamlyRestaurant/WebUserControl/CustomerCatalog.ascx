<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CustomerCatalog.ascx.cs" Inherits="RamlyRestaurant.WebUserControl.CustomerCatalog" %>
<div align="center">
    Product in your cart is&nbsp;<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    &nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/AddToCart.aspx">Show Cart</asp:HyperLink>
    &nbsp;<br />
    <br />
    &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnStringStoreDB %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
    <br />
    <asp:DataList ID="DataList1" runat="server" DataKeyField="prod_id" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand">
        <ItemTemplate>
            <table class="auto-style2">
                <tr>
                    <td>
                        <div align="center">
                            <asp:Label ID="Label2" runat="server" Text="Product ID"></asp:Label>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("prod_id") %>'></asp:Label>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div align="center">
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("prod_name") %>'></asp:Label>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div align="center">
                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# "~/images/Menu/" + Eval("prod_image") %>' Height="110px" Width="130px" />
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div align="center">
                            RM
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("prod_price") %>'></asp:Label>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div align="center">
                            Quantity
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div align="center">
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="32px" ImageUrl="~/addcart.png" Width="89px" CommandArgument='<%# Eval("prod_id")%>' CommandName="addtocart" />
                        </div>
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
</div>
