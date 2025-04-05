<%@ Page Title="" Language="C#" MasterPageFile="~/M_pages/Products.master" AutoEventWireup="true" CodeFile="items.aspx.cs" Inherits="pages_items" %>

<asp:Content ContentPlaceHolderID="head" runat="server">

    <style>
        .clss {
            overflow-wrap: anywhere;
            max-width: 20%;
            width: min-content;
        }
    </style>

</asp:Content>

<asp:Content ContentPlaceHolderID="body" runat="server">
    <div style="margin: 50px">

        <asp:GridView ID="GridView" runat="server" AutoGenerateColumns="true" BorderWidth="1px"
            CellPadding="5" GridLines="Both"
            OnPageIndexChanging="PageIndexChanging"
            BorderStyle="solid" BorderColor="White" AllowPaging="true" PageSize="2" OnSelectedIndexChanged="GridView_SelectedIndexChanged">
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
                <asp:TemplateField HeaderText="Photo">
                    <ItemTemplate>
                        <!-- First Button -->
                        <asp:Button ID="cart" runat="server" Text="add to cart" CommandName="EditItem" CommandArgument='<%# Eval("ItemID") %>' OnCommand="cart_Command" />
                        <!-- Second Button -->
                        <asp:Button ID="view" runat="server" Text="view" CommandName="DeleteItem" CommandArgument='<%# Eval("ItemID") %>' OnCommand="view_Command" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

        <asp:Label runat="server" ID="test" Text="test"/>
    </div>
</asp:Content>
