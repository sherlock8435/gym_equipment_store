using System;
using System.Collections.Generic;
using System.Data.SqlTypes;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using ServiceReference1;

public partial class pages_register : System.Web.UI.Page
{
    Service1Client serv = new Service1Client();
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void register_Click(object sender, EventArgs e)
    {

        string firstname = this.first_name.Text;
        string lastname = this.last_name.Text;
        string email = this.email.Text;
        string password = this.password.Text;
        string phoneNumber = this.phoneNumber.Text;
        string gender = this.gender.SelectedValue;
        string dob = this.dob.Text;
        int country = int.Parse(this.country.SelectedValue);
        string securityQuestion = this.securityQuestion.SelectedValue;
        string securityAnswer = this.securityAnswer.Text;

        User user = new User
        {
            UserEmail = email,
            Fname = firstname,
            Lname = lastname,
            UserPass = password,
            CityID = country,  // Assuming country holds CityID; change if needed
            Ugender = gender,
            Ubirthday = dob,
            Utelnum = phoneNumber,
            uQuestion = securityQuestion,
            uAnswer = securityAnswer
        };


        if (serv.CheckUserExistByEmail(email))
        {
            serv.AddUser(user);
            Session["email"] = email;
            Session["password"] = password;
            Response.Redirect("home.aspx");
    }
        else
    {
            exist.Visible = true;
        }
    }

    protected void agreeTerms(object source, ServerValidateEventArgs args)
    {
        args.IsValid = check_terms.Checked;
    }

    protected void sgin_in_Click(object sender, EventArgs e)
    {

    }

}