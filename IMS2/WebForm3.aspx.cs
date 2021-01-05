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
            UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

            if (!IsPostBack)
            {

                Validate();
                CHlbl.Text = Session["empID"].ToString();
              
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Investigation_management_systemEntities4 te = new Investigation_management_systemEntities4();



            InvestigationCase1 c = new InvestigationCase1();

            //var userinfo = (from a in te.Employees
            //                where a.Employee_ID == requestertxt.Text
            //                select new LoginRecords
            //                {
            //                    UserID = a.Employee_ID,

            //                }).FirstOrDefault();





            c.Requester_ID = CHlbl.Text;
            c.Employee_ID = EmpDropDownList.SelectedValue;
            //c.Employee_ID = accusedtxt.Text;
            c.Case_Details = casedetailstxt.Text;
            c.Case_Start_Date = Convert.ToDateTime(datetxt.Text);
            c.Case_Type = int.Parse(DropDownList1.SelectedValue);
            //c.Case_Type = Convert.ToInt32(TextBox1.Text);





            te.InvestigationCase1.Add(c);



            int res = te.SaveChanges();

            if (res > 0)
            {
                Label7.Text = "Data Inserted Successfully";


            }
            else
            {

                Label7.Text = "Try Again!!!";

            }


            int newID = c.Case_ID;

            string requesterID = c.Requester_ID;
            //Response.Write(newID);

            //Response.Redirect("Evidence.aspx?CaseID=" + newID + requesterID);
            Response.Redirect(String.Format("EmpEvidence.aspx?CaseID={0}&Requester_ID={1}", newID, requesterID));

            //insert it into table
            //if (userinfo != null)
            //{
            //    int res = te.SaveChanges();

            //    if (res > 0)
            //    {
            //        Label7.Text = "Data Inserted Successfully";


            //    }
            //    else
            //    {

            //        Label7.Text = "Try Again!!!";

            //    }
            //}
            //else Label7.Text = "Invalid username";
            //int newID = c.Case_ID;

            //string requesterID = c.Requester_ID;
            ////Response.Write(newID);

            ////Response.Redirect("Evidence.aspx?CaseID=" + newID + requesterID);
            //Response.Redirect(String.Format("EmpEvidence.aspx?CaseID={0}&Requester_ID={1}", newID, requesterID));
            //Response.Redirect(String.Format("~/page2.aspx?x={0}&y={1}", p1.x, p1.y));
        }
    }
}