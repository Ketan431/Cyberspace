using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cyberlaw.User
{
    public partial class sections : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Clear();
                Response.ContentType = "application/octet-stream";
                Response.AppendHeader("content-disposition", "filename=" + "6806_LA_E-Journal.docx");
                Response.TransmitFile(Server.MapPath("~/Admin/files/") + "6806_LA_E-Journal.docx");
                Response.End();
            }
            catch(Exception ex)
            {
                Response.Write(ex);
            }
            
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Clear();
                Response.ContentType = "application/octet-stream";
                Response.AppendHeader("content-disposition", "filename=" + "7806_CCAssignment.docx");
                Response.TransmitFile(Server.MapPath("~/Admin/files/") + "7806_CCAssignment.docx");
                Response.End();
            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            try
            {
                Response.Clear();
                Response.ContentType = "application/octet-stream";
                Response.AppendHeader("content-disposition", "filename=" + "skillset.txt");
                Response.TransmitFile(Server.MapPath("~/Admin/files/") + "skillset.txt");
                Response.End();
            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }
        }
     
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
           
            if (e.CommandName == "Select")
            {
                //string section = GridView1.DataKeyNames;

            }

        }
    }
}