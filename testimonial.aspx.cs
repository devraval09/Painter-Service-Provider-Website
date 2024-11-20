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

        rptr2.DataSource = con.allRecord("select * from testimonials");
        rptr2.DataBind();
    }
}