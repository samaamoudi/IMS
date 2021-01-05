using System;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace IMS2
{
    public partial class EmpCasesDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["CaseID"]);
            lpCaseID.Text = id.ToString();
            //int evidid= int.Parse(Request.QueryString["CaseID"]);
            lbEvid.Text = id.ToString();
            //InterviewLabel.Text = id.ToString();
            //TerminationLabel.Text = id.ToString();
            InviteLabel.Text = id.ToString();
            EvidRequest.Text = id.ToString();

            UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

            if (!IsPostBack)
            {
                Tab1.CssClass = "Clicked";
                MainView.ActiveViewIndex = 0;
                Validate();
            }
        }


        protected void DownloadFile(object sender, EventArgs e)
        {
            int Evidence_ID = int.Parse((sender as LinkButton).CommandArgument);
            byte[] bytes;
            string fileName, contentType;
            string constr = ConfigurationManager.ConnectionStrings["Investigation_management_systemConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.CommandText = "select FileName, FileData, FileContentType from Evidence where Evidence_ID=@Evidence_ID";
                    cmd.Parameters.AddWithValue("@Evidence_ID", Evidence_ID);
                    cmd.Connection = con;
                    con.Open();
                    using (SqlDataReader sdr = cmd.ExecuteReader())
                    {
                        sdr.Read();
                        bytes = (byte[])sdr["FileData"];
                        contentType = sdr["FileContentType"].ToString();
                        fileName = sdr["FileName"].ToString();
                    }
                    con.Close();
                }
            }
            Response.Clear();
            Response.Buffer = true;
            Response.Charset = "";
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = contentType;
            Response.AppendHeader("Content-Disposition", "attachment; fileName=" + fileName);
            Response.BinaryWrite(bytes);
            Response.Flush();
            Response.End();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmpCases.aspx");
        }

        protected void Tab1_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Clicked";
            Tab2.CssClass = "Initial";
            Tab3.CssClass = "Initial";
            Tab4.CssClass = "Initial";
            //Tab5.CssClass = "Initial";
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
            //Tab5.CssClass = "Initial";
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
            //Tab5.CssClass = "Initial";
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
            //Tab5.CssClass = "Initial";
            //Tab6.CssClass = "Initial";
            //Tab7.CssClass = "Initial";
            MainView.ActiveViewIndex = 3;

        }
        //protected void Tab5_Click(object sender, EventArgs e)
        //{
        //    Tab1.CssClass = "Initial";
        //    Tab2.CssClass = "Initial";
        //    Tab3.CssClass = "Initial";
        //    Tab4.CssClass = "Initial";
        //    Tab5.CssClass = "Clicked";
        //    Tab6.CssClass = "Initial";
        //    //Tab7.CssClass = "Initial";
        //    MainView.ActiveViewIndex = 4;
        //}
        //protected void Tab6_Click(object sender, EventArgs e)
        //{
        //    Tab1.CssClass = "Initial";
        //    Tab2.CssClass = "Initial";
        //    Tab3.CssClass = "Initial";
        //    Tab4.CssClass = "Initial";
        //    Tab5.CssClass = "Initial";
        //    Tab6.CssClass = "Clicked";
        //    Tab7.CssClass = "Initial";
        //    MainView.ActiveViewIndex = 5;
        //}
        //protected void Tab7_Click(object sender, EventArgs e)
        //{
        //    Tab1.CssClass = "Initial";
        //    Tab2.CssClass = "Initial";
        //    Tab3.CssClass = "Initial";
        //    Tab4.CssClass = "Initial";
        //    Tab5.CssClass = "Initial";
        //    Tab6.CssClass = "Initial";
        //    Tab7.CssClass = "Clicked";
        //    MainView.ActiveViewIndex = 6;
        //}
    }
}