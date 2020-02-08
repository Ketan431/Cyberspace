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
    public partial class LawyerPanel : System.Web.UI.MasterPage
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["cyberlaw"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["Lawyer"] != null)
            {
                con.Open();
                id.Text = Session["lawyer"].ToString();
                var lid = Session["id"].ToString();

                string query = "select image from tbl_lawyer where id = '"+lid+"'";
                SqlCommand cmd = new SqlCommand(query,con);
                SqlDataReader read = cmd.ExecuteReader();
                if (read.HasRows)
                {
                    while (read.Read())
                    {
                        byte[] imagedata = (byte[])read["image"];
                        Image2.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(imagedata);

                    }
                }
            }
            else
            {
                Response.Redirect("../admin_login.aspx");
            }
        }
    }
}