using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_gallery_add : System.Web.UI.Page
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
    protected void btnadd_Click(object sender, EventArgs e)
    {
       
        string agalleryImg =galleryImg.FileName;
        string agalleryTitle = galleryTitle.Text;
        string apainterId = painterId.Text;
        string query = "insert into gallery(galleryImage,galleryTitle,painterId) values('" + 
            agalleryImg + "','" + 
            agalleryTitle + "','" + 
            apainterId + "')";
       
        
        int n = con.allQuery(query);
        if (n > 0)
        {
            galleryImg.SaveAs(Server.MapPath("photos/gallarys/") + agalleryImg);
            Response.Write("<script>alert('inserted')</script>");
        }
    }
}