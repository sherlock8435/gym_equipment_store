using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ServiceReference1;
public partial class pages_delete_account : System.Web.UI.Page
{
    readonly Service1Client serv = new Service1Client();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] == null)
        {
            Response.Redirect("log_in.aspx");
            return;
        }
    }

    protected void delete_Click(object sender, EventArgs e)
    {
        if (serv.CheckUserExistByEmail(Session["email"].ToString()))
        {
            User user = serv.GetUserByEmail(Session["email"].ToString());
            if (password.Text == user.UserPass)
            {
                serv.DeleteUserByEmail(Session["email"].ToString(), password.Text);
                Session.Clear();
                Response.Redirect("log_in.aspx");
            }
        }
        else
        {
            error.Visible = true;
        }
    }
}