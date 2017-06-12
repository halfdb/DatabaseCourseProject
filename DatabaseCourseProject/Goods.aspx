<%@ Page MasterPageFile="~/Management.Master" Language="C#" AutoEventWireup="true" CodeBehind="Goods.aspx.cs" Inherits="DatabaseCourseProject.Goods" %>
<asp:Content runat="server" ContentPlaceHolderID="head">
    <script>
        $(function () {
            settab('#goods_tab');
        });
    </script>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="managingTable">

    <form id="form" class="tab-content" runat="server">
        <asp:GridView ID="GoodsGridView" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="GoodsSource"
            AllowPaging="True" OnRowDataBound="GoodsGridView_RowDataBound">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="name" HeaderText="名称" SortExpression="name" />
                <asp:BoundField DataField="price" HeaderText="价格" SortExpression="price" DataFormatString="{0:c}" />
                <asp:BoundField DataField="description" HeaderText="描述" SortExpression="description" />
                <asp:BoundField DataField="image" HeaderText="图片地址" SortExpression="image" />
                <asp:BoundField DataField="remaining" HeaderText="剩余" SortExpression="remaining" />
                <asp:CommandField ButtonType="Button" CancelText="取消" DeleteText="删除" EditText="编辑"
                    ShowDeleteButton="True" ShowEditButton="True" ShowHeader="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="GoodsSource" runat="server" ConnectionString="<%$ ConnectionStrings:JindongConnectionString %>" SelectCommand="SELECT * FROM [Goods]" DeleteCommand="DELETE FROM [Goods] WHERE [id] = @original_id" InsertCommand="INSERT INTO [Goods] ([name], [price], [description], [image], [remaining]) VALUES (@name, @price, @description, @image, @remaining)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Goods] SET [name] = @name, [price] = @price, [description] = @description, [image] = @image, [remaining] = @remaining WHERE [id] = @original_id">
            <DeleteParameters>
                <asp:Parameter Name="original_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="price" Type="Decimal" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="remaining" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="price" Type="Decimal" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="image" Type="String" />
                <asp:Parameter Name="remaining" Type="Int32" />
                <asp:Parameter Name="original_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
</form>

</asp:Content>
