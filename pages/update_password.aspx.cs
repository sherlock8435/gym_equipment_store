using ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pages_update_password : System.Web.UI.Page
{
    readonly Service1Client serv = new Service1Client();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void update_Click(object sender, EventArgs e)
    {
        User user = serv.GetUserByEmail(Session["email"].ToString());
        user.UserPass = newtb.Text;

        if (serv.CheckUserExist(currenttb.Text, Session["email"].ToString()))
        {
            serv.UpdateUserProfile(user);
        }
    }
}