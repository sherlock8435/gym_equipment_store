<%@ Page Title="" Language="C#" MasterPageFile="~/M_pages/Profile.master" AutoEventWireup="true" CodeFile="delete_account.aspx.cs" Inherits="pages_delete_account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">

    <asp:Label ID="Label1" runat="server" Text="enter password"></asp:Label>

    <br />

    <asp:TextBox ID="password" TextMode="Password" runat="server"></asp:TextBox>

    <br />
    <br />

    <asp:Button ID="delete" runat="server" Text="Button" OnClick="delete_Click" />
    <asp:Label ID="error" runat="server" Visible="false" Text="wrong Password"></asp:Label>



</asp:Content>

