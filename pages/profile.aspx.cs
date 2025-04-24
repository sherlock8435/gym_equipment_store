using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ServiceReference1;
public partial class pages_profile : System.Web.UI.Page
{
    readonly Service1Client serv = new Service1Client();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("log_in.aspx");
            }
            else
            {

                User user = serv.GetUserByEmail(Session["email"].ToString());

                Email.Text = user.UserEmail;
                Name.Text = user.Fname + " " + user.Lname;
                Phone.Text = user.Utelnum;
                Country.Text = serv.SelectCityById(user.CityID).CityName;

            }
        }
    }
}