using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IMS2
{
    public partial class Homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void GridView3_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Response.Redirect("CasesDetails.aspx?CaseID=" + GridView2.SelectedRow.Cells[0].Text);
            Response.Redirect("CasesDetails.aspx?CaseID=" + GridView3.SelectedRow.Cells[0].Text);
        }

        protected void GridView3_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView3.PageIndex = e.NewPageIndex;
            GridView3.DataBind();


        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Response.Redirect("CasesDetails.aspx?CaseID=" + GridView2.SelectedRow.Cells[0].Text);
            Response.Redirect("CasesDetails.aspx?CaseID=" + GridView2.SelectedRow.Cells[0].Text);
        }

        protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView2.PageIndex = e.NewPageIndex;
            GridView2.DataBind();


        }
    }
}