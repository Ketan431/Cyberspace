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
    public partial class View_profile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["cyberlaw"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                try
                {
                    var id = Session["id"].ToString();
                    con.Open();
                    string query = "select * from admin where id='" + id + "'";
                    SqlCommand cmd = new SqlCommand(query, con);
                    SqlDataReader read = cmd.ExecuteReader();

                    if (read.HasRows)
                    {
                        while (read.Read())
                        {
                            uname.Text = read["u_name"].ToString();
                            email.Text = read["email"].ToString();
                            fname.Text = read["f_name"].ToString();
                            lname.Text = read["l_name"].ToString();
                            addr.Text = read["addr"].ToString();
                            city.Text = read["city"].ToString();
                            country.Text = read["country"].ToString();
                            pcode.Text = read["p_code"].ToString();
                            about.Text = read["about"].ToString();

                            byte[] imagedata = (byte[])read["image"];


                            Image1.ImageUrl = "data:image/png;base64," + Convert.ToBase64String(imagedata);


                        }
                    }
                }
                catch (Exception ex)
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
}