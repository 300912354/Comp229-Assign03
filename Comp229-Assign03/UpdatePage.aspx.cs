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
    public partial class Update_Page : System.Web.UI.Page
    {
        private const string connectionPath = "Server=localhost\\SqlExpress;Database=Comp229Assign03;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            //BindList();
        }
        protected void StudentsList_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "MoreDetailsPlease")
            {
                Literal li = (Literal)e.Item.FindControl("extraDetailsLiteral");
                li.Text = "Student Name:<strong>" + e.CommandArgument + "</strong><br/>";
            }
            else if (e.CommandName == "EditItem")
            {
                studentsList.EditItemIndex = e.Item.ItemIndex;
                BindList();
            }
            else if (e.CommandName == "CancelEditing")
            {
                studentsList.EditItemIndex = -1;
                BindList();
            }
            else if (e.CommandName == "UpdateItem")
            {

                int employeeId = Convert.ToInt32(e.CommandArgument);
                TextBox nameTextBox = (TextBox)e.Item.FindControl("nameTextBox");
                string newName = nameTextBox.Text;
                TextBox usernameTextBox = (TextBox)e.Item.FindControl("usernameTextBox");
                string newUsername = usernameTextBox.Text;
                UpdateItem(employeeId, newName, newUsername);
                studentsList.EditItemIndex = -1;
                BindList();

            }

        }
        public void UpdateItem(int employeeId, string newName, string newUsername)
        {
            SqlConnection conn = new SqlConnection(connectionPath);
            SqlCommand aCommand = new SqlCommand("UpdateStudent", conn);
            aCommand.CommandType = System.Data.CommandType.StoredProcedure;

            aCommand.Parameters.Add("@StudentID", SqlDbType.Int);
            aCommand.Parameters["@StudentID"].Value = employeeId;

            aCommand.Parameters.Add("@FirstMidName", SqlDbType.NVarChar, 50);
            aCommand.Parameters["@FirstMidName"].Value = newName;

            aCommand.Parameters.Add("@LastName", SqlDbType.NVarChar, 50);
            aCommand.Parameters["@LastName"].Value = newUsername;
        
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
                // GridView1.DataKeyNames = new string[] { " CourseID " };// kind of hidden field of the row
                //StudentGridView.DataBind();
                reader.Close();

            }



            finally
            {
                conn.Close();
            }
        }



    }
}