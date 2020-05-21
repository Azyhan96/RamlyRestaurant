<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="placedsuccessfully.aspx.cs" Inherits="RamlyRestaurant.placedsuccessfully" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 100%;
        }

        .auto-style4 {
            height: 57px;
        }

        .auto-style5 {
            height: 57px;
            width: 407px;
        }

        .auto-style6 {
            height: 54px;
        }

        .auto-style7 {
            margin-top: 0px;
        }

        .auto-style8 {
            text-align: center;
            height: 25px;
        }

        .auto-style10 {
            height: 5px;
        }

        .auto-style11 {
            height: 63px;
        }
    </style>
</head>
<body>
    <meta http-equiv="refresh" content="6; url=CustomerHomepage.aspx"/>
    <form id="form1" runat="server">
        <div align="center">
            Order ID:
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Panel ID="Panel1" runat="server" Height="470px" Width="829px">
                <table class="auto-style2" border="1">
                    <tr>
                        <td class="auto-style8">Retail Invoice</td>
                    </tr>
                    <tr>
                        <td class="auto-style11">Order No&nbsp; :
                            <asp:Label ID="Label3" runat="server"></asp:Label>
                            <br />
                            <br />
                            Order Date:
                            <asp:Label ID="Label4" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <table class="auto-style2">
                                <tr>
                                    <td class="auto-style5">Buyer Address:<br />
                                        <asp:Label ID="Label5" runat="server"></asp:Label>
                                    </td>
                                    <td class="auto-style4">Seller Address:<br />
                                        <asp:Label ID="Label6" runat="server">Ramly Burger Malaysia</asp:Label>
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style6">
                            <br />
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style7" Width="808px">
                                <Columns>
                                    <asp:BoundField DataField="sno" HeaderText="Serial Number">
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="prod_id" HeaderText="Product ID">
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="prod_name" HeaderText="Product Name">
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="quantity" HeaderText="Quantity">
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="prod_price" HeaderText="Price" DataFormatString="RM {0:n2}">
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="totalprice" HeaderText="Total Price" DataFormatString="RM {0:n2}">
                                        <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                </Columns>
                            </asp:GridView>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>Grand Total:
                            <asp:Label ID="Label7" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style10">Declaration: We declare that this invoice shows actual price of the goods described inclusive of taxes and that all particulars<br />
                            are and correct.<br />
                            &nbsp;&nbsp;</td>
                    </tr>
                </table>
            </asp:Panel>
        </div>
        <br />
        <div align="center">
            <asp:Button ID="Button1" runat="server" Height="50px" Text="Download Invoice" Width="156px" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
