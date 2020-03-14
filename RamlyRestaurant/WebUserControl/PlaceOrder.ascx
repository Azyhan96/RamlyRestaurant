<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PlaceOrder.ascx.cs" Inherits="RamlyRestaurant.WebUserControl.PlaceOrder" %>
<style type="text/css">
    .auto-style1 {
        text-align: left;
    }
</style>
<div align="center">
    <table>
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
                <asp:BoundField DataField="sno" HeaderText="Serial No" />
                <asp:BoundField DataField="prod_id" HeaderText="Product ID" />
                <asp:BoundField DataField="prod_name" HeaderText="Product Name" />
                <asp:ImageField DataImageUrlField="prod_image" DataImageUrlFormatString="~\images\Menu\{0}" HeaderText="Image">
                    <ControlStyle Height="90px" />
                </asp:ImageField>
                <asp:BoundField DataField="prod_price" HeaderText="Price" />
                <asp:BoundField DataField="quantity" HeaderText="Quantity" />
                <asp:BoundField DataField="totalprice" HeaderText="Total Price" />
            </Columns>
        </asp:GridView>
    </div>
    <br />
    <table>
        <tr>
            <td>Enter Address</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="78px" TextMode="MultiLine" Width="207px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Phone Number</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox2" runat="server" Width="143px"></asp:TextBox>
            </td>
        </tr>
    </table>
    <br />
    <div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Place Order" />
    </div>
    <br />
</div>


