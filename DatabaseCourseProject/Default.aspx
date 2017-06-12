<%@ Page MasterPageFile="~/Banner.Master" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DatabaseCourseProject.Default" %>

<asp:Content runat="server" ContentPlaceHolderID="content">
    <form class="container" runat="server">
    
    <asp:Login CssClass="m-auto" ID="Login" runat="server" OnAuthenticate="Login_Authenticate" OnLoggedIn="Login_LoggedIn">
    </asp:Login>
    
</form>
</asp:Content>
