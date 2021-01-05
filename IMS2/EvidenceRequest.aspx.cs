using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IMS2
{
    public partial class EvidenceRequest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

            if (!IsPostBack)
            {

                Validate();
                CHlbl.Text = Session["empID"].ToString();
            }
        }

       

        protected void evidsubmitbtn_Click(object sender, EventArgs e)
        {
            Investigation_management_systemEntities4 db = new Investigation_management_systemEntities4();

            Evidence_Request evid = new Evidence_Request();

            //var userinfo = (from a in db.Employees
            //                where a.Employee_ID == EmpDropDownList.SelectedValue
            //                select new LoginRecords
            //                {
            //                    UserID = a.Employee_ID,

            //                }).FirstOrDefault();

            evid.Evidence_Request_Details = evidtxt.Text;
            evid.Case_Handler = CHlbl.Text;
            evid.Employee = EmpDropDownList.SelectedValue;
            evid.Case_ID = int.Parse(casedropdownlist.SelectedValue);
            evid.evidence_request_date = Convert.ToDateTime(datetxt.Text);

            db.Evidence_Request.Add(evid);

            int res = db.SaveChanges();

            if (res > 0)
            {

                labelevid.Text = "Data Inserted Successfully";

            }
            else
            {

                labelevid.Text = "Try Again!!!";

            }

            //if (userinfo != null)
            //{
            //    int res = db.SaveChanges();

            //    if (res > 0)
            //    {

            //        labelevid.Text = "Data Inserted Successfully";

            //    }
            //    else
            //    {

            //        labelevid.Text = "Try Again!!!";

            //    }
            //}
            //else labelevid.Text = "Invalid User ID";
        }
    }
}
