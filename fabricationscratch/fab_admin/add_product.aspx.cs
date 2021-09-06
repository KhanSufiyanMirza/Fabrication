using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using fabricationscratch.app_code;


namespace fabricationscratch.fab_admin
{
    public partial class add_product : System.Web.UI.Page
    {
        string a, b, stored_pro;
        string connectionstring = ConfigurationManager.ConnectionStrings["fabricationConnectionString"].ConnectionString;
        protected void add_pro(string abc)
        {
            SqlConnection con = new SqlConnection(connectionstring);
            con.Open();
            SqlCommand cmd = new SqlCommand(abc, con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@product_name", T1.Text);
            cmd.Parameters.AddWithValue("@product_price", T3.Text);
            cmd.Parameters.AddWithValue("@product_desc", T2.Text);
            cmd.Parameters.AddWithValue("@product_quantity", T4.Text);
            cmd.Parameters.AddWithValue("@product_category", DropDownList1.SelectedItem.ToString());
            cmd.Parameters.AddWithValue("@statement_type", "insert");
            cmd.Parameters.AddWithValue("@product_img", b.ToString());
            cmd.ExecuteNonQuery();
            con.Close();


        }
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Session["admin"] == null)
            //{
            //    Response.Redirect("adminlogin.aspx");
            //}
            //if (IsPostBack) return;

            SqlConnection con = new SqlConnection(connectionstring);
            DropDownList1.Items.Clear();
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from product_category";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            foreach (DataRow dr in dt.Rows)
            {
                DropDownList1.Items.Add(dr["product_category"].ToString());
            }
            con.Close();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            a = Class1.GetRandomPassword(10).ToString();
            img1.SaveAs(Request.PhysicalApplicationPath + "./img/" + a + img1.FileName.ToString());
            b = "/img/" + a + img1.FileName.ToString();

            //SqlCommand cmd = con.CreateCommand();
            //cmd.CommandType = CommandType.Text;
            //cmd.CommandText = "insert into product values('" + T1.Text + "','" + T2.Text + "'," + T3.Text + "," + T4.Text + ",'" + b.ToString() + "','" + DropDownList1.SelectedItem.ToString() + "')";
            //cmd.ExecuteNonQuery();
            if (CheckBox1.Checked)
            {
                stored_pro = "insert_select_pribuild_product";

            }
            else
            {
                stored_pro = "insert_select_product";
            }
           
            add_pro(stored_pro);
            Response.Write("<script>alert('product added successfully');</script>");
            T1.Text = "";
            T2.Text = "";
            T3.Text = "";
            T4.Text = "";

        }
    }
}