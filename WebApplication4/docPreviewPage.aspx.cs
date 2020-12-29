using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using WebApplication4;

namespace WebApplication4
{
    public partial class docPreviewPage : System.Web.UI.Page
    {
        myDAL md = new myDAL();
        protected void Page_Load(object sender, EventArgs e)
        {
            string doc = Session["docName"].ToString();
            dName.Text = doc;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlCon1"].ConnectionString);
            string query = "SELECT * FROM Comment WHERE [to] = @doc";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.CommandType = CommandType.Text;
            cmd.Parameters.AddWithValue("@doc", doc);
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter();
            da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            
            repeater1.DataSource = ds;
            repeater1.DataBind();

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlCon1"].ToString());
            con.Open();
            string query = "INSERT INTO dbo.comment (body,[time],[to],[from]) VALUES (@body,@time,@to,@from)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.CommandType = CommandType.Text;

            string doc = Session["docName"].ToString();
            string us = Session["user"].ToString();
            
            
            cmd.Parameters.AddWithValue("@body", addComm.Value.ToString());
            cmd.Parameters.AddWithValue("@time", DateTime.Now.ToString());
            cmd.Parameters.AddWithValue("@to",doc);
            cmd.Parameters.AddWithValue("@from", us);
            int Result = cmd.ExecuteNonQuery();
            cmd.Dispose();
            Response.Redirect(Request.RawUrl);
        }

        protected void Unnamed1_Click1(object sender, EventArgs e)
        {
            if (md.setAppointment(Session["docName"].ToString(), Session["User"].ToString()))
            {
                Response.Write("<script>alert('Appointment has been set. Doctor will get back to you shortly.');</script>");
            }
            else
            {
                Response.Write("<script>alert('Booking failed.');</script>");
            }
        }
    }
}