﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using fabricationscratch.app_code;
namespace fabricationscratch
{
    public partial class add_cookies : System.Web.UI.Page
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
                cmd1.CommandText = "select * from products where product_id=@pid";
                cmd1.Parameters.AddWithValue("@pid", id);
                cmd1.ExecuteNonQuery();
                DataTable dt1 = new DataTable();

                SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
                da1.Fill(dt1);
                foreach (DataRow dr in dt1.Rows)
                {


                    product_name = dr["product_name"].ToString();
                    product_des = dr["product_desc"].ToString();
                    product_price = dr["product_price"].ToString();
                    product_qty = dr["product_quantity"].ToString();
                    product_images = dr["product_img"].ToString();

                }


                con.Close();
                if (Request.Cookies["fabcart"] == null)
                {

                    Response.Cookies["fabcart"].Value = product_name.ToString() + "&" + product_des.ToString() + "&" + product_price.ToString() + "&" + product_images.ToString() + "&" + id.ToString();
                    Response.Cookies["fabcart"].Expires = DateTime.Now.AddDays(1);
                }
                else if (check.read(Request.Cookies["fabcart"], id))
                {
                    Response.Cookies["fabcart"].Value = Request.Cookies["fabcart"].Value + "|" + product_name.ToString() + "&" + product_des.ToString() + "&" + product_price.ToString() + "&" + product_images.ToString() + "&" + id.ToString();
                    Response.Cookies["fabcart"].Expires = DateTime.Now.AddDays(1);
                }

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