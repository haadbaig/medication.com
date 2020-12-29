using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace WebApplication4
{
    public partial class docUsPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string name = Session["user"].ToString();
            myDAL d = new myDAL();
            DataSet da = d.showAppointments(name);
            repeater1.DataSource = da;
            repeater1.DataBind();
            DataSet da1 = d.showComments(name);
            repeater2.DataSource = da1;
            repeater2.DataBind();

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Session["user"] = Session["user"].ToString();
            Response.Redirect("./Settings.aspx");
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            
        }

        protected void Unnamed_Click1(object sender, EventArgs e)
        {
            myDAL d = new myDAL();
            string s1 = Session["user"].ToString();
            string s2 = (sender as LinkButton).CommandArgument;
            d.deleteAppointments(s1, s2);

            Response.Redirect(Request.RawUrl);

        }
    }
}