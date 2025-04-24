<%@ Page Title="" Language="C#" MasterPageFile="~/M_pages/Profile.master" AutoEventWireup="true" CodeFile="update_password.aspx.cs" Inherits="pages_update_password" %>

<asp:Content runat="server" ContentPlaceHolderID="head">
    <style>
        .confirm span[ID="ctl00_ctl00_body_body_newlbl"] {
            margin-right: 115px;
        }

        .confirm input[ID="ctl00$ctl00$body$body$newtb"] {
            margin-right: 20px;
        }
    </style>
</asp:Content>

<asp:Content runat="server" ClientIDMode="AutoID" ContentPlaceHolderID="body">

    <div class="confirm">
        <asp:Label ID="currentlbl" runat="server" Text="current password"></asp:Label>
        <br />
        <asp:TextBox ID="currenttb" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvCurrent" runat="server" ControlToValidate="currenttb"
            ErrorMessage="Current password is required." ForeColor="Red" Display="Dynamic" ValidationGroup="update" />

        <br />
        <br />

        <asp:Label ID="newlbl" runat="server" Text="new password"></asp:Label>
        <asp:Label ID="newconlbl" runat="server" Text="confirm password"></asp:Label>
        <br />

        <asp:TextBox ID="newtb" runat="server"></asp:TextBox>

        <asp:TextBox ID="newcontb" runat="server"></asp:TextBox>

        <br />

        <asp:RequiredFieldValidator ID="rfvNew" runat="server" ControlToValidate="newtb"
            ErrorMessage="New password is required." ForeColor="Red" Display="Dynamic" ValidationGroup="update" />

        <br />

        <asp:RequiredFieldValidator ID="rfvConfirm" runat="server" ControlToValidate="newcontb"
            ErrorMessage="Confirmation password is required." ForeColor="Red" Display="Dynamic" ValidationGroup="update" />

        <asp:CompareValidator ID="cvPasswordsMatch" runat="server" ControlToCompare="newtb" ControlToValidate="newcontb"
            ErrorMessage="Passwords do not match." Operator="Equal" Type="String" ForeColor="Red" Display="Dynamic" ValidationGroup="update" />

        <br />
        <br />

        <asp:Button ID="update" runat="server" Text="update" OnClick="update_Click" ValidationGroup="update" />
    </div>
</asp:Content>

