<%@ Page Title="" Language="C#" MasterPageFile="~/M_pages/User.master" AutoEventWireup="true" CodeFile="log_in.aspx.cs" Inherits="pages_log_in" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">

    <div class="login">

        
        
        <br />
        <asp:Label runat="server" Text="email" />
        <asp:TextBox Style="padding: 5px; margin-right: 160px;" ID="email" TextMode="email" runat="server"></asp:TextBox>

        <br />
        <br />

        <asp:Label runat="server" Text="password" />
        <asp:TextBox Style="padding: 5px; margin-right: 160px;" ID="password" TextMode="Password" runat="server"></asp:TextBox>

        <br />
        <br />

        <asp:Button ID="sign_in" runat="server" Text="sgin in" Style="margin-right: 10px; height: 28px;" OnClick="sign_in_Click" />
        <asp:Button ID="register" runat="server" Text="register" OnClick="register_Click" />
        <asp:Button ID="forgot_password" runat="server" Text="forgot password" Style="float: right;" OnClick="F_P_Click" />

    </div>

</asp:Content>

