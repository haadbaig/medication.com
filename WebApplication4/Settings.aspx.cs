using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


namespace WebApplication4
{
    public partial class docSettings : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            myDAL da = new myDAL();
            if(da.changeDetails(TextBox3.Text, TextBox5.Text, TextBox6.Text, TextBox7.Text, Session["user"].ToString()))
            {
                Response.Redirect("./login");
                Response.Write("<script>alert('You have been logged out. Please Login again.');</script>");
            }
            else
            {
                Response.Redirect(Request.RawUrl);
                Response.Write("<script>alert('Changes cannot be made due to some reason. Try later.');</script>");
            }
        }
    }
}