<%@ Page Title="" Language="C#" MasterPageFile="~/M_pages/Page.master" AutoEventWireup="true" CodeFile="contacts.aspx.cs" Inherits="pages_contacts" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">

    <!-- contact section -->

    <section class="contact_section ">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6 px-0">
                    <div class="img-box">
                        <img src="resources/images/contact-img.jpg" alt="">
                    </div>
                </div>
                <div class="col-lg-5 col-md-6">
                    <div class="form_container pr-0 pr-lg-5 mr-0 mr-lg-2">
                        <div class="heading_container">
                            <h2>Contact Us
                            </h2>
                        </div>
                        <form action="">
                            <div>
                                <asp:TextBox type="text" placeholder="Name" ID="name" runat="server"></asp:TextBox>
                            </div>
                            <div>
                                <asp:TextBox type="email" placeholder="Email" ID="email" runat="server"></asp:TextBox>
                            </div>
                            <div>
                                <asp:TextBox type="text" placeholder="subject" ID="subject" runat="server"></asp:TextBox>
                            </div>
                            <div>
                                <asp:TextBox type="text" class="message-box" placeholder="Message" ID="body" runat="server"></asp:TextBox>
                            </div>
                            <div class="d-flex ">
                                <asp:Button id="send" runat="server" onclick="Send_Click" Text="send" />
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- end contact section -->

    <!-- info section -->
    <section class="info_section layout_padding2">
        <div class="container">
            <div class="info_items">
                <a href="">
                    <div class="item ">
                        <div class="img-box box-1">
                            <img src="" alt="">
                        </div>
                        <div class="detail-box">
                            <p>
                                Location
                            </p>
                        </div>
                    </div>
                </a>
                <a href="">
                    <div class="item ">
                        <div class="img-box box-2">
                            <img src="" alt="">
                        </div>
                        <div class="detail-box">
                            <p>
                                +02 1234567890
                            </p>
                        </div>
                    </div>
                </a>
                <a href="">
                    <div class="item ">
                        <div class="img-box box-3">
                            <img src="" alt="">
                        </div>
                        <div class="detail-box">
                            <p>
                                demo@gmail.com
                            </p>
                        </div>
                    </div>
                </a>
            </div>
        </div>
    </section>

    <!-- end info_section -->

</asp:Content>

