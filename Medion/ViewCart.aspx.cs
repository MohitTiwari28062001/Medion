using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Medion
{
    public partial class ViewCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionString = "server=.;database=Medion;integrated security=true";
            string sessionID = Session["sessionID"].ToString();

            SqlConnection connect = new SqlConnection(connectionString);
            SqlDataAdapter adapter = new SqlDataAdapter("select productID, productName, productPrice, productDescription, categoryType, productImage, quantity, productPrice*quantity as 'totalAmount' from tbl_cart where sessionID ='" + sessionID + "'", connect);
            DataSet set = new DataSet();

            int gtotal = 0;

            if (!Page.IsPostBack)
            {
                adapter.Fill(set, "tbl_cart");
                foreach (DataRow dr in set.Tables["tbl_cart"].Rows)
                {
                    gtotal = gtotal + Convert.ToInt32(dr["totalAmount"].ToString());
                }

                //Label1.Text = gtotal.ToString();
                DataList1.DataSource = set.Tables["tbl_cart"];
                DataList1.DataBind();
            }
        }

        protected void Button1(object sender, EventArgs e)
        {
            Response.Redirect("Tablets.aspx");
        }
        protected void Button2(object sender, EventArgs e)
        {
            Response.Redirect("Tablets.aspx");
        }
    }
}