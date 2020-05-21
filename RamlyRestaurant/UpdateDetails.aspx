<%@ Page Title="" Language="C#" MasterPageFile="~/Customer.Master" AutoEventWireup="true" CodeBehind="UpdateDetails.aspx.cs" Inherits="RamlyRestaurant.UpdateDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%;">
        <tr>
            <td rowspan="3">&nbsp;</td>
            <td>
                <style type="text/css">
                    .auto-style1 {
                        text-align: center;
                    }
                </style>
            </td>
            <td rowspan="3">&nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                <div align="center"><strong>Update Details</strong></div>
                <br />
                <table align="center" style="border: thin double #000000">
                    <tr>
                        <td>Username</td>
                        <td>
                            <asp:TextBox ID="TextBoxUsername" runat="server" CssClass="auto-style8" ReadOnly="True"></asp:TextBox>
                        </td>

                    </tr>
                    <tr>
                        <td>Email</td>
                        <td>
                            <asp:TextBox ID="TextBoxEmail" runat="server" CssClass="auto-style8"></asp:TextBox>
                        </td>

                    </tr>
                    <tr>
                        <td>Phone Number</td>
                        <td>
                            <asp:TextBox ID="TextBoxPhoneNo" runat="server" CssClass="auto-style8"></asp:TextBox>
                        </td>

                    </tr>
                    <tr>
                        <td>Address</td>
                        <td>
                            <br />
                            <asp:TextBox ID="TextBoxAddress" runat="server" Height="77px" TextMode="MultiLine" CssClass="auto-style9"></asp:TextBox>
                            <br />
                        </td>

                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            <asp:Button ID="ButtonUpdate" runat="server" OnClick="ButtonUpdate_Click" Text="Update" CssClass="auto-style10" />
                        </td>

                    </tr>
                </table>
                <br />
                <div align="center">
                    <asp:Label ID="LabelStatus" runat="server"></asp:Label>
                </div>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
