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


        //protected void Button2_Click(object sender, EventArgs e)
        //{
        //    Investigation_management_systemEntities4 db = new Investigation_management_systemEntities4();

        //    Termination_Request tr = new Termination_Request();

        //    tr.Termination_Request_Date = Convert.ToDateTime(Datetxt.Text);
        //    tr.Termination_Request_Justification = Justificationtxt.Text;
        //    tr.Case_ID = Convert.ToInt32(Casetxt.Text);
        //    tr.Employee_ID = Emptxt.Text;

        //    db.Termination_Requests.Add(tr);

        //    int res = db.SaveChanges();

        //    if (res > 0)
        //    {

        //        Response.Write("Data Inserted Successfully");

        //    }
        //    else
        //    {

        //        Response.Write("Try Again!!!");

        //    }

        //}

        protected void trsavebtn_Click(object sender, EventArgs e)
        {
            Investigation_management_systemEntities4 db = new Investigation_management_systemEntities4();

            Termination_Request tr = new Termination_Request();

            tr.Termination_Request_Date = Convert.ToDateTime(trDatetxt.Text);
            tr.Termination_Request_Justification = Justificationtxt.Text;
            tr.Case_ID = int.Parse(trDropDownList.SelectedValue);
            tr.Employee_ID = trEmptxt.Text;

            db.Termination_Requests.Add(tr);

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
    }
}