using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ServiceReference1;

public partial class pages_items : System.Web.UI.Page
{
    Service1Client serv = new Service1Client();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindData();
        }
    }

    private void BindData()
    {
        DataTable dt = serv.GetItems();

        List<Item> items = null;
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            items = new List<Item>
            {
               new Item
                {
                ItemCode = int.Parse(dt.Rows[i]["ItemID"].ToString()) ,
                Name = dt.Rows[i]["Name"].ToString(),
                Price = int.Parse(dt.Rows[i]["Price"].ToString()),
                ItemImg = dt.Rows[i]["ItemImg"].ToString(),
                Quantity = int.Parse(dt.Rows[i]["Quantity"].ToString()) ,
                Description = dt.Rows[i]["Description"].ToString(),
                Category = dt.Rows[i]["Category"].ToString()
                }
            };
        }

        gvProperties.DataSource = items;
        gvProperties.DataBind();

    }
}
