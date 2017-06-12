<%@ Page Title="" Language="C#" MasterPageFile="~/Management.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="DatabaseCourseProject.Cart" %>
<asp:Content ContentPlaceHolderID="head" runat="server">
    <script>
        $(function () {
            settab('#cart_tab');
        });
    </script>
</asp:Content>
<asp:Content ContentPlaceHolderID="managingTable" runat="server">

    <form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="user_id,goods_id" DataSourceID="CartSource">
        <Columns>
            <asp:BoundField DataField="user_id" HeaderText="用户ID" ReadOnly="True" SortExpression="user_id" />
            <asp:BoundField DataField="nickname" HeaderText="用户名" ReadOnly="True" SortExpression="nickname" />
            <asp:BoundField DataField="goods_id" HeaderText="商品ID" ReadOnly="True" SortExpression="goods_id" />
            <asp:BoundField DataField="name" HeaderText="商品名" ReadOnly="True" SortExpression="name" />
            <asp:BoundField DataField="count" HeaderText="数量" SortExpression="count" />
            <asp:BoundField DataField="total_price" HeaderText="总价" SortExpression="total_price" DataFormatString="{0:C}" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="CartSource" runat="server" ConnectionString="<%$ ConnectionStrings:JindongConnectionString %>" DeleteCommand="DELETE FROM [Cart] WHERE [user_id] = @user_id AND [goods_id] = @goods_id" InsertCommand="INSERT INTO [Cart] ([user_id], [goods_id], [count], [total_price]) VALUES (@user_id, @goods_id, @count, @total_price)" SelectCommand="select user_id, nickname, goods_id, goods.name, count, total_price
from Cart join [User] on Cart.user_id = [USER].id join Goods on goods_id = Goods.id" UpdateCommand="UPDATE [Cart] SET [count] = @count, [total_price] = @total_price WHERE [user_id] = @user_id AND [goods_id] = @goods_id">
        <DeleteParameters>
            <asp:Parameter Name="user_id" Type="Int32" />
            <asp:Parameter Name="goods_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="user_id" Type="Int32" />
            <asp:Parameter Name="goods_id" Type="Int32" />
            <asp:Parameter Name="count" Type="Int32" />
            <asp:Parameter Name="total_price" Type="Decimal" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="count" Type="Int32" />
            <asp:Parameter Name="total_price" Type="Decimal" />
            <asp:Parameter Name="user_id" Type="Int32" />
            <asp:Parameter Name="goods_id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</form>

</asp:Content>
