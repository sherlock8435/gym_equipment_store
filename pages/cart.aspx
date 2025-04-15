<%@ Page Title="" Language="C#" MasterPageFile="~/M_pages/Products.master" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="pages_cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .clss {
            overflow-wrap: anywhere;
            max-width: 20%;
            width: min-content;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">
    <div>
        <div style="margin: 50px">

            <asp:GridView ID="GridView" runat="server" AutoGenerateColumns="true" BorderWidth="1px"
                CellPadding="5" GridLines="Both"
                OnPageIndexChanging="PageIndexChanging"
                BorderStyle="solid" BorderColor="White" AllowPaging="true" PageSize="3"
                OnSelectedIndexChanged="GridView_SelectedIndexChanged">
                <PagerSettings Visible="true" Mode="Numeric" Position="Bottom" />

                <Columns>

                    <asp:TemplateField HeaderText="Photo">
                        <ItemTemplate>
                            <img src='<%# Eval("ItemImg") %>' alt="Property Image" style="max-width: 30%" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Name" HeaderText="Name" HeaderStyle-Width="100px" ItemStyle-Width="15%" />
                    <asp:BoundField DataField="Description" HeaderText="Description" ItemStyle-Width="20%" ItemStyle-CssClass="clss" />
                    <asp:BoundField DataField="Category" HeaderText="Category" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                    <asp:BoundField DataField="Price" HeaderText="Price" DataFormatString="{0:C0}" />
                    <asp:TemplateField HeaderText="">
                        <ItemTemplate>
                            <asp:Button ID="view" runat="server" Text="view" CommandName="ViewItem" CommandArgument='<%# Eval("ItemID") %>' OnCommand="view_Command" />

                            <asp:Button ID="Remove" runat="server" Text="remove" CommandName="RemoveItem" CommandArgument='<%# Eval("ItemID") %>' OnCommand="Remove_Command" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>
    <asp:Button ID="CheckOut" runat="server" Text="Check Out" OnClick="CheckOut_Click" />
    <asp:Label ID="confirm" runat="server" Text="order has been placed" Visible="false" />

    <div style="max-width: 200px; margin: auto">
        <br />
        <br />

        <asp:Label ID="visanum" runat="server" Text="Visa Number" Visible="false" />
        <asp:TextBox ID="visanumber" runat="server" Visible="false"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvvisanum" runat="server"
            ControlToValidate="visanumber"
            ErrorMessage="Visa number is required!"
            ForeColor="Red"
            ValidationGroup="confirmorder" />

        <br />
        <br />

        <asp:Label ID="visaexp" runat="server" Text="Expiration Date" Visible="false" />
        <asp:TextBox ID="expdate" runat="server" Visible="false"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvvisaexp" runat="server"
            ControlToValidate="expdate"
            ErrorMessage="Expiration date is required!"
            ForeColor="Red"
            ValidationGroup="confirmorder" />

        <br />
        <br />

        <asp:Label ID="visacvv" runat="server" Text="CVV" Visible="false" />
        <asp:TextBox ID="cvv" runat="server" Visible="false"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvviscvv" runat="server"
            ControlToValidate="cvv"
            ErrorMessage="CVV is required!"
            ForeColor="Red"
            ValidationGroup="confirmorder" />

        <br />
        <br />

        <asp:Button ID="confirmorder" runat="server" Text="Confirm Order" OnClick="confirmorder_Click"
            Visible="false" ValidationGroup="confirmorder" />
    </div>


</asp:Content>

