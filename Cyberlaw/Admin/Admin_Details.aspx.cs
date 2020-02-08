using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cyberlaw.Admin
{
    public partial class Admin_Details : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["cyberlaw"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {


                HttpPostedFile postedfile = image.PostedFile;
                String filename = Path.GetFileName(postedfile.FileName);
                String fileExtension = Path.GetExtension(filename);
                int fileSize = postedfile.ContentLength;
                Stream stream = postedfile.InputStream;
                BinaryReader br = new BinaryReader(stream);
                byte[] bytes = br.ReadBytes((int)stream.Length);
                conn.Open();

                if(fileExtension==".png" || fileExtension== ".jpg" || fileExtension == ".jfif")
                {

               
                    String query = "insert into admin(image,u_name,email,f_name,l_name,addr,city,country,p_code,about) VALUES(@image,@u_name,@email,@f_name,@l_name,@addr,@city,@country,@p_code,@about)";
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.Parameters.AddWithValue("@image", bytes);
                    cmd.Parameters.AddWithValue("@u_name", u_name.Text);
                    cmd.Parameters.AddWithValue("@email", email.Text);
                    cmd.Parameters.AddWithValue("@f_name", f_name.Text);
                    cmd.Parameters.AddWithValue("@l_name", l_name.Text);
                    cmd.Parameters.AddWithValue("@addr", addr.Text);
                    cmd.Parameters.AddWithValue("@city", city.Text);
                    cmd.Parameters.AddWithValue("@country", country.Text);
                    cmd.Parameters.AddWithValue("@p_code", p_code.Text);
                    cmd.Parameters.AddWithValue("@about", aboutme.Text);
                    int flag = cmd.ExecuteNonQuery();
                    if (flag != 0)
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);

                    }
                   
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Image Required in .png or .jpg or .jfif')", true);
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            try
            {

                HttpPostedFile postedfile = image.PostedFile;
                String filename = Path.GetFileName(postedfile.FileName);
                String fileExtension = Path.GetExtension(filename);
                int fileSize = postedfile.ContentLength;
                Stream stream = postedfile.InputStream;
                BinaryReader br = new BinaryReader(stream);
                byte[] bytes = br.ReadBytes((int)stream.Length);
                conn.Open();
                String query = "update admin set(image=@image,uname=@u_name,email=@email,f_name=@f_name,l_name=@l_name,addr=@addr,city=@city,country=@country,p_code=@p_code,about=@about)";
                SqlCommand cmd = new SqlCommand(query, conn);

                cmd.Parameters.AddWithValue("@image", bytes);
                cmd.Parameters.AddWithValue("@u_name", u_name.Text);
                cmd.Parameters.AddWithValue("@email", email.Text);
                cmd.Parameters.AddWithValue("@f_name", f_name.Text);
                cmd.Parameters.AddWithValue("@l_name", l_name.Text);
                cmd.Parameters.AddWithValue("@addr", addr.Text);
                cmd.Parameters.AddWithValue("@city", city.Text);
                cmd.Parameters.AddWithValue("@country", country.Text);
                cmd.Parameters.AddWithValue("@p_code", p_code.Text);
                cmd.Parameters.AddWithValue("@about", aboutme.Text);
                int flag = cmd.ExecuteNonQuery();
                if (flag == 1)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Updated Successfully')", true);

                }


            }
            catch(Exception ex)
            {
                Response.Write(ex);
            }
        }
    }
}