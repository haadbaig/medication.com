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
    public partial class medSt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlCon1"].ToString());
            try
            {
                /* Because We will put all out values from our (UserRegistration.aspx) To in Bussiness object and then Pass it to Bussiness logic and then to DataAcess  this way the flow carry on*/
                con.Open();
                string query = "INSERT INTO dbo.[user] (username,email,pw,bio,[description],phone, Gender, age, [name]) VALUES (@username,@email, @pw, @bio, @[description], @phone, @Gender, @age, @[name])";
                string query2 = "INSERT INTO dbo.[user] (username,[name], rating) VALUES (@username, @[name], @rating)";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlCommand cmd2 = new SqlCommand(query2, con);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@username", TextBox2.Text);
                cmd2.Parameters.AddWithValue("@username", TextBox2.Text);
                cmd.Parameters.AddWithValue("@email", TextBox1.Text);
                cmd.Parameters.AddWithValue("@pw", txtPassword.Text);
                cmd.Parameters.AddWithValue("@country", DropDownList1.SelectedValue.ToString());
                cmd.Parameters.AddWithValue("@[name]", txtName.Text);
                cmd2.Parameters.AddWithValue("@[name]", txtName.Text);
                cmd.Parameters.AddWithValue("@[description]", "");
                cmd.Parameters.AddWithValue("@gender", -1);
                cmd.Parameters.AddWithValue("@phone", "");
                cmd.Parameters.AddWithValue("@age", "");
                cmd2.Parameters.AddWithValue("@rating", 0);
                
                int Result = cmd.ExecuteNonQuery();
                int Result2 = cmd2.ExecuteNonQuery();
                cmd.Dispose();
            }
            catch
            {
                throw;
            }
        }
    }
}