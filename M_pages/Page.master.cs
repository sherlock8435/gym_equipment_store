using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class MPages_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] != null && Session["password"] != null)
        {
           link2.HRef = "~/pages/profile.aspx";
            lbl2.Text = "profile";
        }
    }

    protected void link3_click(object sender, EventArgs e)
    {

    }

}
