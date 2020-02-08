using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace Cyberlaw
{
    public partial class admin_login : System.Web.UI.Page
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
                string checkuser = "select count(*) from tbl_login where username ='" + username.Text + "'";
                SqlCommand com = new SqlCommand(checkuser, con);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());

                if (temp == 1)
                {
            
                    string checkpasswordQuery = "select password from tbl_login where username ='" + username.Text + "'";
                    string checkjobQuery = "select category from tbl_login where username ='" + username.Text + "'";
                    string uname = "select username from tbl_login where category ='Admin'";
                    string id = "select id from tbl_login where username ='" + username.Text + "'";


                    SqlCommand cmd = new SqlCommand(uname, con);
                    SqlCommand uid = new SqlCommand(id, con);
                    SqlCommand passcomm = new SqlCommand(checkpasswordQuery, con);
                    SqlCommand jobcomm = new SqlCommand(checkjobQuery, con);
                    string aid = uid.ExecuteScalar().ToString();
                    string usrname = cmd.ExecuteScalar().ToString();
                    string password1 = passcomm.ExecuteScalar().ToString();
                    string job = jobcomm.ExecuteScalar().ToString();
                   
                    if (username.Text == usrname && password.Text == password1 && DropDownList1.SelectedValue == job)
                    {

                        Session["username"] = username.Text;
                        Session["id"] = aid;
                        Response.Write("this line was executed");
                        Response.Redirect("Admin/Admin_dashboard.aspx?User=" + username.Text + "&ID=" + aid);
                    }
                    else
                    {

                    }
                   
                }
               
               
                if (DropDownList1.SelectedValue.Equals("Lawyer"))
                {
                    string checkpasswordQuery1 = "select password from tbl_login where username ='" + username.Text + "'";
                    string uname1 = "select username from tbl_login where category ='Lawyer'";
                    string uid = "select id from tbl_login where category ='Lawyer'";
                    
                    SqlCommand cmd3 = new SqlCommand(uname1, con);
                    SqlCommand cmd4 = new SqlCommand(checkpasswordQuery1, con);
                    SqlCommand cmd5 = new SqlCommand(uid, con);

                    string usrname3 = cmd3.ExecuteScalar().ToString();
                    string pwd = cmd4.ExecuteScalar().ToString();
                    string id = cmd5.ExecuteScalar().ToString();

                    if (username.Text == usrname3 && password.Text == pwd)
                    {
                        
                        Session["Lawyer"] = username.Text;
                        Session["id"] = id;
                        
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Login Success')", true);
                        Response.Redirect("Lawyer/dashboard.aspx");
                    }
                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Login Failed')", true);
                    }
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('User Doesn't exists')", true);
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

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            PasswordRecovery1.Visible = true;
        }

       
    }
}