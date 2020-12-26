using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IMS2
{
    public partial class TerminationRequest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

            if (IsPostBack)
            //if the user clicked on the submit button, and the page is refreshing
            {
                Validate();

                //if (Page.IsValid)
                //{
                //    successLabel.Text = "All Required Fields are Filled and Valid";
                //}
                //else
                //{
                //    successLabel.Text = "";
                //}
            }
        }



        protected void trsavebtn_Click(object sender, EventArgs e)
        {
            Investigation_management_systemEntities4 db = new Investigation_management_systemEntities4();

            Termination_Request tr = new Termination_Request();

            tr.Termination_Request_Date = Convert.ToDateTime(trDatetxt.Text);
            tr.Termination_Request_Justification = Justificationtxt.Text;
            tr.Case_ID = int.Parse(trDropDownList.SelectedValue);
            tr.Employee_ID = trEmptxt.Text;

            var userinfo = (from a in db.Employees
                            where a.Employee_ID == trEmptxt.Text
                            select new LoginRecords
                            {
                                UserID = a.Employee_ID,

                            }).FirstOrDefault();

            db.Termination_Requests.Add(tr);

            if (userinfo != null)
            {
                int res = db.SaveChanges();

                if (res > 0)
                {

                    LabelTermination.Text = "Data Inserted Successfully";

                }
                else
                {

                    LabelTermination.Text = "Try Again!!!";

                }
               
            }
            else LabelTermination.Text = "Invalid username";
        }
    }
}