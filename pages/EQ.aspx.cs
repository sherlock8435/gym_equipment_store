using ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class pages_EQ : System.Web.UI.Page
{
    Service1Client serv = new Service1Client();
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = int.Parse(Page.RouteData.Values["id"].ToString());

        Item item = new Item();
        item = serv.SelectItemByID(id);
        name.Text = item.Name;
        description.Text = item.Description;
        quantity.Text = item.Quantity.ToString();
        price.Text = item.Price.ToString();
        category.Text = item.Category;
    }

    protected void cart_Click(object sender, EventArgs e)
    {
        Order order = new Order();

    }
}