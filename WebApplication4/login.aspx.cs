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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            //Console.WriteLine(System.Configuration.ConfigurationManager.ConnectionStrings["medicalWebsite"].ConnectionString);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlCon1"].ConnectionString);

            /* Because We will put all out values from our (UserRegistration.aspx) To in Bussiness object and then Pass it to Bussiness logic and then to DataAcess  this way the flow carry on*/
            string query = "SELECT u.username FROM [User] u WHERE u.username LIKE @username AND u.pw LIKE @pw";
            string query1 = "SELECT d.username FROM Doctor d WHERE d.username LIKE @username";
            string query2 = "SELECT m.username FROM MedicalStore m WHERE m.username = @username";
            SqlCommand command = new SqlCommand(query, con);
            SqlCommand command1 = new SqlCommand(query1, con);
            SqlCommand command2 = new SqlCommand(query2, con);
            command.Parameters.AddWithValue("@username", txtName.Text);
            command.Parameters.AddWithValue("@pw", txtPassword.Text);
            command1.Parameters.AddWithValue("@username", txtName.Text);
            command2.Parameters.AddWithValue("@username", txtName.Text);
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
            
            if (ds.Tables[0].Rows.Count > 0) {
                if (ds1.Tables[0].Rows.Count > 0)
                {
                    Session["user"] = txtName.Text;
                    Response.Redirect("docUsPage.aspx");
                }
                else if (ds2.Tables[0].Rows.Count > 0)
                {
                    Session["user"] = txtName.Text;
                    Response.Redirect("medStUsPage.aspx");
                }
                else if(ds.Tables[0].Rows.Count > 0)
                {
                    Session["user"] = txtName.Text;
                    Response.Redirect("userProfilePage.aspx");
                }

            }            
            

            

        }
    }
}