using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IMS2
{
    public partial class Employee1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                {
                    lbId.Text = Session["emID"].ToString();
                    lbEmName.Text = Session["name"].ToString();

                }
            }
        }
    }
}