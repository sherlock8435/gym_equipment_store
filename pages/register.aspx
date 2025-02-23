<%@ Page Title="" Language="C#" MasterPageFile="~/M_pages/User.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="pages_register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="Server">

    <div class="login">
        <asp:Label runat="server" Text="Fist name" Style="margin-right: 152px;" />
        <asp:Label runat="server" Text="Last name" />

        <br />

        <asp:TextBox Style="padding: 5px; margin-right: 60px; width: 170px;" ID="first_name" runat="server"></asp:TextBox>
        <asp:TextBox Style="padding: 5px; width: 170px;" ID="last_name" runat="server"></asp:TextBox>

        <br />

        <asp:RequiredFieldValidator ID="rfvfirst_name" runat="server"
            ControlToValidate="first_name"
            ErrorMessage="First name is required!"
            ForeColor="Red"
            ValidationGroup="register"
            Style="margin-right: 55px" />


        <asp:RequiredFieldValidator ID="rfvlast_name" runat="server"
            ControlToValidate="last_name"
            ErrorMessage="Last name is required!"
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
            ValidationGroup="register"
            Style="margin-right: 20px" />


        <asp:RequiredFieldValidator ID="rfvConfirm" runat="server"
            ControlToValidate="password_confirm"
            ErrorMessage="password confirmation is required!"
            ForeColor="Red"
            ValidationGroup="register" />



        <asp:CompareValidator ID="CompareValidator1" runat="server"
            ControlToValidate="password_confirm"
            ControlToCompare="password"
            Type="String"
            ErrorMessage="Passwords don't match!"
            ForeColor="Red"
            ValidationGroup="register" />

        <br />

        <asp:Label runat="server" Text="Phone Number" />
        <asp:TextBox Style="padding: 5px; margin-right: 230px;" ID="phoneNumber" TextMode="Phone" runat="server" placeholder="enter phone number"></asp:TextBox>
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
        <asp:DropDownList Style="padding: 5px; margin-right: 230px;" ID="country" runat="server">
            <asp:ListItem Text="Select Country" />
            <asp:ListItem Text="USA" Value="1" />
            <asp:ListItem Text="Canada" Value="2" />
            <asp:ListItem Text="UK" Value="3" />
            <asp:ListItem Text="Australia" Value="4" />
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="rfvCountry" runat="server"
            ControlToValidate="country"
            ErrorMessage="Country is required!"
            ForeColor="Red"
            InitialValue=""
            ValidationGroup="register" />

        <br />

        <asp:Label runat="server" Text="Security Question" />
        <asp:DropDownList Style="padding: 5px; margin-right: 100px;" ID="securityQuestion" runat="server">
            <asp:ListItem Text="Select a question" />
            <asp:ListItem Text="What is your pet's name?" Value="pet" />
            <asp:ListItem Text="What is your mother's maiden name?" Value="mother" />
            <asp:ListItem Text="What city were you born in?" Value="birthCity" />
            <asp:ListItem Text="What is your favorite book?" Value="book" />
        </asp:DropDownList>

        <br />

        <asp:RequiredFieldValidator ID="rfvsecurityQuestion" runat="server"
            ControlToValidate="securityQuestion"
            ErrorMessage="question is required!"
            ForeColor="Red"
            ValidationGroup="register" />

        <br />

        <asp:Label runat="server" Text="Answer:" />
        <asp:TextBox Style="padding: 5px; margin-right: 160px;" ID="securityAnswer" runat="server" Placeholder="Enter your answer"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvsecurityAnswer" runat="server"
            ControlToValidate="securityAnswer"
            ErrorMessage="answer is required!"
            ForeColor="Red"
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
            ValidationGroup="register"
            Style="color: red">
        </asp:CustomValidator>


        <br />


        <asp:Button ID="register" runat="server" Text="register" Style="margin-right: 10px;" OnClick="register_Click" ValidationGroup="register" />

        <asp:Label ID="exist" runat="server" Text="user already exists!" Style="color: red; visibility: hidden;" />

        <asp:Button ID="sign_in" runat="server" Text="sgin in" class="login_btn" OnClick="sgin_in_Click" />


    </div>

    <script type="text/javascript">
        function validateCheckBox(sender, args) {
            var checkbox = document.getElementById('<%= agreeTerms.ClientID %>');
            args.IsValid = checkbox.checked;
        }
    </script>

</asp:Content>
