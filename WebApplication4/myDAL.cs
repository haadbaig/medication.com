using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Web.UI;
namespace WebApplication4
{
    public class myDAL : System.Web.UI.Page
    {
        public bool setAppointment(string doc, string pat)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlCon1"].ToString());
            try
            {
                con.Open();
                string query = "INSERT INTO dbo.appointments (dUser,pUser,[date]) VALUES (@doc,@pat,@date)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@doc", doc);
                cmd.Parameters.AddWithValue("@pat", pat);
                cmd.Parameters.AddWithValue("@date", DateTime.UtcNow.Date);
                int Result = cmd.ExecuteNonQuery();
                cmd.Dispose();
                return true;
            }
            catch
            {
                throw;
                return false;
            }

        }

        public bool changeDetails(string TextBox3, string TextBox5, string TextBox6, string TextBox7, string username)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlCon1"].ToString());
            try
            {
                /* Because We will put all out values from our (UserRegistration.aspx) To in Bussiness object and then Pass it to Bussiness logic and then to DataAcess  this way the flow carry on*/
                con.Open();
                string query = "UPDATE dbo.[user] SET pw = @pw, bio = @bio, phone=@phone, age=@age WHERE username=@username";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@pw", TextBox3);
                cmd.Parameters.AddWithValue("@bio", TextBox5);
                cmd.Parameters.AddWithValue("@phone", TextBox6);
                cmd.Parameters.AddWithValue("@age", TextBox7);
                cmd.Parameters.AddWithValue("@username", username);
                int Result = cmd.ExecuteNonQuery();
                cmd.Dispose();
                return true;
            }
            catch
            {
                return false;

            }

        }

        public DataSet showAppointments(string name)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlCon1"].ConnectionString);
            string query = "SELECT * FROM Appointments WHERE dUser = @name";
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@name", name);
                int Result = cmd.ExecuteNonQuery();
                DataSet ds = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter();
                da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                return ds;
            }
            catch
            {
                throw;
                return null;
            }
        }
        
        
        public DataSet showComments(string doc)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlCon1"].ConnectionString);
            string query = "SELECT * FROM Comment WHERE [to] = @doc";
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@doc", doc);
                int Result = cmd.ExecuteNonQuery();
                DataSet ds = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter();
                da = new SqlDataAdapter(cmd);
                da.Fill(ds);
                return ds;
            }
            catch
            {
                throw;
                return null;
            }
        }

        public bool deleteAppointments(string doc, string pat)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlCon1"].ConnectionString);
            string query = "DELETE FROM Appointments WHERE dUser = @doc AND pUser = @pat";
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@doc", doc);
                cmd.Parameters.AddWithValue("@pat", pat);
                int Result = cmd.ExecuteNonQuery();
                return true;
            }
            catch
            {
                throw;
                return false;
            }
        }

    }
}

