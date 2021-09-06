using fabricationscratch.app_code;
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace fabricationscratch
{
    public partial class addcart : System.Web.UI.Page
    {
        readcookies check = new readcookies();

        private int Id;
        public int id
        {
            set
            {
                if (value.GetType() == typeof(int))
                {
                    Id = value;
                }

            }
            get
            {
                return Id;
            }

        }
        string product_name, product_des, product_price, product_qty, product_images;
        string connectionstring = ConfigurationManager.ConnectionStrings["fabricationConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connectionstring);
            if (Request.QueryString["id"].ToString() != null && Request.QueryString["id"] != "")
            {
                if (con.State == ConnectionState.Open)
                {
                    con.Close();

                }
                con.Open();
                try
                {
                    id = Convert.ToInt32(Request.QueryString["id"].ToString());
                }
                catch (Exception)
                {
                    Response.Write("<script> alert('please enter valid info'); </script> ");

                }

                SqlCommand cmd1 = con.CreateCommand();
                cmd1.CommandType = CommandType.Text;
                cmd1.CommandText = "select product_id,product_name,product_price,product_img from products where product_id=@pid";
                cmd1.Parameters.AddWithValue("@pid", id);
                cmd1.ExecuteNonQuery();
                DataTable dt1 = new DataTable();


                SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
                da1.Fill(dt1);
                DataColumn cart_id = new DataColumn("cart_id", typeof(int));
                cart_id.AllowDBNull = true;
                DataColumn email_id = new DataColumn("email_id", typeof(string));

                email_id.AllowDBNull = true;
                dt1.Columns.Add(cart_id);
                dt1.Columns.Add(email_id);
                dt1.Columns.Add("date", typeof(DateTime));
                dt1.Rows[0]["date"] = DateTime.Now;
                DataColumn product_quantity = new DataColumn("product_quantity", typeof(int));
                dt1.Columns.Add(product_quantity);
                dt1.Columns["product_quantity"].DefaultValue = 1;
            

                if (Session["user"] == null)
                {
                    if (Request.Cookies["cart_id"] == null)
                    {
                        dt1.Rows[0]["cart_id"] = check.getcart_number();
                        Response.Cookies["cart_id"].Value = dt1.Rows[0]["cart_id"].ToString();
                        dt1.Rows[0]["email_id"] = null;
                        Response.Cookies["cart_id"].Expires = DateTime.Now.AddDays(7);

                    }
                    else
                    {
                        dt1.Rows[0]["cart_id"] = Convert.ToInt16(Request.Cookies["cart_id"].Value.ToString());
                        dt1.Rows[0]["email_id"] = null;
                    }


                }
                else
                {

                    dt1.Rows[0]["email_id"] = Session["user"].ToString();
                }

                foreach (DataRow dr in dt1.Rows)
                {


                    product_name = dr["product_name"].ToString();

                    product_price = dr["product_price"].ToString();
                    product_qty = dr["product_quantity"].ToString();
                    product_images = dr["product_img"].ToString();
                    if (con.State == ConnectionState.Open)
                    {
                        con.Close();

                    }
                    con.Open();
                    SqlCommand cmd = new SqlCommand("INSERT INTO cart VALUES('" + dr["product_id"].ToString() + "', '" + dr["product_name"].ToString() + "', '" + dr["product_price"].ToString() + "',  '" + dr["product_quantity"].ToString() + "', '" + dr["product_img"].ToString() + "', '" + dr["cart_id"].ToString() + "', '" + dr["email_id"].ToString() + "', '" + dr["date"].ToString() + "')", con);
                    cmd.ExecuteNonQuery();

                }

                con.Close();
                //if (Request.Cookies["fabcart"] == null)
                //{

                //    Response.Cookies["fabcart"].Value = product_name.ToString() + "&" + product_des.ToString() + "&" + product_price.ToString() + "&" + product_images.ToString() + "&" + id.ToString();
                //    Response.Cookies["fabcart"].Expires = DateTime.Now.AddDays(1);
                //}
                //else if (check.read(Request.Cookies["fabcart"], id))
                //{
                //    Response.Cookies["fabcart"].Value = Request.Cookies["fabcart"].Value + "|" + product_name.ToString() + "&" + product_des.ToString() + "&" + product_price.ToString() + "&" + product_images.ToString() + "&" + id.ToString();
                //    Response.Cookies["fabcart"].Expires = DateTime.Now.AddDays(1);
                //}

                Response.Redirect("index.aspx");
                //To reflect in database when product is Added with some quantity

                //con.Open();
                //SqlCommand cmd2 = con.CreateCommand();
                //cmd2.CommandType = CommandType.Text;
                //cmd2.CommandText = "update product set product_qty=product_qty-" + t1.Text + "where p_id='" + id + "'";
                //cmd2.ExecuteNonQuery();

            }


        }
    }
}