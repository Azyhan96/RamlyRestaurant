<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SearchAccount.ascx.cs" Inherits="RamlyRestaurant.WebUserControl.SearchAccount" %>
<div align="center">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnStringStoreDB %>" DeleteCommand="DELETE FROM [Customer] WHERE [cust_id] = @cust_id" InsertCommand="INSERT INTO [Customer] ([cust_name], [gender], [address], [telephone], [email], [passwordhash], [role], [enabled]) VALUES (@cust_name, @gender, @address, @telephone, @email, @passwordhash, @role, @enabled)" SelectCommand="SELECT * FROM [Customer] WHERE ([cust_name] = @cust_name)" UpdateCommand="UPDATE [Customer] SET [cust_name] = @cust_name, [gender] = @gender, [address] = @address, [telephone] = @telephone, [email] = @email, [passwordhash] = @passwordhash, [role] = @role, [enabled] = @enabled WHERE [cust_id] = @cust_id">
        <DeleteParameters>
            <asp:Parameter Name="cust_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="cust_name" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="telephone" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="passwordhash" Type="String" />
            <asp:Parameter Name="role" Type="String" />
            <asp:Parameter Name="enabled" Type="Boolean" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBoxSearchAdmin" Name="cust_name" PropertyName="Text" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="cust_name" Type="String" />
            <asp:Parameter Name="gender" Type="String" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="telephone" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="passwordhash" Type="String" />
            <asp:Parameter Name="role" Type="String" />
            <asp:Parameter Name="enabled" Type="Boolean" />
            <asp:Parameter Name="cust_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    Enter Name
    <asp:TextBox ID="TextBoxSearchAdmin" runat="server"></asp:TextBox>
    &nbsp;<asp:Button ID="ButtonSearchAdmin" runat="server" Text="Search" />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cust_id" DataSourceID="SqlDataSource1" Height="102px" Width="437px">
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:BoundField DataField="cust_id" HeaderText="cust_id" InsertVisible="False" ReadOnly="True" SortExpression="cust_id" />
            <asp:BoundField DataField="cust_name" HeaderText="cust_name" SortExpression="cust_name" />
            <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
            <asp:BoundField DataField="telephone" HeaderText="telephone" SortExpression="telephone" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="passwordhash" HeaderText="passwordhash" SortExpression="passwordhash" />
            <asp:BoundField DataField="role" HeaderText="role" SortExpression="role" />
            <asp:CheckBoxField DataField="enabled" HeaderText="enabled" SortExpression="enabled" />
        </Columns>
    </asp:GridView>
</div>
