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
       
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        string apainterName = painterName.Text;
        string apainterRate = painterRate.Text;
        string apainterImg = painterImg.FileName;
        string apainterCity = PainterCity.Text;
        string apainterArea = painterArea.Text;
        string apainterAddress = painterAddress.Text;
        string apaintercontectNo = painterno.Text;
        string abuildArea = buildArea.Text;
        string query = "insert into painters(painterName,painterPrice,painterImage,painterCity,painterArea,painterAddress,painterContectNo,painterBuildArea) values('" + apainterName + "','" + apainterRate + "','" + apainterImg + "','" + apainterCity + "','" + apainterArea + "','" + apainterAddress + "','" + apaintercontectNo + "','"+abuildArea+"')";
        
        int n = con.allQuery(query);
        if(n > 0)
        {
            painterImg.SaveAs(Server.MapPath("photos/painters/") + apainterImg);
            Response.Write("<script>alert('inserted')</script>");
        }
    }
}