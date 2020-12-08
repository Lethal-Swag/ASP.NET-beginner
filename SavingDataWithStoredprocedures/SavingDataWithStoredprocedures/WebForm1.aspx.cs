using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace SavingDataWithStoredprocedures
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string conString = "Data Source=GOOGLY\\SQLEXPRESS;Initial Catalog=SinghDB;Integrated Security=True";

            using (SqlConnection con = new SqlConnection(conString))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Deptdetail", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@AppName", TextBox1.Text.ToString());
                cmd.Parameters.AddWithValue("@DeptName", TextBox2.Text.ToString());

                if (RadioButton1.Checked && RadioButton2.Checked)
                    Label1.Visible = true;
                else if (RadioButton2.Checked)
                    cmd.Parameters.AddWithValue("@Gender", TextBox4.Text.ToString());
                else
                    cmd.Parameters.AddWithValue("@Gender", TextBox3.Text.ToString());

                cmd.ExecuteNonQuery();
                
            }
            Response.Redirect(Request.RawUrl);


        }
    }
}