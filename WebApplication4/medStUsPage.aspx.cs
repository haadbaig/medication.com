using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebApplication4
{
    public partial class medStUsPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            myDAL d = new myDAL();
            DataSet ds = d.showMedicines(Session["user"].ToString());
            repeater1.DataSource = ds;
            repeater1.DataBind();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            Session["user"] = Session["user"].ToString();
            Response.Redirect("./addMedicine.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["user"] = Session["user"].ToString();
            Response.Redirect("./deleteMedicine.aspx");
        }
    }
}