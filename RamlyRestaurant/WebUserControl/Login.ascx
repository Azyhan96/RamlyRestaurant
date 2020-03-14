<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Login.ascx.cs" Inherits="RamlyRestaurant.WebUserControl.Login" %>
<h4 align="center">LOGIN ACCOUNT</h4>
<table height="130px" align="center" style="border: thin double #000000">
    <tr>
        <td>Username</td>
        <td>&nbsp;&nbsp;<asp:TextBox ID="TextBoxUsernameLogin" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="rfvUsernameLogin" runat="server" ControlToValidate="TextBoxUsernameLogin" Display="Dynamic" ErrorMessage="*Enter Username" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Password</td>
        <td>&nbsp;&nbsp;<asp:TextBox ID="TextBoxPasswordLogin" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="rfvPasswordLogin" runat="server" ControlToValidate="TextBoxPasswordLogin" Display="Dynamic" ErrorMessage="*Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td></td>
        <td>&nbsp; &nbsp;<asp:Button ID="ButtonLogin" runat="server" OnClick="ButtonLogin_Click" Text="Login" />
            <asp:Button ID="ButtonClear" runat="server" Text="Clear" OnClick="ButtonClear_Click" />
        </td>
    </tr>
</table>
<br />
<div align="center">
    <asp:Label ID="LabelStatus" runat="server" Text=""></asp:Label>
</div>
