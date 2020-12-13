using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IMS2
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["CaseID"]);
            lpCaseID.Text = id.ToString();
            //int evidid= int.Parse(Request.QueryString["CaseID"]);
            lbEvid.Text = id.ToString();
            InterviewLabel.Text = id.ToString();
            TerminationLabel.Text = id.ToString();

            UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

            if (!IsPostBack)
            {
                Tab1.CssClass = "Clicked";
                MainView.ActiveViewIndex = 0;
                Validate();
            }
        }




        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("cases.aspx");
        }

        protected void Tab1_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Clicked";
            Tab2.CssClass = "Initial";
            Tab3.CssClass = "Initial";
            Tab4.CssClass = "Initial";
            Tab5.CssClass = "Initial";
            //Tab6.CssClass = "Initial";
            //Tab7.CssClass = "Initial";
            MainView.ActiveViewIndex = 0;
        }

        protected void Tab2_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Clicked";
            Tab3.CssClass = "Initial";
            Tab4.CssClass = "Initial";
            Tab5.CssClass = "Initial";
            //Tab6.CssClass = "Initial";
            //Tab7.CssClass = "Initial";
            MainView.ActiveViewIndex = 1;
        }

        protected void Tab3_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Initial";
            Tab3.CssClass = "Clicked";
            Tab4.CssClass = "Initial";
            Tab5.CssClass = "Initial";
            //Tab6.CssClass = "Initial";
            //Tab7.CssClass = "Initial";
            MainView.ActiveViewIndex = 2;
        }
        protected void Tab4_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Initial";
            Tab3.CssClass = "Initial";
            Tab4.CssClass = "Clicked";
            Tab5.CssClass = "Initial";
            //Tab6.CssClass = "Initial";
            //Tab7.CssClass = "Initial";
            MainView.ActiveViewIndex = 3;

        }
        protected void Tab5_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Initial";
            Tab3.CssClass = "Initial";
            Tab4.CssClass = "Initial";
            Tab5.CssClass = "Clicked";
            //Tab6.CssClass = "Initial";
            //Tab7.CssClass = "Initial";
            MainView.ActiveViewIndex = 4;
        }
    }
}