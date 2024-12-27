using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Medion
{
    public partial class AddProducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {



        }
            string connectionString = "server=.;database=DemoWork;integrated security=true";
            string query = " insert into @tb (nn) values(@n)";
            SqlConnection connect = null;
            SqlCommand cmd = null;

        protected void Button1_Click(object sender, EventArgs e)
        {
            connect = new SqlConnection(connectionString);
            try { 
                connect.Open();
                cmd = new SqlCommand(query, connect);
                cmd.Parameters.AddWithValue("@tb", TextBox1.Text);
                cmd.Parameters.AddWithValue("@n", TextBox2.Text);
                cmd.ExecuteNonQuery();
                Label5.Text = "Added";
            }
            catch(Exception ex) {
                Label5.Text = ex.ToString();
            }
            finally {
                connect.Close();
            }
        }
    }
}