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
            }
        }


        protected void inextbtn_Click(object sender, EventArgs e)
        {
            Investigation_management_systemEntities4 db = new Investigation_management_systemEntities4();

            Investigation_Interview t = new Investigation_Interview();

            t.Investigation_Interview_Interviewer_ID = Interviewertxt.Text;
            t.Investigation_Interview_Interviewee_ID = intervieweetxt.Text;
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

            int newID = t.Investigation_Interview_ID;


            Response.Redirect("QandA.aspx?CaseID=" + newID);

            //Response.Write(newID);
            //Response.Redirect("QandA.aspx?Investigation_Interview_ID =" + newID);
        }


    }
}
