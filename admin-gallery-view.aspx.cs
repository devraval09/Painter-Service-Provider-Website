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
        galleryRepeater.DataSource = con.allRecord("select g.*,p.* from gallery g,painters p where p.painterId = g.painterId");
        galleryRepeater.DataBind();
    }
    protected void del_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        int row = con.allQuery("delete from gallery where galleryId = '" + btn.CommandArgument + "'");
        if(row > 0)
        {
            Response.Write("<script>alert('gallery deleted')</script>");
        }
        loadData();
    }
}