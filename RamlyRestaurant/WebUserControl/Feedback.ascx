<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Feedback.ascx.cs" Inherits="RamlyRestaurant.Feedback1" %>

<table align="center" style="border: thin double #000000">
    <tr>
        <td align="center">
            <h1 align="center">Feedback</h1>
            <p>
                <span><span class="style47">Ramly Food Services Sdn Bhd</span> <span class="style65">(265231-T)</span><br />
                    No.1, Jalan 2/118C, Desa Tun Razak,
                    <br />
                    56000 Cheras, Kuala Lumpur, Malaysia.<br />
                    Tel: 603-9173 7455<br />
                    Fax: 603-9173 7709</span><span><br />
                        Email: ramlyburger2018@gmail.com</span>
            </p>
        </td>
    </tr>
</table>
<br />
<table align="center" style="border: thin double #000000">
    <tr>
        <td >From</td>
        <td>&nbsp;<asp:TextBox ID="TextBoxFrom" runat="server" Width="212px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvfrompass" runat="server" ControlToValidate="TextBoxFrom" Display="Dynamic" ErrorMessage="*Enter Sender Email" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td >Email Password</td>
        <td>&nbsp;<asp:TextBox ID="TextBoxEmailPassword" TextMode="Password" runat="server" Width="212px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvemailpass" runat="server" ControlToValidate="TextBoxEmailPassword" Display="Dynamic" ErrorMessage="*Enter sender password Email" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>To</td>
        <td>&nbsp;<asp:TextBox ID="TextBoxEmailTo" runat="server" Width="212px">ramlyburger2018@gmail.com</asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvemailto" runat="server" ControlToValidate="TextBoxEmailTo" Display="Dynamic" ErrorMessage="*Enter recipient Email" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Subject</td>
        <td>&nbsp;<asp:TextBox ID="TextBoxSubject" runat="server" Width="212px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>Message</td>
        <td>
            <br />
            &nbsp;<asp:TextBox ID="TextBoxMessage" runat="server" Height="166px" Width="376px" TextMode="MultiLine" Columns="30" Rows="10"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxMessage" Display="Dynamic" ErrorMessage="*Body message cannot be blank" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
        </td>
    </tr>
    <tr>
        <td></td>
        <td>
            <asp:Button ID="ButtonSubmit" runat="server" Text="Submit" OnClick="ButtonSubmit_Click" />
            <asp:Button ID="Clear" runat="server" Text="Clear" OnClick="Clear_Click" />
        </td>
    </tr>
</table>
