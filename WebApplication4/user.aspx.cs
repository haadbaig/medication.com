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
    public partial class user : System.Web.UI.Page
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
                string query = "INSERT INTO dbo.[user] (username,email,pw,bio,[description],phone, Gender, age, [name]) VALUES (@username,@email, @pw, @bio, @description, @phone, @Gender, @age, @name)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.AddWithValue("@username", TextBox3.Text);
                cmd.Parameters.AddWithValue("@email", TextBox1.Text);
                cmd.Parameters.AddWithValue("@pw", txtPassword.Text);
                cmd.Parameters.AddWithValue("@bio", "");
                cmd.Parameters.AddWithValue("@description", "");
                cmd.Parameters.AddWithValue("@phone", "");
                if (Male.Checked == true)
                {
                    cmd.Parameters.AddWithValue("@Gender", 1);
                }
                else if (Female.Checked == true)
                {
                    cmd.Parameters.AddWithValue("@Gender", 0);
                }
                //cmd.Parameters.AddWithValue("@age", ObjBO.Age);
                cmd.Parameters.AddWithValue("@name", txtName.Text + ' ' + TextBox2.Text);
                cmd.Parameters.AddWithValue("@age", TextBox5.Text[0]);
                int Result = cmd.ExecuteNonQuery();
                cmd.Dispose();
                Response.Redirect("./login.aspx");
            }
            catch
            {
                Response.Redirect(Request.RawUrl);
                Response.Write("<script>alert('SignUp failed');</script>");

            }
        }
    }
}