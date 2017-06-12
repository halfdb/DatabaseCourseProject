<%@ Page Title="" Language="C#" MasterPageFile="~/Management.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="DatabaseCourseProject.Order" %>
<asp:Content ContentPlaceHolderID="head" runat="server">
    <script>
        $(function () {
            settab('#order_tab');
        });
    </script>
</asp:Content>
<asp:Content ContentPlaceHolderID="managingTable" runat="server">
    <form id="form" runat="server">
    <asp:GridView ID="OrderGridView" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="OrderSource">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="user_id" HeaderText="用户ID" SortExpression="user_id" />
            <asp:BoundField DataField="address" HeaderText="地址" SortExpression="address" />
            <asp:BoundField DataField="total_price" HeaderText="总价" SortExpression="total_price" DataFormatString="{0:C}" />
            <asp:BoundField DataField="status" HeaderText="状态" SortExpression="status" />
            <asp:BoundField DataField="note" HeaderText="备注" SortExpression="note" />
            <asp:BoundField DataField="time" HeaderText="下单时间" SortExpression="time" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="OrderSource" runat="server" ConnectionString="<%$ ConnectionStrings:JindongConnectionString %>" SelectCommand="SELECT * FROM [Order]" DeleteCommand="DELETE FROM [Order] WHERE [id] = @id" InsertCommand="INSERT INTO [Order] ([user_id], [address], [total_price], [status], [note], [time]) VALUES (@user_id, @address, @total_price, @status, @note, @time)" UpdateCommand="UPDATE [Order] SET [user_id] = @user_id, [address] = @address, [total_price] = @total_price, [status] = @status, [note] = @note, [time] = @time WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="user_id" Type="Int32" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="total_price" Type="Decimal" />
            <asp:Parameter Name="status" Type="String" />
            <asp:Parameter Name="note" Type="String" />
            <asp:Parameter Name="time" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="user_id" Type="Int32" />
            <asp:Parameter Name="address" Type="String" />
            <asp:Parameter Name="total_price" Type="Decimal" />
            <asp:Parameter Name="status" Type="String" />
            <asp:Parameter Name="note" Type="String" />
            <asp:Parameter Name="time" Type="DateTime" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
        </asp:SqlDataSource>
</form>
</asp:Content>
