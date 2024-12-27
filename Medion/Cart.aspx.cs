using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Runtime.Remoting.Contexts;

namespace Medion
{
    public partial class Cart : System.Web.UI.Page
    {
        string connectionString = "server=.;database=Medion;integrated security=true";
        SqlConnection connect = null;
        SqlCommand cmd = null;
        SqlDataReader reader = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            string sessionID = Session.SessionID;
            Session["sessionID"] = sessionID;

            connect = new SqlConnection(connectionString);
            string productID = Request.QueryString["productID"].ToString();

            int quantity = 1;
            string productName = null;
            string productImage = null;
            string productDes = null;
            string catType = null;
            decimal price = 0;

            string selectQuery = "select count(*) from tbl_cart where productID = @pi and sessionID = @si";
            try
            {
                connect.Open();
                cmd = new SqlCommand(selectQuery, connect);
                cmd.Parameters.AddWithValue("@pi", productID);
                cmd.Parameters.AddWithValue("@si", Session["sessionID"].ToString());
                int res = Convert.ToInt32(cmd.ExecuteScalar());

                if (res == 0)
                {
                    string query = "select * from tbl_Medicines where productID = @pi";
                    cmd = new SqlCommand(query, connect);
                    cmd.Parameters.AddWithValue("@pi", productID);
                    reader = cmd.ExecuteReader();

                    if (reader.Read())
                    {
                        productName = reader["productTitle"].ToString();
                        productImage = reader["productImg"].ToString();
                        productDes = reader["productDescription"].ToString();
                        catType = reader["categoryType"].ToString();
                        price = Convert.ToDecimal(reader["price"].ToString());
                    }
                    reader.Close();
                    string insertQuery = "insert into tbl_cart values(@pi, @pn, @pr,@pd,@ct, @pimg, @sid, @qty)";
                    cmd = new SqlCommand(@insertQuery, connect);
                    cmd.Parameters.AddWithValue("@pi", productID);
                    cmd.Parameters.AddWithValue("@pn", productName);
                    cmd.Parameters.AddWithValue("@pr", price);
                    cmd.Parameters.AddWithValue("@pd", productDes);
                    cmd.Parameters.AddWithValue("@ct", catType);
                    cmd.Parameters.AddWithValue("@pimg", productImage);
                    cmd.Parameters.AddWithValue("@sid", Session["sessionID"].ToString());
                    cmd.Parameters.AddWithValue("@qty", quantity);
                    cmd.ExecuteNonQuery();
                    Response.Redirect("ViewCart.aspx");
                }
                else
                {
                    string qr3 = "update tbl_cart set quantity=quantity+1 where productID =@prid and sessionID=@srid";
                    SqlCommand cmd4 = new SqlCommand(qr3, connect);
                    cmd4.Parameters.AddWithValue("@prid", productID);
                    cmd4.Parameters.AddWithValue("@srid", Session["sessionID"].ToString());
                    cmd4.ExecuteNonQuery();
                    Response.Redirect("ViewCart.aspx");

                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());

            }
            finally
            {
                connect.Close();
            }
        }
    }
}