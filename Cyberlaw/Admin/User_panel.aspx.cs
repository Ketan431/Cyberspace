using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cyberlaw.Admin
{
    public partial class User_panel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.SearchCustomers();
            }
        }

        private void SearchCustomers()
        {
            string constr = ConfigurationManager.ConnectionStrings["cyberlaw"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    string sql = "SELECT * FROM members";
                    if (!string.IsNullOrEmpty(TextBox1.Text.Trim()))
                    {
                        sql += " WHERE name or country or city or state LIKE @name + '%'";
                        cmd.Parameters.AddWithValue("@name", TextBox1.Text.Trim());
                    }
                    cmd.CommandText = sql;
                    cmd.Connection = con;
                    using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        gridview.DataSource = dt;
                        gridview.DataBind();
                    }
                }
            }
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

        protected void RowDeleting(object sender, EventArgs e)
        {
            var Label = gridview.FindControl("ID");
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["cyberlaw"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("delete from members where id=@id", con);
            cmd.Parameters.AddWithValue("id", gridview.FindControl("ID"));
            con.Open();
            int id = cmd.ExecuteNonQuery();
            con.Close();
        }

    }
}