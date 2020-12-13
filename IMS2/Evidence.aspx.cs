using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IMS2
{
    public partial class Evidence1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["CaseID"];
            CaseIDlb.Text = id;

            string rID = Request.QueryString["Requester_ID"];
            RequesterIDlb.Text = rID;
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Investigation_management_systemEntities4 db = new Investigation_management_systemEntities4();


            Evidence evid = new Evidence();

            evid.Evidence_Date = Convert.ToDateTime(datetxt.Text);
            evid.Evidence_Details = Detailstxt.Text;
            evid.Case_ID = /*Convert.ToInt32(casetxt.Text);*/ Convert.ToInt32(CaseIDlb.Text);
            evid.Evidence_Document = FileUpload1.FileBytes;
            evid.Requester_ID = RequesterIDlb.Text;
            evid.Evidence_Type = RadioButtonList1.Text;

            db.Evidences.Add(evid);

            int res = db.SaveChanges();

            if (res > 0)
            {

                Response.Write("Data Inserted Successfully");

            }
            else
            {

                Response.Write("Try Again!!!");

            }
        }
    }
}