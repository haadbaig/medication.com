using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class deleteMedicine : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            myDAL d = new myDAL();
            if (d.deleteMedicines(Session["user"].ToString(), medN.Value))
            {
                Session["user"] = Session["user"].ToString();
                Response.Redirect("medStUSPage.aspx");
            }
            else
            {
                Response.Write("<script>alert('No such medicine found in database.');</script>");
            }
        }
    }
}