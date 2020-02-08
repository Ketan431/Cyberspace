using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Cyberlaw
{
    public partial class UserHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Uname"] != null)
            {
                usrname.Text = Session["Uname"].ToString();
                //var id = Session["id"].ToString();

                SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["cyberlaw"].ConnectionString);
                con.Open();
                string query = "select image from members where id = '1'";
                SqlCommand cmd = new SqlCommand(query, con);
                SqlDataReader read = cmd.ExecuteReader();


                if (read.HasRows)
                {

                    while (read.Read())
                    {
                        byte[] imagedata = (byte[])read["image"];
                        Image1.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(imagedata);

                    }
                }

            }
            else
            {
                Response.Redirect("../login.aspx");
            }

        }
    }
}