using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace fabricationscratch.fab_admin
{
    public partial class delete_category : System.Web.UI.Page
    {
        string category;
        string connectionstring = ConfigurationManager.ConnectionStrings["fabricationConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(connectionstring);
            category = Request.QueryString["category"].ToString();
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "delete from product_category where product_category='" + category.ToString() + "'";
            cmd.ExecuteNonQuery();
            SqlCommand cmd1 = conn.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "delete from products where product_category='" + category.ToString() + "'";
            cmd1.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("add_category.aspx");

        }
    }
}