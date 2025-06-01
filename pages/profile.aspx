<%@ Page Title="" Language="C#" MasterPageFile="~/M_pages/Profile.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="pages_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .profile-card {
            max-width: 500px;
            margin: 50px auto;
            padding: 25px;
            border: 1px solid #ccc;
            border-radius: 10px;
            background-color: #f8f9fa;
        }
        .profile-row {
            margin-bottom: 15px;
        }
        .label-title {
            font-weight: bold;
            width: 100px;
            display: inline-block;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">
    <div class="profile-card">
        <div class="profile-row">
            <span class="label-title">Email:</span>
            <asp:Label ID="Email" runat="server" Text=""></asp:Label>
        </div>
        <div class="profile-row">
            <span class="label-title">Name:</span>
            <asp:Label ID="Name" runat="server" Text=""></asp:Label>
        </div>
        <div class="profile-row">
            <span class="label-title">Phone:</span>
            <asp:Label ID="Phone" runat="server" Text=""></asp:Label>
        </div>
        <div class="profile-row">
            <span class="label-title">Country:</span>
            <asp:Label ID="Country" runat="server" Text=""></asp:Label>
        </div>
        <div class="profile-row">
            <span class="label-title">Birthday:</span>
            <asp:Label ID="Birthday" runat="server" Text=""></asp:Label>
        </div>
        <div class="profile-row">
            <span class="label-title">Gender:</span>
            <asp:Label ID="Gender" runat="server" Text=""></asp:Label>
        </div>
    </div>
</asp:Content>


