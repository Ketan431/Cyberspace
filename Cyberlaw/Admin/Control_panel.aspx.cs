using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;
using FireSharp.Config;
using FireSharp.Interfaces;
using FireSharp.Response;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace Cyberlaw.Admin
{
    
    public partial class Control_panel : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["cyberlaw"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            
            Load_GridData(); // call method below

        }
        void Load_GridData()
                {
                    conn.Open();  // open the connection 
                    SqlDataAdapter Sqa = new SqlDataAdapter("select * from admin", conn);
                    DataSet ds = new DataSet();
                    Sqa.Fill(ds);   // fill the dataset 
                    GridView1.DataSource = ds; // give data to GridView
                    GridView1.DataBind();
                    conn.Close();
                }

        protected void grd_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                System.Web.UI.HtmlControls.HtmlImage imageControl = (System.Web.UI.HtmlControls.HtmlImage)e.Row.FindControl("imageControl");
                if (((DataRowView)e.Row.DataItem)["image"] != DBNull.Value)
                {
                    imageControl.Src = "data:image/png;base64," + Convert.ToBase64String((byte[])(((DataRowView)e.Row.DataItem))["image"]);
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                

                var username = usrname.Text;
                
            }
            catch(Exception ex)
            {
                lbl1.Text = "Exception:"+ex;
            }
            
            
            
        }
    }
}