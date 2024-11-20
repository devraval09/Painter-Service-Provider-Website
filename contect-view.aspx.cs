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
        contectRepeater.DataSource = con.allRecord("select * from Contacts");
        contectRepeater.DataBind();

    }

    protected void del_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        int row = con.allQuery("delete from Contacts where ContectId = '" + btn.CommandArgument + "'");
        if (row > 0)
        {
            Response.Write("<script>alert('contect deleted')</script>");
        }
        loadData();

    }
}


   