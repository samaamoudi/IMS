using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IMS2
{
    public partial class InterviewInvitationRequest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;

            if (!IsPostBack)
            {

                Validate();
            }
        }


        //protected void Button2_Click(object sender, EventArgs e)
        //{
        //    Investigation_management_systemEntities4 db = new Investigation_management_systemEntities4();

        //    Interview_Invite i = new Interview_Invite();

        //    i.Interview_Invitation_Date = Convert.ToDateTime(datetxt.Text);
        //    i.Interview_Invitation_Date_Sent = Convert.ToDateTime(datesenttxt.Text);
        //    i.Interview_Invitation_Invitee = emptxt.Text;
        //    i.Interview_Invitation_Location = locationtxt.Text;
        //    i.Interview_Invitation_Time = Timetxt.Text;
        //    i.Interview_Invitation_Details = Detailstxt.Text;
        //    i.Case_Handler_ID = chtxt.Text;
        //    i.Case_ID = Convert.ToInt32(casetxt.Text);

        //    db.Interview_Invite.Add(i);

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

        protected void iisendbtn_Click(object sender, EventArgs e)
        {
            Investigation_management_systemEntities4 db = new Investigation_management_systemEntities4();

            Interview_Invite i = new Interview_Invite();

            i.Interview_Invitation_Date = Convert.ToDateTime(iidatetxt.Text);
            i.Interview_Invitation_Date_Sent = Convert.ToDateTime(iidatesenttxt.Text);
            i.Interview_Invitation_Invitee = iiemptxt.Text;
            i.Interview_Invitation_Location = iilocationtxt.Text;
            i.Interview_Invitation_Time = iiTimetxt.Text;
            i.Interview_Invitation_Details = iiDetailstxt.Text;
            i.Case_Handler_ID = iichtxt.Text;
            i.Case_ID = int.Parse(iiDropDownList.SelectedValue);

            db.Interview_Invite.Add(i);

            int res = db.SaveChanges();

            if (res > 0)
            {

                LabelInvite.Text = "Data Inserted Successfully";

            }
            else
            {

                LabelInvite.Text = "Try Again!!!";

            }
        }
    }
}