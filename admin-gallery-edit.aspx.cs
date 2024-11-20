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
        fetch = Request.QueryString["gid"];
        if (!IsPostBack)
            loadData();
    }
    public void loadData()
    {
       editgallery.DataSource = con.allRecord("select * from gallery where galleryId = " + fetch);
        editgallery.DataBind();

    }
    protected void btnedit_Click(object sender, EventArgs e)
    {
        Button editbtn = sender as Button;
        RepeaterItem item = editbtn.NamingContainer as RepeaterItem;

        string agalleryImg = (item.FindControl("galleryImg") as FileUpload).FileName;
        string agalleryTitle =(item.FindControl("galleryTitle") as TextBox).Text;
        string apainterId = (item.FindControl("painterId") as DropDownList).Text;
        string oldimg = (item.FindControl("oldimg") as HiddenField).Value;
        string query = "";
        if (!(item.FindControl("galleryImg") as FileUpload).HasFile)
        {
            query = "update gallery set galleryImage = '"+oldimg+"',galleryTitle = '"+agalleryTitle+"',painterId = '"+apainterId+"' where galleryId = " + fetch;
        }
        else
        {
            query = "update gallery set galleryImage = '" + agalleryImg + "',galleryTitle = '" + agalleryTitle + "',painterId = '" + apainterId + "' where galleryId = " + fetch;

            (item.FindControl("galleryImg") as FileUpload).SaveAs(Server.MapPath("photos/gallarys/") + agalleryImg);
        }

        int n = con.allQuery(query);
        if (n > 0)
        {
            Response.Write("<script>alert('updated')</script>");
            loadData();
        }
    }
  
    protected void editgallery_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        DropDownList painterId = e.Item.FindControl("painterId") as DropDownList;
        painterId.DataSource = con.allRecord("select * from painters");
        painterId.DataTextField = "painterName";
        painterId.DataValueField = "painterId";
        painterId.DataBind();
        painterId.Text = con.allRecord("select * from gallery where galleryId = " + fetch).Rows[0]["painterId"].ToString();
    }
}