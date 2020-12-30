using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebApplication4
{
    public partial class medicPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            myDAL d = new myDAL();
            DataSet ds = d.showPharmacies();
            repeater1.DataSource = ds;
            repeater1.DataBind();
        }
    }
}