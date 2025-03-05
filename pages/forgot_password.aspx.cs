using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel.Security;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ServiceReference1;

public partial class pages_Default : System.Web.UI.Page
{
    Service1Client seserv = new Service1Client();

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Check_Click(object sender, EventArgs e)
    {
        string Uemail = this.email.Text;
        if (seserv.CheckUserExistByEmail(Uemail))
        {
            this.check.Visible = false;
            this.lblpasswordque.Visible = true; 
            this.lblinfo.Text = "";
            this.answer.Visible = true;
            this.lblpasswordque.Visible = true;
            this.lblpasswordque.Text = seserv.GetQuestion(Uemail);
            this.reset.Visible = true;
        }


        else
        {
            this.lblinfo.Visible = true;
            this.lblinfo.Text = "Not a registered Email!";
        }
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        string uEmail = this.email.Text;
        string pass = seserv.PassRecovery(uEmail, answer.Text);

        if (pass.Length > 0)
            lblinfo.Text = "your passowrd is:  " + pass;
        else
            lblinfo.Text = "Try Again!";
    }
}