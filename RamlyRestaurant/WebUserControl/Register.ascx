<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Register.ascx.cs" Inherits="RamlyRestaurant.WebUserControl.Register" %>

<div align="center">
    <h4 align="center">Register Account</h4>
    <table align="center" height="480" width="580px" style="border: thin double #000000">
        <tr>
            <td>Name</td>
            <td>&nbsp;&nbsp;<asp:TextBox ID="TextBoxNameReg" runat="server"></asp:TextBox>
            <td>
                <asp:RequiredFieldValidator ID="rfvNameReg" runat="server" ErrorMessage="*Enter Name" ControlToValidate="TextBoxNameReg" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Gender</td>
            <td>&nbsp;&nbsp;<asp:TextBox ID="TextBoxGenderReg" runat="server"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="rfvGenderReg" runat="server" ErrorMessage="*Enter Gender" ControlToValidate="TextBoxGenderReg" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Address</td>
            <td>&nbsp;&nbsp;<asp:TextBox ID="TextBoxAddressReg" runat="server" TextMode="MultiLine" Columns="30" Rows="10"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="rfvAddressReg" runat="server" ErrorMessage="*Enter Address" ControlToValidate="TextBoxAddressReg" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Telephone</td>
            <td>&nbsp;&nbsp;<asp:TextBox ID="TextBoxTelephoneReg" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvTelephoneReg" runat="server" ErrorMessage="*Enter Phone" ControlToValidate="TextBoxTelephoneReg" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Email</td>
            <td>&nbsp;&nbsp;<asp:TextBox ID="TextBoxEmailReg" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvEmailReg" runat="server" ErrorMessage="*Enter Email" ControlToValidate="TextBoxEmailReg" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Password</td>
            <td>&nbsp;&nbsp;<asp:TextBox ID="TextBoxPasswordReg" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="rfvPasswordReg" runat="server" ErrorMessage="*Enter Password" ControlToValidate="TextBoxPasswordReg" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Confirm Password</td>
            <td>&nbsp;&nbsp;<asp:TextBox ID="TextBoxConPassReg" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="cpConnPassReg" runat="server" ErrorMessage="*Password Not Match" ControlToCompare="TextBoxPasswordReg" ControlToValidate="TextBoxConPassReg" Display="Dynamic" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <asp:Button ID="ButtonSubmit" runat="server" Text="Submit" OnClick="ButtonSubmit_Click" />
                <asp:Button ID="ButtonClear" runat="server" Text="Clear" OnClick="ButtonClear_Click" />
            </td>
        </tr>
    </table>
    <br />
    <div align="center">
        <asp:Label ID="LabelStatus" runat="server" Text="..."></asp:Label>
    </div>
</div>
