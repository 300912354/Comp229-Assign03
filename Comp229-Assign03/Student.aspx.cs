using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace comp
{
    public partial class Student : System.Web.UI.Page
    {
        private const string connectionPath = "Server=localhost\\SqlExpress;Database=Comp229Assign03;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindList();

            }

        }
        protected void BindList()
        {
            SqlConnection conn = new SqlConnection(connectionPath);
            try
            {
                string sql = "SELECT StudentID, LastName, FirstMidName,EnrollmentDate FROM Students"; /*WHERE StudentID =@StudentID ;*/
                SqlCommand aCommand = new SqlCommand(sql, conn);



                conn.Open();
                SqlDataReader reader = aCommand.ExecuteReader();
                //StudentGridView.DataSourceID = "";
                //StudentGridView.DataSource = reader;
                //GridView1.DataKeyNames = new string[] { " CourseID " };// kind of hidden field of the row
                //StudentGridView.DataBind();
                //reader.Close();

            }
         


            finally
            {
                conn.Close();
            }
        }

        //public void StudentGridView_SelectedIndexChanged(object sender, EventArgs e)
        //{ int selectedRowIndex = StudentGridView.SelectedIndex;
        //    GridViewRow row = StudentGridView.Rows[selectedRowIndex];
        //    string StudentID = row.Cells[0].Text;
            

        //    BindDetails();
       
        //}
        //protected void BindDetails()
        //{
        //    int selectedRowIndex = StudentGridView.SelectedIndex;
        //    int employeeId = (int)StudentGridView.DataKeys[selectedRowIndex].Value;
        //    SqlDataReader reader;
        //    SqlConnection conn = new SqlConnection(connectionPath);
            
          
        //        SqlCommand aCommand = new SqlCommand("SELECT * FROM Students", conn);

        //        aCommand.Parameters.Add("@StudentID", SqlDbType.Int);
        //        aCommand.Parameters["@StudentID"].Value = employeeId;
        //    try
        //    {
        //        conn.Open();
        //        reader = aCommand.ExecuteReader();
        //        studentDetails.DataSource = reader;
        //        studentDetails.DataKeyNames = new string[] { "StudentID" };// kind of hidden field of the row
        //        studentDetails.DataBind();
        //        reader.Close();

        //    }
        //    finally
        //    {
        //        conn.Close();
        //    }
        }
        //protected void studentDetails_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        //{

        //}

    //    protected void studentDetails_ModeChanging(object sender, DetailsViewModeEventArgs e)
    //    {
    //        studentDetails.ChangeMode(e.NewMode);
    //        BindDetails();

    //    }

    //    protected void studentDetails_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
    //    {
    //        int StudentID = (int)studentDetails.DataKey.Value;

    //        string newCourseID = ((TextBox)studentDetails.FindControl("txtNewCourseID")).Text;

    //        string newTitle = ((TextBox)studentDetails.FindControl("txtNewTitle")).Text;



    //        SqlConnection conn = new SqlConnection(connectionPath);
    //        try
    //        {
    //            string sql = "UpdateEmployeeDetails"; /*WHERE StudentID =@StudentID AND Title =@Title";*/
    //            SqlCommand aCommand = new SqlCommand(sql, conn);

    //            aCommand.CommandType = CommandType.StoredProcedure;

    //            aCommand.Parameters.Add("StudentID", SqlDbType.Int);
    //            aCommand.Parameters["StudentID"].Value = StudentID;

    //            aCommand.Parameters.Add("NewCourseID", SqlDbType.NVarChar, 50);
    //            aCommand.Parameters["NewCourseID"].Value = newCourseID;

    //            aCommand.Parameters.Add("NewTitle", SqlDbType.NVarChar, 50);
    //            aCommand.Parameters["NewTitle"].Value = newTitle;


    //            conn.Open();


    //            aCommand.ExecuteNonQuery();

    //            studentDetails.ChangeMode(DetailsViewMode.ReadOnly);
    //            BindDetails();
    //            BindList();



    //        }

    //        finally
    //        {
    //            conn.Close();
    //        }
    //    }

    //    protected void studentDetails_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    //    {

    //    }

       
       
    //}
}