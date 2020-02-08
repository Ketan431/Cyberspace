using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.IO;

namespace Cyberlaw
{
    public partial class User_registration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["cyberlaw"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (IsPostBack)
                {

                    con.Open();
                    String fullname = fname.Text +" "+ lname.Text;
                    HttpPostedFile postedfile = FileUpload1.PostedFile;
                    String filename = Path.GetFileName(postedfile.FileName);
                    String fileExtension = Path.GetExtension(filename);
                    int fileSize = postedfile.ContentLength;
                    Stream stream = postedfile.InputStream;
                    BinaryReader br = new BinaryReader(stream);
                    byte[] bytes = br.ReadBytes((int)stream.Length);

                    String query = "insert into members values(@image,@name,@gender,@email,@phone,@country,@state,@city,@membership,@payment,@desc)";
                    SqlCommand cmd = new SqlCommand(query,con);
                 
                    cmd.Parameters.AddWithValue("@image", bytes);
                    cmd.Parameters.AddWithValue("@name", fullname);
                    cmd.Parameters.AddWithValue("@gender", gender.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@email", email.Text);
                    cmd.Parameters.AddWithValue("@phone", phone.Text.ToString());
                    cmd.Parameters.AddWithValue("@country", Country.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@state", state.Text);
                    cmd.Parameters.AddWithValue("@city",city.Text);
                    cmd.Parameters.AddWithValue("@membership", membership.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@payment", payment.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@desc", desc.Text);

                    
                    int flag = cmd.ExecuteNonQuery();
                    
                    con.Close();
                    if (flag == 0)
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Not Inserted Successfully')", true);
                    }
                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
                    }
                    


                }
            }
            catch(Exception ex)
            {
                error.Text = ex.ToString();
            }
        }
    }
}