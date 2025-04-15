<%@ Page Title="" Language="C#" MasterPageFile="~/M_pages/Profile.master" AutoEventWireup="true" CodeFile="log_out.aspx.cs" Inherits="pages_log_out" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div class="confirm">
        <asp:Label ID="currentlbl" runat="server" Text="You have been logged out."></asp:Label>
        <br />
        <asp:Label ID="newlbl" runat="server" Text="Please log in again."></asp:Label>
        <br />
        <br />
        <asp:Button ID="login" runat="server" Text="Login" OnClick="logout_Click" />
    </div>
</asp:Content>

