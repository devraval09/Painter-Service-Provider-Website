using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
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
        painterId.DataSource = con.allRecord("select * from painters");
        painterId.DataTextField = "painterName";
        painterId.DataValueField = "painterId";
        painterId.DataBind();
    }

    protected void btnbooking_Click(object sender, EventArgs e)
    {
        string BookingUserId = "1";
        string PainterId = painterId.Text;
        string Birthdate = birthdate.Text;
        string Remark = remark.Text;

        string query = "insert into bookings(bookingUserId,painterId,birthdate,remark) values('" + BookingUserId + "','" + PainterId + "','" + Birthdate + "','" + Remark + "')";

        int n = con.allQuery(query);
        if (n > 0)
        {
            Response.Write("<script>alert('Booking Registered')</script>");
        }
        birthdate.Text = remark.Text = string.Empty;
    }
}