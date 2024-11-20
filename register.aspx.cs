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
   

    protected void btnlogin_Click(object sender, EventArgs e)
{
    string regname = name.Text;
    string reggender = genddl.Text;
    string regdate = date.Text;
    string regaddress = Address.Text;
    string regcity = City.Text;
    string regmobileno = MobileNo.Text;
    string regemail = Email.Text;
    string regpassword = pass.Text;

    string query = "insert into users(userName,userPassword,userNomber,UserBirthdate,UserGender,UserEmail,UserAddress,UserCity) values('"+regname+"','"+regpassword+"','"+regmobileno+"','"+regdate+"','"+reggender+"','"+regemail+"','"+regaddress+"' ,'"+regcity+"')";

    int n = con.allQuery(query);
        if(n > 0)
        {
            Response.Write("<script>alert('User Registered')</script>");
        }
        name.Text = date.Text = Address.Text = City.Text = MobileNo.Text = Email.Text = string.Empty;
        

}

}