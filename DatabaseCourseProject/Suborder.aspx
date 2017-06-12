<%@ Page Title="" Language="C#" MasterPageFile="~/Management.Master" AutoEventWireup="true" CodeBehind="Suborder.aspx.cs" Inherits="DatabaseCourseProject.Suborder" %>
<asp:Content ContentPlaceHolderID="head" runat="server">
    <script>
        $(function () {
            settab('#suborder_tab');
        });
    </script>
</asp:Content>
<asp:Content ContentPlaceHolderID="managingTable" runat="server">
    <form id="form1" runat="server">
        <asp:GridView ID="SuborderGridView" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SuborderSource">
            <Columns>
                <asp:BoundField DataField="order_id" HeaderText="订单ID" SortExpression="order_id" />
                <asp:BoundField DataField="goods_id" HeaderText="商品ID" SortExpression="goods_id" />
                <asp:BoundField DataField="count" HeaderText="数量" SortExpression="count" />
                <asp:BoundField DataField="total_price" DataFormatString="{0:C}" HeaderText="总价" SortExpression="total_price" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SuborderSource" runat="server" ConnectionString="<%$ ConnectionStrings:JindongConnectionString %>" DeleteCommand="DELETE FROM [Suborder] WHERE [id] = @id" InsertCommand="INSERT INTO [Suborder] ([order_id], [goods_id], [count], [total_price]) VALUES (@order_id, @goods_id, @count, @total_price)" SelectCommand="SELECT * FROM [Suborder]" UpdateCommand="UPDATE [Suborder] SET [order_id] = @order_id, [goods_id] = @goods_id, [count] = @count, [total_price] = @total_price WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="order_id" Type="Int32" />
                <asp:Parameter Name="goods_id" Type="Int32" />
                <asp:Parameter Name="count" Type="Decimal" />
                <asp:Parameter Name="total_price" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="order_id" Type="Int32" />
                <asp:Parameter Name="goods_id" Type="Int32" />
                <asp:Parameter Name="count" Type="Decimal" />
                <asp:Parameter Name="total_price" Type="Decimal" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="PartSuborderSource" runat="server" ConnectionString="<%$ ConnectionStrings:JindongConnectionString %>" DeleteCommand="DELETE FROM [Suborder] WHERE [id] = @id" InsertCommand="INSERT INTO [Suborder] ([order_id], [goods_id], [count], [total_price]) VALUES (@order_id, @goods_id, @count, @total_price)" SelectCommand="SELECT * FROM [Suborder] WHERE ([order_id] = @order_id)" UpdateCommand="UPDATE [Suborder] SET [order_id] = @order_id, [goods_id] = @goods_id, [count] = @count, [total_price] = @total_price WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="order_id" Type="Int32" />
                <asp:Parameter Name="goods_id" Type="Int32" />
                <asp:Parameter Name="count" Type="Decimal" />
                <asp:Parameter Name="total_price" Type="Decimal" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="order_id" QueryStringField="OrderID" Type="Int32" DefaultValue="-1" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="order_id" Type="Int32" />
                <asp:Parameter Name="goods_id" Type="Int32" />
                <asp:Parameter Name="count" Type="Decimal" />
                <asp:Parameter Name="total_price" Type="Decimal" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>
