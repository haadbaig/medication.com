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
            if (!Page.IsPostBack)
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
        }

        protected void repeaterControl_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //char[] s;
            //s = Page.Request.Form["docName"].ToCharArray();
            string username = (sender as Button).CommandArgument;

            Session["docName"] = username;
            Session["user"] = Session["user"].ToString();
            Response.Redirect("./docPreviewPage.aspx");
        }
    }
}