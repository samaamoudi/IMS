using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IMS2
{
    public partial class QandA : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["CaseID"];
            CaseIDlb.Text = id;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Investigation_management_systemEntities4 db = new Investigation_management_systemEntities4();

            QuestionsAnswer qa = new QuestionsAnswer();


            //c.Requester_ID = requestertxt.Text;
            //c.Employee_ID = accusedtxt.Text;
            //c.Case_Details = casedetailstxt.Text;
            //c.Case_Start_Date = Convert.ToDateTime(datetxt.Text);
            //c.Case_Type = int.Parse(DropDownList1.SelectedValue);

            qa.Question_ID = int.Parse(DropDownList1.SelectedValue);
            qa.Investigation_Interview_ID = Convert.ToInt32(CaseIDlb.Text);
            qa.Answer_Details = answertxt.Text;


            db.QuestionsAnswers.Add(qa);

            int res = db.SaveChanges();

            if (res > 0)
            {

                Response.Write("Data Inserted Successfully");

            }
            else
            {

                Response.Write("Try Again!!!");

            }
            int newID = qa.Investigation_Interview_ID;
            Response.Redirect("Interviewmemo.aspx?CaseID=" + newID);


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("QandA.aspx");
        }
    }
}