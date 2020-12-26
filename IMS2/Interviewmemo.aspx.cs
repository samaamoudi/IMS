using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IMS2
{
    public partial class Interviewmemo : System.Web.UI.Page
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["CaseID"];
            CaseIDlb.Text = id;
        }

        protected void isavebtn_Click(object sender, EventArgs e)
        {
            Investigation_management_systemEntities4 db = new Investigation_management_systemEntities4();

            Interview_Memo t = new Interview_Memo();

            t.Investigation_Interview_ID = Convert.ToInt32(CaseIDlb.Text);



            t.Investigation_Interview_Memo = imemotxt.Text;

            db.Interview_Memo.Add(t);


            int res = db.SaveChanges();

            if (res > 0)
            {

                LabelInterview.Text = "Data Inserted Successfully";

            }
            else
            {

                LabelInterview.Text = "Try Again!!!";

            }


            //Response.Write(newID);
            //Response.Redirect("QandA.aspx?Investigation_Interview_ID =" + newID);
        }
    }
}