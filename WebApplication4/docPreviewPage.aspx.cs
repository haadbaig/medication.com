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
    public partial class docPreviewPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlCon1"].ConnectionString);
            string query = "EXEC selectDoc @doc = @docc";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@docc", );

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            string us = Session["user"].ToString();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlCon1"].ConnectionString);
            string query = "INSERT INTO dbo.comment (body,[time],[to],[from]) VALUES (@body,@time,@to,@from)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.CommandType = CommandType.Text; 
            cmd.Parameters.AddWithValue("@body", addComm.Value.ToString());
            cmd.Parameters.AddWithValue("@time", DateTime.Now.ToString());
            cmd.Parameters.AddWithValue("@to", docName.InnerText.ToString());
            cmd.Parameters.AddWithValue("@from", us);
        }
    }
}