<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PlaceOrder.ascx.cs" Inherits="RamlyRestaurant.WebUserControl.PlaceOrder" %>
<style type="text/css">
    .auto-style1 {
        text-align: left;
    }
</style>
<div align="center">
    <table style="border: thin double #000000">
        <tr>
            <td>Order ID</td>
            <td>&nbsp;&nbsp;<asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Order Date</td>
            <td>&nbsp;&nbsp;<asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <br />
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="197px" ShowFooter="True" Width="603px">
            <Columns>
                <asp:BoundField DataField="sno" HeaderText="Serial No">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="prod_id" HeaderText="Product ID">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="prod_name" HeaderText="Product Name">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:ImageField DataImageUrlField="prod_image" DataImageUrlFormatString="~\images\Menu\{0}" HeaderText="Image">
                    <ControlStyle Height="90px" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:ImageField>
                <asp:BoundField DataField="prod_price" HeaderText="Price" DataFormatString="RM {0:n2}">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="quantity" HeaderText="Quantity">
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="totalprice" HeaderText="Total Price" DataFormatString="RM {0:n2}">
                    <FooterStyle HorizontalAlign="Center"></FooterStyle>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            </Columns>
        </asp:GridView>
    </div>
    <br />
    <div align="center">
        <b>Customer details</b>
    </div>
    <br />
    <table style="border: thin double #000000">
        <tr>
            <td>Name</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Address</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Width="207px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Email</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox2" runat="server" Width="143px"></asp:TextBox>
            </td>
        </tr>
    </table>
    <br />
    <div align="center">
        <b>Select payment method</b>
    </div>
    <br />
    <div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Cash on delivery" />
        <asp:Button ID="Button2" runat="server" Text="Paypal" OnClick="Button2_Click" />
    </div>
    <br />
</div>


