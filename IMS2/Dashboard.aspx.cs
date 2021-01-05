using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IMS2
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Investigation_management_systemEntities4 db = new Investigation_management_systemEntities4();



            var total = (from o in db.InvestigationCase1
                         select o).Count();
            lb1.Text = total.ToString();

            var ia = (from o in db.InvestigationCase1
                      where o.Case_Type >= 9 && o.Case_Type <= 15
                      select o).Count();
            lb2.Text = ia.ToString();

            var hr = (from o in db.InvestigationCase1
                      where o.Case_Type >= 1 && o.Case_Type <= 8
                      select o).Count();
            lb3.Text = hr.ToString();

            var complete = (from o in db.InvestigationCase1
                         where o.Case_Status == 1
                         select o).Count();

            lb5.Text = complete.ToString();

            var newcase = (from o in db.InvestigationCase1
                         where o.Case_Status == 4
                         select o).Count();

            lb6.Text = newcase.ToString();

            var open = (from o in db.InvestigationCase1
                         where o.Case_Status == 3
                         select o).Count();

            lb4.Text = open.ToString(); 

        }
    }
}