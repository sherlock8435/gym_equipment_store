<%@ Page Title="" Language="C#" MasterPageFile="~/M_pages/products.master" AutoEventWireup="true" CodeFile="EQ.aspx.cs" Inherits="pages_EQ" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <!-- Optional: Add custom CSS or link Bootstrap if not already included -->
    <style>
        .product-image {
            max-width: 100%;
            height: auto;
            border: 1px solid #ccc;
            border-radius: 8px;
        }
        .product-details {
            margin-left: 20px;
        }
        .product-label {
            font-weight: bold;
            margin-top: 10px;
        }
        .description-box {
            resize: none;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">
    <div class="container mt-4 mb-4">
        <div class="row">
            <!-- Image -->
            <div class="col-md-4">
                <asp:Image ID="Image1" runat="server" CssClass="product-image img-fluid" />
            </div>

            <!-- Details -->
            <div class="col-md-8 product-details">
                <h3>
                    <asp:Label ID="name" runat="server" Text="Product Name"></asp:Label>
                </h3>

                <div class="mb-3">
                    <label class="product-label">Description</label><br />
                    <asp:TextBox ID="description" runat="server" CssClass="form-control description-box" 
                        ReadOnly="True" TextMode="MultiLine" Rows="6" Width="100%">
                    </asp:TextBox>
                </div>

                <div class="mb-2">
                    <label class="product-label">Category:</label>
                    <asp:Label ID="category" runat="server" Text="Category"></asp:Label>
                </div>

                <div class="mb-2">
                    <label class="product-label">Quantity:</label>
                    <asp:Label ID="quantity" runat="server" Text="Quantity"></asp:Label>
                </div>

                <div class="mb-3">
                    <label class="product-label">Price:</label>
                    <asp:Label ID="price" runat="server" Text="Price"></asp:Label>
                </div>

                <asp:Button ID="cart" runat="server" Text="Add to Cart" CssClass="btn btn-primary" OnClick="cart_Click" />
            </div>
        </div>
    </div>
</asp:Content>
