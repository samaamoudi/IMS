using System;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace IMS2
{
    public partial class evidenceSubmission : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            //    Investigation_management_systemEntities4 db = new Investigation_management_systemEntities4();


            //    Evidence evid = new Evidence();

            //    evid.Evidence_Date = Convert.ToDateTime(datetxt.Text);
            //    evid.Evidence_Details = Detailstxt.Text;
            //    evid.Case_ID = Convert.ToInt32(casetxt.Text);
            //    evid.Evidence_Document = FileUpload1.FileBytes;
            //    evid.Requester_ID = Requestertxt.Text;
            //    evid.Evidence_Type = RadioButtonList1.Text;

            //    db.Evidences.Add(evid);

            //    int res = db.SaveChanges();

            //    if (res > 0)
            //    {

            //        Response.Write("Data Inserted Successfully");

            //    }
            //    else
            //    {

            //        Response.Write("Try Again!!!");

            //    }

            //fetch the name of the file
            string Filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            //fetch the file content type of the file
            string FilecontentType = FileUpload1.PostedFile.ContentType;
            //reads a content of the file
            using (Stream s = FileUpload1.PostedFile.InputStream)
            {
                using (BinaryReader br = new BinaryReader(s))
                {
                    byte[] Databytes = br.ReadBytes((Int32)s.Length);
                    //fetch connection string from the web.config file
                    string ConnectionStrings = ConfigurationManager.ConnectionStrings["Investigation_management_systemConnectionString"].ConnectionString;
                    //create a database connection object
                    using (SqlConnection con = new SqlConnection(ConnectionStrings))
                    {
                        string query = "INSERT INTO Evidence VALUES ( @Evidence_Type, @Evidence_Date, @Evidence_Details, @Requester_ID,  @Case_ID, @FileName, @FileContentType, @FileData)";
                        //create an object for SQL command class
                        using (SqlCommand cmd = new SqlCommand(query))
                        {
                            cmd.Connection = con;
                            cmd.Parameters.AddWithValue("@Evidence_Type", RadioButtonList1.Text);
                            cmd.Parameters.AddWithValue("@Evidence_Date", datetxt.Text);
                            cmd.Parameters.AddWithValue("@Evidence_Details", Detailstxt.Text);
                            cmd.Parameters.AddWithValue("@Requester_ID", Requestertxt.Text);
                            cmd.Parameters.AddWithValue("@Case_ID", Convert.ToInt32(CaseDropDownList.Text));
                            cmd.Parameters.AddWithValue("@FileName", Filename);
                            cmd.Parameters.AddWithValue("@FileContentType", FilecontentType);
                            cmd.Parameters.AddWithValue("@FileData", Databytes);
                            //open database connection
                            con.Open();
                            //execute SQL statement 
                            cmd.ExecuteNonQuery();
                            con.Close();
                        }
                    }
                }
            }
            Response.Redirect(Request.Url.AbsoluteUri);
        }
    }
    }
