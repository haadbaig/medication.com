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

        public DataSet showMedicines(string medst)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlCon1"].ConnectionString);
            string query = "SELECT * FROM Medic WHERE msId = @medst";
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@medst", medst);
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

        public bool addMedicines(string medst, string medName)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlCon1"].ConnectionString);
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("addMedicines", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.Add("@msid", SqlDbType.VarChar, 20).Value = medst;
                cmd.Parameters.Add("@medid", SqlDbType.VarChar, 30).Value = medName;
                int Result = cmd.ExecuteNonQuery();                
                return true;
            }
            catch
            {
                throw;
                return false;
            }
        }

        public bool deleteMedicines(string medst, string medName)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlCon1"].ConnectionString);
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("delMedicines", con); 
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.Add("@msid", SqlDbType.VarChar, 20).Value = medst;
                cmd.Parameters.Add("@medid", SqlDbType.VarChar, 30).Value = medName;
                int Result = cmd.ExecuteNonQuery();
                return true;
            }
            catch
            {
                return false;
            }
        }

        public void deleteAccount(string email, string username, string pw)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlCon1"].ConnectionString);
                string query = "SELECT u.username FROM [User] u WHERE u.username LIKE @username AND u.pw LIKE @pw";
                string query1 = "SELECT d.username FROM Doctor d WHERE d.username LIKE @username";
                string query2 = "SELECT m.username FROM MedicalStore m WHERE m.username = @username";
                SqlCommand command = new SqlCommand(query, con);
                SqlCommand command1 = new SqlCommand(query1, con);
                SqlCommand command2 = new SqlCommand(query2, con);
                command.Parameters.AddWithValue("@username", username);
                command.Parameters.AddWithValue("@pw", pw);
                command1.Parameters.AddWithValue("@username", username);
                command2.Parameters.AddWithValue("@username", username);
                con.Open();

                int res = command.ExecuteNonQuery();
                int res1 = command1.ExecuteNonQuery();
                int res2 = command2.ExecuteNonQuery();
                SqlDataAdapter sa = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                sa.Fill(ds);
                // to check if its doctor 
                SqlDataAdapter sa1 = new SqlDataAdapter(command1);
                DataSet ds1 = new DataSet();
                sa1.Fill(ds1);
                // to check if its medStr
                SqlDataAdapter sa2 = new SqlDataAdapter(command2);
                DataSet ds2 = new DataSet();
                sa2.Fill(ds2);

                if (ds.Tables[0].Rows.Count > 0)
                {
                    if (ds1.Tables[0].Rows.Count > 0)
                    {
                        //appointments, doctor, user, comment
                        query1 = "DELETE FROM comment WHERE [to] LIKE @username";
                        command1 = new SqlCommand(query1, con);
                        command1.Parameters.AddWithValue("@username", username);
                        res1 = command1.ExecuteNonQuery();

                        query1 = "DELETE FROM Appointments WHERE dUser LIKE @username";
                        command1 = new SqlCommand(query1, con);
                        command1.Parameters.AddWithValue("@username", username);
                        res1 = command1.ExecuteNonQuery();
                        
                        query1 = "DELETE FROM Doctor WHERE username LIKE @username";
                        command1 = new SqlCommand(query1, con);
                        command1.Parameters.AddWithValue("@username", username);
                        res1 = command1.ExecuteNonQuery();
                        
                        query1 = "DELETE FROM [User] WHERE username LIKE @username";
                        command1 = new SqlCommand(query1, con);
                        command1.Parameters.AddWithValue("@username", username);
                        res1 = command1.ExecuteNonQuery();
                    }
                    else if (ds2.Tables[0].Rows.Count > 0)
                    {
                        //medic,medicalStore,User
                        query1 = "DELETE FROM Medic WHERE msId LIKE @username";
                        command1 = new SqlCommand(query1, con);
                        command1.Parameters.AddWithValue("@username", username);
                        res1 = command1.ExecuteNonQuery();
                        
                        query1 = "DELETE FROM MedicalStore WHERE username LIKE @username";
                        command1 = new SqlCommand(query1, con);
                        command1.Parameters.AddWithValue("@username", username);
                        res1 = command1.ExecuteNonQuery();
                        
                        query1 = "DELETE FROM [User] WHERE username LIKE @username";
                        command1 = new SqlCommand(query1, con);
                        command1.Parameters.AddWithValue("@username", username);
                        res1 = command1.ExecuteNonQuery();

                    }
                    else if (ds.Tables[0].Rows.Count > 0)
                    {
                        //Appointments
                        query1 = "DELETE FROM Appointments WHERE pUser LIKE @username";
                        command1 = new SqlCommand(query1, con);
                        command1.Parameters.AddWithValue("@username", username);
                        res1 = command1.ExecuteNonQuery();
                        
                        query1 = "DELETE FROM [User] WHERE username LIKE @username";
                        command1 = new SqlCommand(query1, con);
                        command1.Parameters.AddWithValue("@username", username);
                        res1 = command1.ExecuteNonQuery();
                    }

                }
            }
            catch
            {
                throw;
            }
        }

        public DataSet showPharmacies()
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlCon1"].ConnectionString);
            string query = "SELECT * FROM MedicalStore";
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.CommandType = CommandType.Text;
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


    }
}

