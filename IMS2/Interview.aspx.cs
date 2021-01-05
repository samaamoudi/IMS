using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IMS2
{
    public partial class Interview : System.Web.UI.Page
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


        protected void inextbtn_Click(object sender, EventArgs e)
        {
            Investigation_management_systemEntities4 db = new Investigation_management_systemEntities4();

            Investigation_Interview t = new Investigation_Interview();

            //var userinfo = (from a in db.Employees
            //                where a.Employee_ID == Interviewertxt.Text
            //                select new LoginRecords
            //                {
            //                    UserID = a.Employee_ID,

            //                }).FirstOrDefault();




            t.Investigation_Interview_Interviewer_ID = CHlbl.Text;
            t.Investigation_Interview_Interviewee_ID = EmpDropDownList.SelectedValue;
            t.Case_ID = int.Parse(iDropDownList.SelectedValue);
            t.Investigation_Interview_Date = Convert.ToDateTime(idatetxt.Text);
            t.Investigation_Interview_Location = ilocationtxt.Text;
            t.Investigation_Interview_Time = itimetxt.Text;
            //t.Investigation_Interview_Memo = imemotxt.Text;

            db.Investigation_Interview.Add(t);

            int res = db.SaveChanges();

            if (res > 0)
            {

                LabelInterview.Text = "Data Inserted Successfully";

            }
            else
            {

                LabelInterview.Text = "Try Again!!!";
            }
        


            

            //if (userinfo != null)
            //{
            //    int res = db.SaveChanges();

            //    if (res > 0)
            //    {

            //        LabelInterview.Text = "Data Inserted Successfully";

            //    }
            //    else
            //    {

            //        LabelInterview.Text = "Try Again!!!";


            //    }
            //}
            /*else LabelInterview.Text = "Invalid username"*/
            int newID = t.Investigation_Interview_ID;


            Response.Redirect("QandA.aspx?CaseID=" + newID);

            //Response.Write(newID);
            //Response.Redirect("QandA.aspx?Investigation_Interview_ID =" + newID);
        }
        


    }
}
