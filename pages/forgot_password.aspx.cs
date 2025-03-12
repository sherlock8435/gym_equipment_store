using System;
using System.Collections.Generic;
using System.Configuration;
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
        lblpasswordque.Visible = false;
        answer.Visible = false;
        lblpasswordque.Visible = false;
        reset.Visible = false;
        lblinfo.Text = string.Empty;

    }

    protected void Check_Click(object sender, EventArgs e)
    {
        string Uemail = email.Text;
        if (seserv.CheckUserExistByEmail(Uemail) && answer.Text.Equals(""))
        {
            lblpasswordque.Visible = true;
            answer.Visible = true;
            lblpasswordque.Visible = true;
            lblpasswordque.Text = seserv.GetQuestion(Uemail).ToString();
            reset.Visible = true;
            lblinfo.Text = "";
            return;
        }
        if (!seserv.CheckUserExistByEmail(Uemail))
        {
            lblinfo.Text = "Not a registered Email!";
            return;
        }

        string uEmail = email.Text;
        string uAnswer = answer.Text;
        string pass = seserv.PassRecovery(uEmail, uAnswer);

        if (pass != null)
            lblinfo.Text = "your passowrd is:" + pass;
        else
            lblinfo.Text = "wrong answer";
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        email.Text = "";
        answer.Text = "";
        question.Visible = false;
    }
}