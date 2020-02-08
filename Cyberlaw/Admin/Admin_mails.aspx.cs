using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace Cyberlaw.Admin
{
    public partial class Admin_mails : System.Web.UI.Page
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
            string query = "insert into messages values(@from,@to,@subject,@message,@adminid,@date)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@from",DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@to", DropDownList2.SelectedValue);
            cmd.Parameters.AddWithValue("@subject",TextBox3.Text);
            cmd.Parameters.AddWithValue("@message", TextBox7.Text);
            cmd.Parameters.AddWithValue("@adminid", TextBox4.Text);
            cmd.Parameters.AddWithValue("@date", DateTime.Today);
            int temp = cmd.ExecuteNonQuery();
            if (temp == 1)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
            }
            }
            catch(Exception ex)
            {
                Response.Write(ex);
            }
        }

    }
}