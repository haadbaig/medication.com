using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class userProfilePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                userNm.Text = Session["user"].ToString();
            }
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            Session["user"] = Session["user"].ToString();
            Response.Redirect("docPage.aspx");
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            Session["user"] = Session["user"].ToString();
            Response.Redirect("./Settings.aspx");
        }
    }
}