<%@ Page Title="" Language="C#" MasterPageFile="~/Management.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="DatabaseCourseProject.Category" %>
<asp:Content ContentPlaceHolderID="head" runat="server">
    <script>
        $(function () {
            settab('#category_tab');
        });
    </script>
</asp:Content>
<asp:Content ContentPlaceHolderID="managingTable" runat="server">
    <form id="form1" runat="server">
    <asp:GridView ID="CategoryGridView" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="CategorySource">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="name" HeaderText="类别名称" SortExpression="name" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="CategorySource" runat="server" ConnectionString="<%$ ConnectionStrings:JindongConnectionString %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
</form>
</asp:Content>
