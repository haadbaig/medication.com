using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication4
{
    public class myDAL
    {
        private static readonly string conStr = System.Configuration.ConfigurationManager.ConnectionStrings["medicalWebsite"].ConnectionString;
        public DataSet SelectItem()
        {
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(conStr);
            con.Open();
            SqlCommand cmd;
            try
            {
                cmd = new SqlCommand("SELECT u.username FROM [User] u WHERE u.username LIKE @username AND u.pw LIKE @pw", con);
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    da.Fill(ds);
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("SQL Error: " + ex.Message.ToString());
            }
            finally
            {
                con.Close();
            }
            return ds;
        }
    }
}