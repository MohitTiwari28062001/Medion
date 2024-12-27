using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Medion
{
    public partial class VitaminsNSupplements : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionString = "server=.;database=Medion;integrated security=true";
            string selectQuery = "select * from tbl_Medicines where categoryType='Vitamins & Supplements'";
            SqlConnection connect = new SqlConnection(connectionString);
            SqlDataAdapter adapter = new SqlDataAdapter(selectQuery, connect);
            DataSet set = new DataSet();
            if (!Page.IsPostBack)
            {
                adapter.Fill(set, "Medicines");
                DataList1.DataSource = set.Tables["Medicines"];
                DataList1.DataBind();
            }
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            int productID = Convert.ToInt32(e.CommandArgument);
            Response.Redirect("ProductDetails.aspx?productID=" + productID);
        }
    }
}