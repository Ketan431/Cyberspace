using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;


namespace Cyberlaw.Admin
{
    public partial class Security_resources : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            try
            {
               
                
               
               
                if (FileUpload1.HasFile)
                {
                    FileUpload1.PostedFile.SaveAs(Server.MapPath("files/") + FileUpload1.FileName);
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('File Uploaded Successfully')", true);
                }
                
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('No file to upload')", true);
                }

                DataTable dt = new DataTable();
                dt.Columns.Add("File",typeof(string));
                dt.Columns.Add("Size", typeof(string));
                dt.Columns.Add("Type", typeof(string));

                foreach (string file in Directory.GetFiles(Server.MapPath("files"))){
                    FileInfo fi = new FileInfo(file);
                    dt.Rows.Add(fi.Name, fi.Length, GetFileType(fi.Extension));
                   
                }
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            catch(Exception ex)
            {
                Response.Write(ex);
            }
            
        }

        private string GetFileType(string extension)
        {
            switch (extension.ToLower())
            {
                case ".doc":
                case ".docx":
                    return "Microsoft Word Document";
                case ".xlsx":
                case ".xls":
                    return "Microsoft Excel Document";
                case ".pdf":
                    return "PDF file";
                case ".txt":
                    return "Text Document";
                default:
                    return "unkonwn";

            }
        }
    }
}