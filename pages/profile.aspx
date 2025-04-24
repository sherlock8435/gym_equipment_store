<%@ Page Title="" Language="C#" MasterPageFile="~/M_pages/Profile.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="pages_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">
    <asp:Label ID="lblEmail" runat="server" Text="email:"></asp:Label>
    <asp:Label ID="Email" runat="server" Text=""></asp:Label>
    <br />
    <asp:Label ID="lblName" runat="server" Text="name:"></asp:Label>
    <asp:Label ID="Name" runat="server" Text=""></asp:Label>
    <br />
    <asp:Label ID="lblPhone" runat="server" Text="phone:"></asp:Label>
    <asp:Label ID="Phone" runat="server" Text=""></asp:Label>
    <br />
    <asp:Label ID="lblCountry" runat="server" Text="country:"></asp:Label>
    <asp:Label ID="Country" runat="server" Text=""></asp:Label>

</asp:Content>

