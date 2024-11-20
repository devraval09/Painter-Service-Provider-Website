using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    ConnectionClass con;
    string fetch;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new ConnectionClass();
        fetch = Request.QueryString["pid"];
        if (!IsPostBack)
            loadData();
    }
    public void loadData()
    {
        editgallery.DataSource = con.allRecord("select * from painters where painterId = " + fetch);
        editgallery.DataBind();

    }
    protected void btnedit_Click(object sender, EventArgs e)
    {
        Button editbtn = sender as Button;
        RepeaterItem item = editbtn.NamingContainer as RepeaterItem;

        string apainterName = (item.FindControl("painterName") as TextBox).Text;
        string apainterRate = (item.FindControl("painterPrice") as TextBox).Text;
        string apainterImg = (item.FindControl("painterImg") as FileUpload).FileName;
        string apainterCity = (item.FindControl("painterCity") as TextBox).Text;
        string apainterArea = (item.FindControl("painterArea") as TextBox).Text;
        string apainterAddress = (item.FindControl("painterAddress") as TextBox).Text;
        string apaintercontectNo = (item.FindControl("painterno") as TextBox).Text;
        string abuildArea = (item.FindControl("buildArea") as TextBox).Text;
         string oldimg = (item.FindControl("oldimg") as HiddenField).Value;
         string query = "";
         if (!(item.FindControl("painterImg") as FileUpload).HasFile)
        {
            query = "update painters set painterName = '"+apainterName+"',painterPrice = '"+apainterRate+"',painterImage = '"+oldimg+"',painterCity = '"+apainterCity+"' ,painterArea = '"+apainterArea+"' ,painterAddress = '"+apainterAddress+"' ,painterContectNo = '"+apaintercontectNo+"'  ,painterBuildArea = '"+abuildArea+"'where painterId = " + fetch;
        }
        else
        {
            query = "update painters set painterName = '"+apainterName+"',painterPrice = '"+apainterRate+"',painterImage = '"+apainterImg+"',painterCity = '"+apainterCity+"' ,painterArea = '"+apainterArea+"' ,painterAddress = '"+apainterAddress+"' ,painterContectNo = '"+apaintercontectNo+"'  ,painterBuildArea = '"+abuildArea+"'where painterId = " + fetch;

            (item.FindControl("painterImg") as FileUpload).SaveAs(Server.MapPath("photos/painters/") + apainterImg);
        }

        int n = con.allQuery(query);
        if (n > 0)
        {
            Response.Write("<script>alert('updated')</script>");
            loadData();
        }
    }
  
    

   
}
