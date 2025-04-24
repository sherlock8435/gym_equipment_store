<%@ Page Title="" Language="C#" MasterPageFile="~/M_pages/Profile.master" AutoEventWireup="true" CodeFile="log_out.aspx.cs" Inherits="pages_log_out" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .btnlo {
            margin-right:10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">
    <div class="confirm">
        <asp:Label ID="currentlbl" runat="server" Text="are you sure you want to log out?"></asp:Label>

        <br />
        <br />

        <asp:Button ID="logout" runat="server" Text="logout" OnClick="logout_Click" CssClass="btnlo" />


        <asp:Button ID="cancel" runat="server" Text="cancel" OnClick="cancel_Click" />
    </div>
</asp:Content>

