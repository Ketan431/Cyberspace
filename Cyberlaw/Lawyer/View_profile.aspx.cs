using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cyberlaw.Lawyer
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
                    string query = "select * from tbl_lawyer where id='" + id + "'";
                    SqlCommand cmd = new SqlCommand(query, con);
                    SqlDataReader read = cmd.ExecuteReader();

                    if (read.HasRows)
                    {
                        while (read.Read())
                        {
                            lid.Text = read["lawyer_id"].ToString();
                            name.Text = read["name"].ToString();
                            email.Text = read["email"].ToString();
                            gen.Text = read["gender"].ToString();
                            phone.Text = read["phone"].ToString();
                            pos.Text = read["position"].ToString();
                            achieve.Text = read["achieve"].ToString();


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