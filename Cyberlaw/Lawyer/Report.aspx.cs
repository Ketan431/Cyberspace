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
    public partial class Report : System.Web.UI.Page
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
            string query = "insert into report values(@name,@date,@analysis,@compl,@appt)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@name",name.Text);
            cmd.Parameters.AddWithValue("@date", date.Text);
            cmd.Parameters.AddWithValue("@analysis", analysis.Text);
            cmd.Parameters.AddWithValue("@compl", cmpl.Text);
            cmd.Parameters.AddWithValue("@appt", apt.Text);
            int flag = cmd.ExecuteNonQuery();
            if (flag != 0)
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
        }
    }
}