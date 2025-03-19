<%@ Page Title="" Language="C#" MasterPageFile="~/M_pages/products.master" AutoEventWireup="true" CodeFile="EQ.aspx.cs" Inherits="pages_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">
    <div style="margin-right: 10%; margin-left: 10%;">
        <div style="float: left;">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/resources/images/items/bench.png" BorderColor="Black" />
        </div>
        <div style="margin-left: 10px;">
            <asp:Label ID="name" runat="server" Text="Label"></asp:Label>

            <br />

            <asp:Label ID="description" runat="server" Text="Label"></asp:Label>

            <br />

            <asp:Label ID="category" runat="server" Text="Label"></asp:Label>

            <br />

            <asp:Label ID="quantity" runat="server" Text="Label"></asp:Label>

            <br />

            <asp:Label ID="price" runat="server" Text="Label"></asp:Label>

            <br />

            <asp:Button ID="cart" runat="server" Text="Add to Cart" />
        </div>
    </div>
</asp:Content>

