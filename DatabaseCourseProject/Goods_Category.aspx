<%@ Page Title="" Language="C#" MasterPageFile="~/Management.Master" AutoEventWireup="true" CodeBehind="Goods_Category.aspx.cs" Inherits="DatabaseCourseProject.Goods_Category" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        $(function () {
            settab('#goods_category_tab');
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="managingTable" runat="server">
    <form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="gid,cid" DataSourceID="GoodsCategorySource">
        <Columns>
            <asp:BoundField DataField="gid" HeaderText="商品ID" ReadOnly="True" SortExpression="gid" />
            <asp:BoundField DataField="gn" HeaderText="商品名" SortExpression="gn" />
            <asp:BoundField DataField="cid" HeaderText="类别ID" ReadOnly="True" SortExpression="cid" />
            <asp:BoundField DataField="cn" HeaderText="类别名" SortExpression="cn" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="GoodsCategorySource" runat="server" ConnectionString="<%$ ConnectionStrings:JindongConnectionString %>" DeleteCommand="DELETE FROM [Goods_Category] WHERE [goods_id] = @original_goods_id AND [category_id] = @original_category_id" InsertCommand="INSERT INTO [Goods_Category] ([goods_id], [category_id]) VALUES (@goods_id, @category_id)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT Goods_Category.goods_id AS gid, Goods.name AS gn, Goods_Category.category_id AS cid, Category.name AS cn FROM Goods_Category INNER JOIN Goods ON Goods_Category.goods_id = Goods.id INNER JOIN Category ON Goods_Category.category_id = Category.id">
        <DeleteParameters>
            <asp:Parameter Name="original_goods_id" Type="Int32" />
            <asp:Parameter Name="original_category_id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="goods_id" Type="Int32" />
            <asp:Parameter Name="category_id" Type="Int32" />
        </InsertParameters>
    </asp:SqlDataSource>
</form>
</asp:Content>
