using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_index : System.Web.UI.Page
{
    ConnectionClass con;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new ConnectionClass();
        if (!IsPostBack)
            loadData();
    }
    public void loadData()
    {
        bookingRepeater.DataSource = con.allRecord("select * from bookings");
        bookingRepeater.DataBind();

    }
    protected void del_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        int row = con.allQuery("delete from bookings where bookingId = '" + btn.CommandArgument + "'");
        if (row > 0)
        {
            Response.Write("<script>alert('booking deleted')</script>");
        }
        loadData();
    }
}