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
        con =new ConnectionClass();        
    }
    protected void Sand_Click(object sender, EventArgs e)
    {
        string ContectName= Name.Text;
        string ContectSubject = Subject.Text;
        string ContectMessage = Massage.Text;
        string query = ("insert into Contacts(ContectName,Subject,Message) values('" + ContectName + 
            "','" + ContectSubject + "','" + ContectMessage + "')");

        int n = con.allQuery(query); 
        if (n > 0)
        {
            Response.Write("<script>alert('Massage Sanded')</script>");
        }
        Name.Text =  Subject.Text = Massage.Text= string.Empty;

    }
}