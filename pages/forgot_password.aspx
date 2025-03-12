<%@ Page Title="" Language="C#" MasterPageFile="~/M_pages/User.master" AutoEventWireup="true" CodeFile="forgot_password.aspx.cs" Inherits="pages_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">

    <div class="login">

        <asp:Label runat="server" Text="Email:" AssociatedControlID="email" />
        <asp:TextBox ID="email" Style="padding: 5px; margin-right: 160px;" TextMode="Email" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ValidationGroup="check" ID="rfvEmail" runat="server" ControlToValidate="email"
            ErrorMessage="Email is required" ForeColor="Red" Display="Dynamic" />

        <br />

        <asp:Label ID="lblpasswordque" runat="server" Text="Your question is:" />
        <asp:Label ID="question" runat="server" Text="" />

        <br />

        <asp:TextBox ID="answer" runat="server" PlaceHolder="Enter answer"></asp:TextBox>
        <asp:RequiredFieldValidator ValidationGroup="check" ID="rfvAnswer" runat="server" ControlToValidate="answer"
            ErrorMessage="Answer is required" ForeColor="Red" Display="Dynamic" />

        <br />

        <asp:Label ID="lblinfo" runat="server" Text="asdw" />

        <asp:Button ID="check" runat="server" Text="Check" Style="float: right;" OnClick="Check_Click" ValidationGroup="check" />
        <asp:Button ID="reset" runat="server" Text="Reset" Style="float: right; margin-right: 10px;" OnClick="btnReset_Click" />

    </div>

</asp:Content>

