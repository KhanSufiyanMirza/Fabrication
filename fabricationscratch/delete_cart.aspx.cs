using System;
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
    public partial class delete_cart : System.Web.UI.Page
    {
        readcookies del_cart = new readcookies();
        int id;
        int count = 0;
        string product_name, product_des, product_price, product_qty, product_images, product_id = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                id = Convert.ToInt32(Request.QueryString["id"].ToString());

            }
            catch (Exception)
            {


            }

            DataTable dt = del_cart.delete_cookie(id, Request.Cookies["fabcart"]);
            Response.Cookies["cart"].Expires = DateTime.Now.AddDays(-1);
            Response.Cookies["cart"].Expires = DateTime.Now.AddDays(-1);
            foreach (DataRow dr in dt.Rows)
            {
                product_name = dr["product_name"].ToString();
                product_des = dr["product_desc"].ToString();
                product_price = dr["product_price"].ToString();
                product_qty = dr["product_qty"].ToString();
                product_images = dr["product_image"].ToString();
                product_id = dr["product_id"].ToString();


                count = count + 1;
                if (count == 1)
                {
                    Response.Cookies["cart"].Value = product_name.ToString() + "&" + product_des.ToString() + "&" + product_price.ToString() + "&" + product_qty.ToString() + "&" + product_images.ToString() + "&" + product_id.ToString();
                    Response.Cookies["cart"].Expires = DateTime.Now.AddDays(1);
                }
                else
                {

                    Response.Cookies["cart"].Value = Request.Cookies["fabcart"].Value + "|" + product_name.ToString() + "&" + product_des.ToString() + "&" + product_price.ToString() + "&" + product_qty.ToString() + "&" + product_images.ToString() + "&" + product_id.ToString();

                    Response.Cookies["cart"].Expires = DateTime.Now.AddDays(1);
                }
            }
            Response.Redirect("cart.aspx");

        }
    }
}