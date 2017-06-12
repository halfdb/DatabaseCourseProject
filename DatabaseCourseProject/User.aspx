<%@ Page MasterPageFile="~/Management.Master" Language="C#" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="DatabaseCourseProject.User" %>

<asp:Content runat="server" ContentPlaceHolderID="head">
    <script>
        $(function () {
            settab('#user_tab');

        });
    </script>
</asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="managingTable">
    <form runat="server" id="form">
        <asp:GridView ID="UserGridView" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="UserSource">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="username" HeaderText="用户名" SortExpression="username" />
                <asp:BoundField DataField="nickname" HeaderText="昵称" SortExpression="nickname" />
                <asp:BoundField DataField="phone" HeaderText="电话" SortExpression="phone" />
                <asp:CommandField ButtonType="Button" CancelText="取消" DeleteText="删除" EditText="编辑"
                    ShowDeleteButton="True" ShowEditButton="True" ShowHeader="True"
                    ControlStyle-CssClass="btn btn-sm btn-secondary" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="UserSource" runat="server" ConnectionString="<%$ ConnectionStrings:JindongConnectionString %>" SelectCommand="SELECT [id], [username], [nickname], [phone] FROM [User]" DeleteCommand="DELETE FROM [User] WHERE [id] = @original_id" InsertCommand="INSERT INTO [User] ([username], [nickname], [phone]) VALUES (@username, @nickname, @phone)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [User] SET [username] = @username, [nickname] = @nickname, [phone] = @phone WHERE [id] = @original_id">
            <DeleteParameters>
                <asp:Parameter Name="original_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="nickname" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="nickname" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="original_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>
