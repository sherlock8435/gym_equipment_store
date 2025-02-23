using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

public partial class pages_register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void check_terms(object source, ServerValidateEventArgs args)
    {
        args.IsValid = agreeTerms.Checked;
    }

    protected void register_Click(object sender, EventArgs e)
    {

    }

    protected void sgin_in_Click(object sender, EventArgs e)
    {

    }

}