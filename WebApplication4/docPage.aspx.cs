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
    public partial class docPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlCon1"].ToString());
            con.Open();
            string query = "Select * from [User] where [User].username IN(SELECT dd.username FROM Doctor dd)";
            SqlCommand cmd = new SqlCommand(query, con);
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter();
            da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            ds.Tables[0].Rows[0]["name"].ToString();
            repeaterControl.DataSource = ds;
            repeaterControl.DataBind();
        }

        protected void repeaterControl_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void docProfile_Click (object source, RepeaterCommandEventArgs e)
        {
            Session["user"] = ;
            Response.Redirect("docPreviewPage.aspx");
        }
    }
}