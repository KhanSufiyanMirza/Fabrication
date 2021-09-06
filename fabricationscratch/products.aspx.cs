using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace fabricationscratch
{
    public partial class products : System.Web.UI.Page
    {
        string connectionstring = ConfigurationManager.ConnectionStrings["fabricationConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(connectionstring);
            con.Open();

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            if (Request.QueryString["category"] == null || Request.QueryString["category"] == "")
            {
                cmd.CommandText = "select * from products";

            }
            else
            {
                cmd.CommandText = "select * from products where product_category=@category";
                cmd.Parameters.AddWithValue("@category", Request.QueryString["category"].ToString());
            }
            if (Request.QueryString["category"] == null && Request.QueryString["search"] != null)
            {

                cmd.CommandText = "select * from products where product_name like '%' + @search + '%'";
                cmd.Parameters.AddWithValue("@search", Request.QueryString["search"].ToString());

            }


            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            rep.DataSource = dt;
            rep.DataBind();

            con.Close();

        }
    }
}