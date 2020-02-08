using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.IO;

namespace Cyberlaw.Admin
{
    public partial class add_products : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["cyberlaw"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
           
            
        }

     
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                try
                {
                    con.Open();
                    HttpPostedFile postedfile = img.PostedFile;
                    String filename = Path.GetFileName(postedfile.FileName);
                    String fileExtension = Path.GetExtension(filename);
                    int fileSize = postedfile.ContentLength;
                    Stream stream = postedfile.InputStream;
                    BinaryReader br = new BinaryReader(stream);
                    byte[] bytes = br.ReadBytes((int)stream.Length);

                    String query = "insert into tblproducts values(@image,@prodname,@category,@productdesc)";
                    SqlCommand cmd = new SqlCommand(query,con);
                    cmd.Parameters.AddWithValue("@image",bytes);
                    cmd.Parameters.AddWithValue("@prodname", pname.Text);
                    cmd.Parameters.AddWithValue("@category", p_cat.SelectedValue);
                    cmd.Parameters.AddWithValue("@productdesc", p_desc.Text);
                    int flag = cmd.ExecuteNonQuery();
                    con.Close();
                    if (flag == 0)
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Error in inserting data')", true);
                    }
                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Product Added Successfully')", true);
                    }
                }
                catch(Exception ex)
                {
                    Response.Write(ex);
                }
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
        }
    }
}