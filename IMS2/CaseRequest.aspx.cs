using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IMS2
{
    public partial class CaseRequest : System.Web.UI.Page
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

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Investigation_management_systemEntities4 te = new Investigation_management_systemEntities4();



            InvestigationCase1 c = new InvestigationCase1();




            c.Requester_ID = requestertxt.Text;
            c.Employee_ID = accusedtxt.Text;
            c.Case_Details = casedetailstxt.Text;
            c.Case_Start_Date = Convert.ToDateTime(datetxt.Text);
            c.Case_Type = int.Parse(DropDownList1.SelectedValue);
            //c.Case_Type = Convert.ToInt32(TextBox1.Text);





            te.InvestigationCase1.Add(c);




            //insert it into table
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
            //Response.Redirect(String.Format("Evidence.aspx?CaseID={0}&Requester_ID={1}", newID, requesterID));
            //Response.Redirect(String.Format("~/page2.aspx?x={0}&y={1}", p1.x, p1.y));
        }


    }
}
