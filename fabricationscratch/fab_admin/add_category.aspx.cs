using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace fabricationscratch.fab_admin
{

    public partial class add_category : System.Web.UI.Page
    {
        string connectionstring = ConfigurationManager.ConnectionStrings["fabricationConnectionString"].ConnectionString;
        public void show()
        {
            SqlConnection conn = new SqlConnection(connectionstring);

            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from product_category";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            
            repeat.DataSource = dt;
            repeat.DataBind();
            conn.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {


            show();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(connectionstring);
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();

            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into product_category values('" + T1.Text + "')";
            cmd.ExecuteNonQuery();
            conn.Close();
            show();
            Response.Write("<script>alert('product category added successfully');</script>");

        }

    }
}