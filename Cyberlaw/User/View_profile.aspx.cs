using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace Cyberlaw.User
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
                    //var id = Session["id"].ToString();
                    con.Open();
                    string query = "select * from members where id='1'";
                    SqlCommand cmd = new SqlCommand(query, con);
                    SqlDataReader read = cmd.ExecuteReader();
                 
                    if (read.HasRows)
                    {
                        while (read.Read())
                        {
                            name.Text = read["name"].ToString();
                            gender.Text = read["gender"].ToString();
                            email.Text = read["email"].ToString();
                            phone.Text = read["phone"].ToString();
                            country.Text = read["country"].ToString();
                            state.Text = read["state"].ToString();
                            city.Text = read["city"].ToString();
                            membership.Text = read["membership"].ToString();
                            payment.Text = read["payment"].ToString();
                            reason.Text = read["desc"].ToString();
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button2.Visible = true;
            Button1.Visible = false;
            name.Enabled = true; email.Enabled = true; phone.Enabled = true; country.Enabled = true; state.Enabled = true; city.Enabled = true;
            membership.Enabled = true; payment.Enabled = true;
            reason.Enabled = true;
          
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            
            try
            {
                con.Open();
                
                string query = "update members set name=@name,email=@email,phone=@phone,country=@country,state=@state,city=@city,membership=@membership,payment=@payment,[desc]=@desc where id='1'";

                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@name",name.Text);
                cmd.Parameters.AddWithValue("@email", email.Text);
                cmd.Parameters.AddWithValue("@phone", phone.Text);
                cmd.Parameters.AddWithValue("@country", country.Text);
                cmd.Parameters.AddWithValue("@state", state.Text);
                cmd.Parameters.AddWithValue("@city", city.Text);
                cmd.Parameters.AddWithValue("@membership", membership.Text);
                cmd.Parameters.AddWithValue("@payment", payment.Text);
                cmd.Parameters.AddWithValue("@desc", reason.Text);
                
                
                int flag = cmd.ExecuteNonQuery();
                cmd.Dispose();

                if (flag != 0)
                {

                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Updated Successfully')", true);
                    
                    name.Enabled = false; email.Enabled = false; phone.Enabled = false; country.Enabled = false; state.Enabled = false; city.Enabled = false;
                    membership.Enabled = false; payment.Enabled = false;
                    reason.Enabled = false;
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record not Updated Successfully')", true);
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