using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class pages_log_in : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void register_Click(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx");
    }


    protected void sign_in_Click(object sender, EventArgs e)
    {
        
    }
    protected void F_P_Click(object sender, EventArgs e)
    {
        Response.Redirect("forgot_password.aspx");
    }


}
