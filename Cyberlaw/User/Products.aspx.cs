using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;
using System.IO;

namespace Cyberlaw.User
{
    public partial class Products : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["cyberlaw"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {

                con.Open();
                SqlCommand cmd, cmd1, cmd2;
                
                    String query = "select image,prodname,productdesc from tblproducts where category='Cyber Security' and ID='1'";
                    cmd = new SqlCommand(query, con);

                    SqlDataReader read = cmd.ExecuteReader();


                    if (read.HasRows)
                    {
                        while (read.Read())
                        {
                            byte[] imagedata = (byte[])read["image"];
                            prod1.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(imagedata);
                            prodname1.Text = read["prodname"].ToString();
                            desc1.Text = read["productdesc"].ToString();
                        }
                    }

                    read.Close();
                    cmd.Dispose();

                    String query1 = "select image,prodname,productdesc from tblproducts where category='Cyber Security' and ID='2'";
                    cmd1 = new SqlCommand(query1, con);

                    SqlDataReader read1 = cmd1.ExecuteReader();
                    if (read1.HasRows)
                    {
                        while (read1.Read())
                        {
                            byte[] imagedata1 = (byte[])read1["image"];
                            prod2.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(imagedata1);
                            prodname2.Text = read1["prodname"].ToString();
                        desc2.Text = read1["productdesc"].ToString();
                    }
                    }
                    read1.Close();
                    cmd1.Dispose();

                    String query2 = "select image,prodname,productdesc from tblproducts where category='Cyber Security' and ID='3'";
                    cmd2 = new SqlCommand(query2, con);

                    SqlDataReader read2 = cmd2.ExecuteReader();
                    if (read2.HasRows)
                    {
                        while (read2.Read())
                        {
                            byte[] imagedata2 = (byte[])read2["image"];
                            prod3.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(imagedata2);
                            prodname3.Text = read2["prodname"].ToString();
                        desc3.Text = read2["productdesc"].ToString();
                    }
                    }
                    read2.Close();
                    cmd2.Dispose();

               

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

        
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                con.Open();
                SqlCommand cmd,cmd1,cmd2;
                if (DropDownList1.SelectedValue == "Network Security")
                {
                    String query = "select image,prodname,productdesc from tblproducts where category='Network Security' and ID='4'";
                    cmd = new SqlCommand(query, con);

                    SqlDataReader read = cmd.ExecuteReader();


                    if (read.HasRows)
                    {
                        while (read.Read())
                        {
                            byte[] imagedata = (byte[])read["image"];
                            prod1.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(imagedata);
                            prodname1.Text = read["prodname"].ToString();
                            desc1.Text = read["productdesc"].ToString();



                        }
                    }

                    read.Close();
                    cmd.Dispose();

                    String query1 = "select image,prodname,productdesc from tblproducts where category='Network Security' and ID='6'";
                    cmd1 = new SqlCommand(query1, con);
                 
                    SqlDataReader read1 = cmd1.ExecuteReader();
                    if (read1.HasRows)
                    {
                        while (read1.Read())
                        {
                            byte[] imagedata1 = (byte[])read1["image"];
                            prod2.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(imagedata1);
                            prodname2.Text = read1["prodname"].ToString();
                            desc2.Text = read1["productdesc"].ToString();
                        }
                    }
                    read1.Close();
                    cmd1.Dispose();

                    String query2 = "select image,prodname,productdesc from tblproducts where category='Network Security' and ID='7'";
                    cmd2 = new SqlCommand(query2, con);

                    SqlDataReader read2 = cmd2.ExecuteReader();
                    if (read2.HasRows)
                    {
                        while (read2.Read())
                        {
                            byte[] imagedata2 = (byte[])read2["image"];
                            prod3.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(imagedata2);
                            prodname3.Text = read2["prodname"].ToString();
                        desc3.Text = read2["productdesc"].ToString();
                        }
                    }
                    read2.Close();
                    cmd2.Dispose();

                }
                else if (DropDownList1.SelectedValue == "Email Security")
                {
                    String query = "select image,prodname,productdesc from tblproducts where category='Email Security' and ID='5'";
                    cmd = new SqlCommand(query, con);

                    SqlDataReader read = cmd.ExecuteReader();


                    if (read.HasRows)
                    {
                        while (read.Read())
                        {
                            byte[] imagedata = (byte[])read["image"];
                            prod1.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(imagedata);
                            prodname1.Text = read["prodname"].ToString();
                            desc1.Text = read["productdesc"].ToString();
                            
                        }
                    }

                    read.Close();
                    cmd.Dispose();

                    String query1 = "select image,prodname,productdesc from tblproducts where category='Email Security' and ID='8'";
                    cmd1 = new SqlCommand(query1, con);

                    SqlDataReader read1 = cmd1.ExecuteReader();
                    if (read1.HasRows)
                    {
                        while (read1.Read())
                        {
                            byte[] imagedata1 = (byte[])read1["image"];
                            prod2.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(imagedata1);
                            prodname2.Text = read1["prodname"].ToString();
                            desc2.Text = read1["productdesc"].ToString();
                        }
                    }
                    read1.Close();
                    cmd1.Dispose();

                    String query2 = "select image,prodname,productdesc from tblproducts where category='Email Security' and ID='9'";
                    cmd2 = new SqlCommand(query2, con);

                    SqlDataReader read2 = cmd2.ExecuteReader();
                    if (read2.HasRows)
                    {
                        while (read2.Read())
                        {
                            byte[] imagedata2 = (byte[])read2["image"];
                            prod3.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String(imagedata2);
                            prodname3.Text = read2["prodname"].ToString();
                            desc3.Text = read2["productdesc"].ToString();
                        }
                    }
                    read2.Close();
                    cmd2.Dispose();

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