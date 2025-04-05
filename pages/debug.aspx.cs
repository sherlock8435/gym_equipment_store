using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pages_debug : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string a = "1,2,3,4,5,6,7,8,9,10";
        string[] b = new string[10];
        int i = 0;
        b = a.Split(',');
        foreach (var item in a)
        { 
            TextBox1.Text = b[i] + "\n";
            i++;
        }
    }
}