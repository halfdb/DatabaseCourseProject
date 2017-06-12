<%@ Page Title="" Language="C#" MasterPageFile="~/Management.Master" AutoEventWireup="true" CodeBehind="Comment.aspx.cs" Inherits="DatabaseCourseProject.Comment" %>
<asp:Content ContentPlaceHolderID="head" runat="server">
    <script>
        $(function () {
            settab('#comment_tab');
        });
    </script>
</asp:Content>
<asp:Content ContentPlaceHolderID="managingTable" runat="server">
    <form id="form1" runat="server">
        <asp:GridView ID="CommentGridView" runat="server" AutoGenerateColumns="False" DataKeyNames="user_id,goods_id" DataSourceID="CommentSource">
            <Columns>
                <asp:BoundField DataField="user_id" HeaderText="用户ID" ReadOnly="True" SortExpression="user_id" />
                <asp:BoundField DataField="goods_id" HeaderText="商品ID" ReadOnly="True" SortExpression="goods_id" />
                <asp:BoundField DataField="score" HeaderText="打分" SortExpression="score" />
                <asp:BoundField DataField="text" HeaderText="文本" SortExpression="text" />
                <asp:BoundField DataField="time" HeaderText="时间" SortExpression="time" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="CommentSource" runat="server" ConnectionString="<%$ ConnectionStrings:JindongConnectionString %>" SelectCommand="SELECT * FROM [Comment]"></asp:SqlDataSource>
    </form>
</asp:Content>
