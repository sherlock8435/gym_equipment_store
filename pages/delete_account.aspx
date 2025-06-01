<%@ Page Title="" Language="C#" MasterPageFile="~/M_pages/Profile.master" AutoEventWireup="true" CodeFile="delete_account.aspx.cs" Inherits="pages_delete_account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .form-container {
            max-width: 400px;
            margin: 50px auto;
            padding: 30px;
            border: 1px solid #ddd;
            border-radius: 10px;
            background-color: #f9f9f9;
        }
        .form-container label {
            font-weight: 600;
        }
        .error-label {
            color: red;
            margin-top: 10px;
            display: block;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">
    <div class="form-container text-center">
        <div class="mb-3">
            <asp:Label ID="Label1" runat="server" Text="Enter Password"></asp:Label>
            <br />
            <asp:TextBox ID="password" TextMode="Password" CssClass="form-control mt-2" runat="server" />
        </div>

        <asp:Button ID="delete" runat="server" Text="Delete" CssClass="btn btn-danger" OnClick="delete_Click" />

        <asp:Label ID="error" runat="server" CssClass="error-label" Visible="false" Text="Wrong Password"></asp:Label>
    </div>
</asp:Content>


