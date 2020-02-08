using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace Cyberlaw.Lawyer
{
    public partial class Complaint_details : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["cyberlaw"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.Visible = false;
        }

      

        protected void Button2_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

            con.Open();
            string query = "insert into complain values(@c_name,@c_email,@gender,@complain,@status)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@c_name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@c_email", TextBox2.Text);
            cmd.Parameters.AddWithValue("@gender", RadioButtonList1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@complain", TextBox3.Text);
            cmd.Parameters.AddWithValue("@status", DropDownList1.SelectedValue);
            int flag = cmd.ExecuteNonQuery();
            if (flag == 1)
            {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);

               }

            }
            catch(Exception ex)
            {
                Response.Write(ex);
            }
            finally
            {
                con.Close();
            }
        }
    }
}