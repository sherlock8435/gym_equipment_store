<%@ Page Title="" Language="C#" MasterPageFile="~/M_pages/User.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="pages_register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">

    <div class="login">
        <asp:Label runat="server" Text="Username" />
        <asp:TextBox Style="padding: 5px; margin-right: 190px;" ID="username" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvUsername" runat="server"
            ControlToValidate="username"
            ErrorMessage="Username is required!"
            ForeColor="Red"
            ValidationGroup="register" />

        <br />

        <asp:Label runat="server" Text="Email" />
        <asp:TextBox Style="padding: 5px; margin-right: 190px;" ID="email" TextMode="Email" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
            ControlToValidate="email"
            ErrorMessage="Email is required!"
            ForeColor="Red"
            ValidationGroup="register" />

        <br />

        <asp:Label runat="server" Text="password" Style="margin-right: 120px;" />
        <asp:Label runat="server" Text="Confirm Password" />

        <br />

        <asp:TextBox ID="password" runat="server" TextMode="Password" placeholder="Enter Password"
            AutoComplete="off" Style="width: 160px; margin-right: 35px;"></asp:TextBox>

        <asp:TextBox ID="password_confirm" runat="server" TextMode="Password" placeholder="Confirm Password"
            AutoComplete="off" Style="width: 160px; margin-right: 40px;"></asp:TextBox>
        <br />

        <asp:RequiredFieldValidator ID="rfvPassword" runat="server"
            ControlToValidate="password"
            ErrorMessage="Password is required!"
            ForeColor="Red"
            ValidationGroup="register" />

        <br />

        <asp:RequiredFieldValidator ID="rfvConfirm" runat="server"
            ControlToValidate="password_confirm"
            ErrorMessage="Confirm Password is required!"
            ForeColor="Red"
            ValidationGroup="register" />

        <br />

        <asp:Label runat="server" Text="Phone Number" />
        <asp:TextBox Style="padding: 5px; margin-right: 160px;" ID="phoneNumber" TextMode="Phone" runat="server" placeholder="enter phone number"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvPhoneNumber" runat="server"
            ControlToValidate="phoneNumber"
            ErrorMessage="Phone Number is required!"
            ForeColor="Red"
            ValidationGroup="register" />

        <br />

        <asp:Label runat="server" Text="Gender" />
        <asp:DropDownList Style="padding: 5px; margin-right: 160px;" ID="gender" runat="server">
            <asp:ListItem Text="Select Gender" Value="" />
            <asp:ListItem Text="Male" Value="Male" />
            <asp:ListItem Text="Female" Value="Female" />
            <asp:ListItem Text="Other" Value="Other" />
        </asp:DropDownList>

        <br />

        <asp:RequiredFieldValidator ID="rfvGender" runat="server"
            ControlToValidate="gender"
            ErrorMessage="Gender is required!"
            ForeColor="Red"
            InitialValue=""
            ValidationGroup="register" />

        <br />

        <asp:Label runat="server" Text="Date of Birth" />
        <asp:TextBox Style="padding: 5px; margin-right: 160px;" ID="dob" TextMode="Date" runat="server"></asp:TextBox>

        <br />

        <asp:RequiredFieldValidator ID="rfvDOB" runat="server"
            ControlToValidate="dob"
            ErrorMessage="Date of Birth is required!"
            ForeColor="Red"
            ValidationGroup="register" />

        <br />

        <asp:Label runat="server" Text="Country" />
        <asp:DropDownList Style="padding: 5px; margin-right: 160px;" ID="country" runat="server">
            <asp:ListItem Text="Select Country" Value="" />
            <asp:ListItem Text="USA" Value="USA" />
            <asp:ListItem Text="Canada" Value="Canada" />
            <asp:ListItem Text="UK" Value="UK" />
            <asp:ListItem Text="Australia" Value="Australia" />
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvCountry" runat="server"
            ControlToValidate="country"
            ErrorMessage="Country is required!"
            ForeColor="Red"
            InitialValue=""
            ValidationGroup="register" />

        <br />

        <asp:Label runat="server">
            I agree to the 
            <a href="../place_holders/terms_and_condetions.html"> terms and conditions </a>
        </asp:Label>

        <asp:CheckBox Style="padding: 5px; margin-right: 160px;" ID="agreeTerms" runat="server" ValidationGroup="register" ValidateRequestMode="Enabled" />

        <br />

        <asp:CustomValidator ID="CustomValidator1" runat="server"
            ErrorMessage="You must agree to the terms and conditions!"
            ClientValidationFunction="validateCheckBox"
            OnServerValidate="check_terms"
            ValidationGroup="register"
            Style="color: red">
        </asp:CustomValidator>


        <br />


        <asp:Button ID="register" runat="server" Text="register" Style="margin-right: 10px;" OnClick="register_Click" ValidationGroup="register" />

        <asp:Button ID="sign_in" runat="server" Text="sgin in" class="login_btn" OnClick="sgin_in_Click" />


    </div>

    <script type="text/javascript">
        function validateCheckBox(sender, args) {
            var checkbox = document.getElementById('<%= agreeTerms.ClientID %>');
            args.IsValid = checkbox.checked;
        }
    </script>

</asp:Content>
