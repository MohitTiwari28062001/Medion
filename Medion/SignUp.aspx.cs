using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Medion
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }
        string connectionString = "server=.;database=Medion;integrated security=true";
        string insertQuery = "insert into tbl_SignUp (userName, pwd, email, city, gender, phoneNumber) values (@un,@pw,@em,@ci,@ge,@pn)";
        SqlConnection connect = null;
        SqlCommand insertCommand = null;
        protected void Button1_Click(object sender, EventArgs e)
        {
            string gen = null;

            if (RadioButton1.Checked == true) {  gen = "Male"; }
            if (RadioButton2.Checked == true) { gen = "Female"; }
            if (RadioButton3.Checked == true) { gen = "Others"; }
            connect = new SqlConnection(connectionString);
            try
            {
                connect.Open();
                insertCommand = new SqlCommand(insertQuery, connect);
                insertCommand.Parameters.AddWithValue("@un", TextBox1.Text);
                insertCommand.Parameters.AddWithValue("@pw", TextBox2.Text);
                insertCommand.Parameters.AddWithValue("@em", TextBox3.Text);
                insertCommand.Parameters.AddWithValue("@ci", TextBox4.Text);
                insertCommand.Parameters.AddWithValue("@ge", gen);
                insertCommand.Parameters.AddWithValue("@pn", TextBox6.Text);
                insertCommand.ExecuteNonQuery();

                Label9.Text = "Record Added !";
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                //if (RadioButton1.Checked == true) { RadioButton1.Checked = false; }
                //if (RadioButton2.Checked == true) { RadioButton2.Checked = false; }
                //if (RadioButton3.Checked == true) { RadioButton3.Checked = false; }
                TextBox6.Text = "";

                
            }
            catch (Exception ex)
            {
                Label9.Text = ex.ToString();

            }
            finally
            {
                connect.Close();
            }

        }
    }
}