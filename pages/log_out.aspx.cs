using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pages_log_out : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("~/pages/log_in.aspx");
    }

    protected void cancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/pages/home.aspx");
    }
}