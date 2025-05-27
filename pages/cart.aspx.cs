using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ServiceReference1;

public partial class pages_cart : System.Web.UI.Page
{
    readonly Service1Client serv = new Service1Client();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            BindData();
        }
    }

    private void BindData()
    {

        Item[] dt = serv.GetCartItems(Session["email"].ToString());

        List<Item> items = new List<Item>();
        for (int i = 0, j = 0; i < dt.Length; i++, j++)
        {
            Item item = dt[i];
            if (item != null)
                items.Add(item);
        }

        GridView.DataSource = items;
        GridView.AutoGenerateColumns = false;
        GridView.DataBind();
    }



    protected void PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView.PageIndex = e.NewPageIndex;
        BindData();
    }

    protected void Cart_Click(object sender, EventArgs e)
    {
    }

    protected void view_Click(object sender, EventArgs e)
    {
    }

    protected void GridView_SelectedIndexChanged(object sender, EventArgs e)
    {
    }

    protected void cart_Command(object sender, CommandEventArgs e)
    {

    }

    protected void view_Command(object sender, CommandEventArgs e)
    {
        string a = e.CommandArgument.ToString();
        Response.Redirect("EQ/" + a);
    }

    protected void Remove_Command(object sender, CommandEventArgs e)
    {
        Cart cart = serv.SelectCartByEmail(Session["email"].ToString());
        string itemID = e.CommandArgument.ToString();
        string items = cart.Items.Replace(itemID + ",", "");
        cart.Items = items;
        serv.UpdateCart(cart);
        BindData();
    }

    protected void CheckOut_Click(object sender, EventArgs e)
    {
        CheckOut.Visible = false;
        visanum.Visible = true;
        visanumber.Visible = true;
        visaexp.Visible = true;
        expdate.Visible = true;
        visacvv.Visible = true;
        cvv.Visible = true;
        confirmorder.Visible = true;
    }

    protected void confirmorder_Click(object sender, EventArgs e)
    {
        
        if (Page.IsValid)
        {
            if (Session["email"] == null)
            {
                Response.Redirect("Login.aspx");
                return;
            }

            int p = 0;
            string[] ints = serv.SelectCartByEmail(Session["email"].ToString()).ItemCount.Split(',');

            for (int i = 0; i < ints.Length; i++)
            {
                p += int.Parse(ints[i]);
            }
            Order order = new Order
            {
                UserEmail = Session["email"].ToString(),
                CartID = serv.SelectCartByEmail(Session["email"].ToString()).CartID,
                OrderDate = DateTime.Now.ToString("d"),
                Price = p,
                VisaNumber = visanum.Text
            };
            serv.AddOrder(order);
            confirm.Visible = true;
            Cart cart = serv.SelectCartByEmail(Session["email"].ToString());
            serv.DeleteCart(cart);
        }
    }
}