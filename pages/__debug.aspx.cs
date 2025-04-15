using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ServiceReference1;

public partial class pages_debug : System.Web.UI.Page
{

    readonly Service1Client serv = new Service1Client();
    protected void Page_Load(object sender, EventArgs e)
    {
    }
}