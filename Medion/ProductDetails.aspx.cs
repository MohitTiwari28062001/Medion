using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Medion
{
    public partial class ProductDetails : System.Web.UI.Page
    {
        string productID = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            productID = Request.QueryString["productID"].ToString();

            string connectionString = "server=.;database=Medion; integrated security=true";
            SqlConnection connect = new SqlConnection(connectionString);
            SqlDataAdapter ad = new SqlDataAdapter("select * from tbl_Medicines where productID= @pi", connect);
            ad.SelectCommand.Parameters.AddWithValue("@pi",productID);
            DataSet set = new DataSet();
            if (!Page.IsPostBack) {
                ad.Fill(set, "Medicines");
                DataList1.DataSource = set.Tables["Medicines"];
                DataList1.DataBind();
            }
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {

        }
        protected void Btn1_Click(object sender, EventArgs e)
        {
            Response.Redirect("About.aspx");
        }
        protected void Btn2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cart.aspx?productID=" + productID);
        }
        protected void Btn3_Click(object sender, EventArgs e)
        {
            Response.Redirect("SingIn.aspx");
        }
    }
}