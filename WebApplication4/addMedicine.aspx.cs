using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebApplication4
{
    public partial class forgetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            myDAL d = new myDAL();
            if(d.addMedicines(Session["user"].ToString(), medN.Value))
            {
                Session["user"] = Session["user"].ToString();
                Response.Redirect("medStUsPage.aspx");
            }
        }
    }
}