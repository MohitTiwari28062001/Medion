using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Medion
{
    public partial class SignIn1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        string connectionString = "server=.;database=Medion;integrated security=true";
        string selectQuery = "select * from tbl_SignUP where userName = @un and pwd = @pwd";
        string role = null; 
        string un = null;
        SqlConnection connect = null;
        SqlDataReader reader = null;
        SqlCommand cmd = null;
        protected void Button1_Click(object sender, EventArgs e)
        {
            connect = new SqlConnection(connectionString);
            try
            {
                connect.Open();
                cmd = new SqlCommand(selectQuery, connect);
                cmd.Parameters.AddWithValue("@un",TextBox1.Text);
                cmd.Parameters.AddWithValue("@pwd", TextBox2.Text);

                HttpCookie cookie1 = new HttpCookie("cookie");
                cookie1.Values.Add("UserName", TextBox1.Text);
                cookie1.Expires = DateTime.Now.AddMinutes(10);
                Response.Cookies.Add(cookie1);

                reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    role = reader["userRole"].ToString();
                    un = reader["userName"].ToString();
                    Session["UserName"] = un;

                    if (role == "user")
                    {
                        Response.Redirect("userDashBoard.aspx");
                    }
                    else if (role == "admin")
                    {
                        Response.Redirect("adminDashBoard.aspx");

                    }
                }
            }
            catch (Exception ex)
            {
                Label5.Text = ex.Message;
            }
            finally
            {
                connect.Close();
            }

        }
    }
}