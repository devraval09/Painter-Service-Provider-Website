using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _Default: System.Web.UI.Page
{
    ConnectionClass con;
  
    
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new ConnectionClass();

    }
   
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        String uname, pwrd;
        uname = txtemail.Text;
        pwrd = txtpass.Text;

        DataTable user = con.allRecord("select * from users where userEmail='" + uname + "'");
        DataTable admin = con.allRecord("select * from admins where adminEmail='" + uname + "'");
        if(user.Rows.Count>0 && user.Rows[0]["userPassword"].ToString()==pwrd)
        {
            Session["userId"] = user.Rows[0]["userId"];
           
                Response.Write("<script>alert('User Registered')</script>");
                Response.Redirect("index.aspx");
        
        

        }
        else if (admin.Rows.Count>0 && admin.Rows[0]["adminPassword"].ToString()==pwrd)
        {
            Session["adminId"]= admin.Rows[0]["adminid"];
        
                Response.Write("<script>alert('admin Registered')</script>");
                Response.Redirect("admin-index.aspx");
         
        
        }
        else
        {
          
                Response.Write("<script>alert('try again','password is wrong','email is incorect')</script>");
          

        
 
        }

    }
}