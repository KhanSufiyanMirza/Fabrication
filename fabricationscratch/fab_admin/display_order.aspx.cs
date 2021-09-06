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
    public partial class display_order : System.Web.UI.Page
    {  string connectionstring = ConfigurationManager.ConnectionStrings["fabricationConnectionString"].ConnectionString;
       
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(connectionstring);

            conn.Open();
            SqlCommand cmd = conn.CreateCommand();

            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from orders order by id desc ";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();

            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            fl.DataSource = dt;
            fl.DataBind();
            conn.Close();
        }

       
    }
}