using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cyberlaw.Admin
{
    public partial class panel : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["cyberlaw"].ConnectionString);

            if (Session["username"] != null)
            {
                id.Text = Session["username"].ToString();
                con.Open();
                
                var lid = Session["id"].ToString();

                string query = "select image from admin where id = '" + lid + "'";
                SqlCommand cmd = new SqlCommand(query, con);
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