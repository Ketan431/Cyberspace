using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Web.Configuration;

namespace Cyberlaw.Lawyer
{
    public partial class Lawyer_profile : System.Web.UI.Page
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
                HttpPostedFile postedfile = FileUpload1.PostedFile;
                String filename = Path.GetFileName(postedfile.FileName);
                String fileExtension = Path.GetExtension(filename);

                int fileSize = postedfile.ContentLength;
                Stream stream = postedfile.InputStream;
                BinaryReader br = new BinaryReader(stream);
                byte[] bytes = br.ReadBytes((int)stream.Length);
                if (fileExtension == ".jpg" || fileExtension == ".png" || fileExtension == ".jfif")
                {

                string query = "insert into tbl_lawyer values(@image,@name,@gender,@email,@phone,@position,@achieve)";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@image", bytes);
                cmd.Parameters.AddWithValue("@name", name.Text);
                cmd.Parameters.AddWithValue("@gender", gender.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@email", email.Text);
                cmd.Parameters.AddWithValue("@phone", phone.Text);
                cmd.Parameters.AddWithValue("@position", position.SelectedValue);
                cmd.Parameters.AddWithValue("@achieve", info.Text);
                int flag = cmd.ExecuteNonQuery();
                if (flag != 0)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Not Inserted Successfully')", true);
                }
                 }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Only image file in png jpg')", true);
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                

                
                    SqlCommand cmd;
                    string query = "update tbl_lawyer set name='" + name.Text + "',gender='" + gender.SelectedItem.Value + "',email='" + email.Text + "',phone='"+phone.Text+"',position='" + position.SelectedValue + "' ,achieve='" + info.Text + "' where id='" + Session["id"].ToString() + "' ";
                    cmd = new SqlCommand(query, con);

                    int flag = cmd.ExecuteNonQuery();
                    if (flag == 1)
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Updated Successfully')", true);
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
