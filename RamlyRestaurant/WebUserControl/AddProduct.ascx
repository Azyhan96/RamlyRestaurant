<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AddProduct.ascx.cs" Inherits="RamlyRestaurant.AddProduct" %>
<table align="center">
    <tr>
        <td align="center">Category ID</td>
        <td>
            <asp:TextBox ID="TextBoxAdminCategory" runat="server" Width="145px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="center">Product Name</td>
        <td>
            <asp:TextBox ID="TextBoxAdminProductName" runat="server" Width="145px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="center">Product Price</td>
        <td>
            <asp:TextBox ID="TextBoxAdminProductPrice" runat="server" Width="145px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="center">Product Description</td>
        <td>
            <asp:TextBox ID="TextBoxAdminProductDescription" runat="server" Height="69px" TextMode="MultiLine" Width="178px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="center">Product Promotion</td>
        <td>
            <asp:CheckBox ID="chkItemPromotion" runat="server" Text=" " />
        </td>
    </tr>
    <tr>
        <td align="center">Image Filename</td>
        <td>
            <asp:TextBox ID="TextBoxAdminImage" runat="server" Width="145px"></asp:TextBox>
        </td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
    </tr>
    <tr>
        <td>
            <asp:Button ID="ButtonUpload" runat="server" Text="Upload" OnClick="ButtonUpload_Click" />
            <asp:Label ID="lblStatus" runat="server" Text=" "></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Image ID="Image1" runat="server" Height="115px" Width="134px" />
        </td>
    </tr>
</table>
