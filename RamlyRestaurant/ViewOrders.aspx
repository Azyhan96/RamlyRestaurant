<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ViewOrders.aspx.cs" Inherits="RamlyRestaurant.ViewOrders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%;">
        <tr>
            <td rowspan="3">&nbsp;</td>
            <td align="center"><b>Orders</b></td>
            <td rowspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                <div align="center">
                    <table>
                        <tr>
                            <td>Order Id</td>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="orderid" DataValueField="orderid">
                                </asp:DropDownList>
                                <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click" />
                            </td>
                        </tr>
                    </table>
                </div>
                <br />
                <div align="center">
                    <b>
                        <asp:Label ID="Label1" runat="server" Text="Orders Detail" Visible="False"></asp:Label>
                    </b>
                </div>
                <br />
                <div align="center">
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" Visible="False">
                        <Columns>
                            <asp:BoundField DataField="orderid" HeaderText="Order Id" SortExpression="orderid">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="sno" HeaderText="No" SortExpression="sno">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="prod_name" HeaderText="Product Name" SortExpression="prod_name">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="prod_price" HeaderText="Price" SortExpression="prod_price" DataFormatString="RM {0:n2}">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="quantity" HeaderText="Quantity" SortExpression="quantity">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="dateoforder" HeaderText="Date Order" SortExpression="dateoforder">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                        </Columns>
                    </asp:GridView>
                </div>
                <br />
                <div align="center">
                    <b>Orders list</b>
                </div>
                <br />
                <div align="center">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="orderid" HeaderText="Order id" SortExpression="orderid">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email">
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                        </Columns>
                    </asp:GridView>
                </div>
                <br />
                <div align="center">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnStringStoreDB %>" SelectCommand="SELECT * FROM [OrderAddress]"></asp:SqlDataSource>
                </div>
                <br />
                <div align="center">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnStringStoreDB %>" SelectCommand="SELECT [orderid] FROM [OrderDetails]"></asp:SqlDataSource>
                </div>
                <br />
                <div align="center">
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnStringStoreDB %>" SelectCommand="SELECT * FROM [OrderDetails] WHERE ([orderid] = @orderid)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="orderid" PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
