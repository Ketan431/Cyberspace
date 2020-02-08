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
    public partial class Appointment_details : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["cyberlaw"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                string query = "insert into tbl_appointment values(@cname,@cemail,@date,@purpose,@status)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@cname", TextBox1.Text);
                cmd.Parameters.AddWithValue("@cemail", TextBox2.Text);
                cmd.Parameters.AddWithValue("@date", TextBox4.Text.ToString());
                cmd.Parameters.AddWithValue("@purpose", TextBox3.Text);
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            Label5.Visible = true;
        }
    }
}