<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Catalog.ascx.cs" Inherits="RamlyRestaurant.WebUserControl.Catalog" %>

<div align="center">
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="prod_id" DataSourceID="SqlDataSource1" GroupItemCount="3">
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <EmptyItemTemplate>
            <td runat="server" />
        </EmptyItemTemplate>
        <GroupTemplate>
            <tr id="itemPlaceholderContainer" runat="server">
                <td id="itemPlaceholder" runat="server"></td>
            </tr>
        </GroupTemplate>
        <ItemTemplate>
            <td runat="server" style="column-width: 410px" align="center">
                <p>
                    <asp:HyperLink ID="HyperLink2" Text='<%# Eval("prod_name") %>'
                        runat="server" NavigateUrl='<%# "~/Product.aspx?prod_id=" + Eval("prod_id") %>'></asp:HyperLink>
                </p>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/images/Menu/" + Eval("prod_image") %>'
                    Height="130" />
                <br />
                <br />
                <asp:Label ID="labelDescription" runat="server" Text='<%# Eval("prod_desc") %>'></asp:Label>
                <br />
                <br />
                <asp:Label ID="labelPrice" runat="server" Text='<%# Eval("prod_price", "RM {0:n2}") %>'></asp:Label>
                <br />
                <br />
                <br />
            </td>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr id="groupPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="text-align: center; background-color: #FFCC66; font-family: Verdana, Arial, Helvetica, sans-serif; color: #333333;">
                        <asp:DataPager ID="DataPager1" runat="server" PageSize="6">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                <asp:NumericPagerField />
                                <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
    </asp:ListView>
</div>

