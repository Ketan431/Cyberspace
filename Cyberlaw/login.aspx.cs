using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Text;
using System.Security.Cryptography;
using System.IO;
using System.Data;

namespace Cyberlaw
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["cyberlaw"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        
        protected void Button2_Click(object sender, EventArgs e)
        {

            try
            {
                con.Open();
                   
                string checkuser = "select count(*) from user_login where username ='" + usrname.Text + "'";
                SqlCommand com = new SqlCommand(checkuser, con);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());

                if (temp == 1)
                {
                        
                    string query = "select username from user_login where username ='" + usrname.Text + "'";
                    SqlCommand user = new SqlCommand(query, con);
                    string uname1 = user.ExecuteScalar().ToString();

                    string query1 = "select password from user_login where username ='" + usrname.Text + "'";
                    SqlCommand user1 = new SqlCommand(query1, con);
                    string uname2 = user1.ExecuteScalar().ToString();

                    string id = "select id from user_login where username ='" + usrname.Text + "'";
                    SqlCommand uid = new SqlCommand(id, con);
                    string usrid = uid.ExecuteScalar().ToString();

                    Response.Write(uname2);
                    
                    if (usrname.Text == uname1 && pass.Text==uname2)
                    {
                        Session["id"] = usrid;
                        Session["uname"] = uname1;
                        Response.Redirect("User/UserHome.aspx");
                      
                    }
                    else
                    {
                        
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Incorrect Credentials')", true);
                    }
                    

                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('User Doesn't exist')", true);

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

        protected void Button1_Click(object sender, EventArgs e)
        {
           
            try
            {
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter("SELECT COUNT(*) FROM user_login WHERE username='" + uname.Text + "'", con);

                DataTable dt = new DataTable(); //this is creating a virtual table  
                sda.Fill(dt);


                if (dt.Rows.Count >0)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('User Already Exist Try Login')", true);

                }
                else
                {
                    string query = "insert into user_login values(@username,@email,@password)";
                    SqlCommand cmd = new SqlCommand(query, con);
                    cmd.Parameters.AddWithValue("@username", uname.Text);
                    cmd.Parameters.AddWithValue("@email", email.Text);
                    cmd.Parameters.AddWithValue("@password", pass.Text);
                    int flag = cmd.ExecuteNonQuery();
                    if (flag != 0)
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('User Registered Successfully')", true);
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