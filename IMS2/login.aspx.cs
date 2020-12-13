using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IMS2
{
    public partial class login : System.Web.UI.Page
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

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Investigation_management_systemEntities4 db = new Investigation_management_systemEntities4();



            //string query_empID = (from c in db.Employees
            //                      where c.Employee_ID == txtUserName.Text && c.Password == txtPWD.Text
            //                      select c.Employee_ID).FirstOrDefault();

            //int temp = Convert.ToInt32(query_empID.ToString());

            //if (temp != 0)
            //{
            //    lbMessage.Text = "";
            //    string query_empName = (from x in db.Employees
            //                            where x.Employee_ID == query_empID
            //                            select x.First_Name + " " + x.Last_Name).FirstOrDefault();

            //    Response.Redirect("CaseRequest.aspx?name=" + query_empName);
            //    //Response.Redirect("Homepage.aspx?name=" + query_empName);
            //}

            var userinfo = (from c in db.Employees
                            where c.Employee_ID == txtUserName.Text && c.Password == txtPWD.Text
                            select new LoginRecords
                            {
                                UserID = c.Employee_ID,
                                UserPassword = c.Password,
                                UserType = c.Employee_Type
                            }).FirstOrDefault();

            if (userinfo != null)
            {
                lbMessage.Text = "";
                if (userinfo.UserType == "Ch")
                {
                    string query_chEmpName = (from x in db.Employees
                                              where x.Employee_ID == userinfo.UserID
                                              select x.First_Name + " " + x.Last_Name).FirstOrDefault();
                    Response.Redirect("Homepage.aspx?name=" + query_chEmpName);

                }

                else if (userinfo.UserType == "Em")
                {
                    string query_empName = (from x in db.Employees
                                            where x.Employee_ID == userinfo.UserID
                                            select x.First_Name + " " + x.Last_Name).FirstOrDefault();
                    Response.Redirect("EmployeeHP.aspx?name=" + query_empName);
                }

            }

            else lbMessage.Text = "Invalid username or password";

            //int empID = .Case_ID;
        }
    }
}
