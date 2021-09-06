using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace fabricationscratch.app_code
{
    public class readcookies
    {
        string s;
        string t;
        string[] a = new string[5];

        public int item_count(HttpCookie cook)
        {
            int count = 0;

            if (cook != null)

            {
                s = Convert.ToString(cook.Value);
                string[] sa = s.Split('|');
                for (int i = 0; i < sa.Length; i++)
                {
                    count++;

                }

            }




            return count;
        }
        public bool read(HttpCookie cook, int pid)
        {
            bool check = true;
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[6] { new DataColumn("product_name"), new DataColumn("product_desc"), new DataColumn("product_price"), new DataColumn("product_images"), new DataColumn("id"), new DataColumn("product_id") });
            if (cook != null)

            {
                s = Convert.ToString(cook.Value);
                string[] sa = s.Split('|');
                for (int i = 0; i < sa.Length; i++)
                {
                    t = Convert.ToString(sa[i].ToString());
                    string[] st = t.Split('&');
                    for (int j = 0; j < st.Length; j++)
                    {
                        a[j] = st[j].ToString();

                    }



                    dt.Rows.Add(a[0].ToString(), a[1].ToString(), a[2].ToString(), a[3].ToString(), i.ToString(), a[4].ToString());




                }
            }


            foreach (DataRow dr in dt.Rows)
            {
                if (pid == Convert.ToInt32(dr["product_id"].ToString()))
                {
                    check = false;

                }



            }


            return check;
        }
        public DataTable delete_cookie(int id, HttpCookie cook)
        {
            string connectionstring = ConfigurationManager.ConnectionStrings["fabricationConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(connectionstring);
            string s, t;
            string[] a = new string[5];

            //string product_id = null;
            //int count = 0;
            //int qty = 0;

            DataTable dt = new DataTable();
            dt.Rows.Clear();
            dt.Columns.AddRange(new DataColumn[6] { new DataColumn("product_name"), new DataColumn("product_desc"), new DataColumn("product_price"), new DataColumn("product_image"), new DataColumn("id"), new DataColumn("product_id") });
            if (cook != null)

            {
                s = Convert.ToString(cook.Value);
                string[] sa = s.Split('|');
                for (int i = 0; i < sa.Length; i++)
                {
                    t = Convert.ToString(sa[i].ToString());
                    string[] st = t.Split('&');
                    for (int j = 0; j < st.Length; j++)
                    {
                        a[j] = st[j].ToString();

                    }



                    dt.Rows.Add(a[0].ToString(), a[1].ToString(), a[2].ToString(), a[3].ToString(), i.ToString(), a[4].ToString());



                }
            }

            //count = 0;
            //foreach (DataRow dr in dt.Rows)
            //{
            //    if (count == id)
            //    {
            //        product_id = dr["product_id"].ToString();
            //        qty = Convert.ToInt32(dr["product_qty"].ToString());

            //    }
            //    count++;


            //}
            //count = 0;
            //con.Open();

            //SqlCommand cmd = con.CreateCommand();
            //cmd.CommandType = CommandType.Text;
            //cmd.CommandText = "update products set product_quantity=product_quantity+" + qty.ToString() + "where product_id=" + product_id.ToString();
            //cmd.ExecuteNonQuery();
            //con.Close();





            //chnagge data
            //dt =(DataTable) Session["DataGridview"];
            dt.Rows.RemoveAt(id);
            return dt;




        }
        public DataTable get_cookie_data(HttpCookie cook)
        {
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[6] { new DataColumn("product_name"), new DataColumn("product_desc"), new DataColumn("product_price"), new DataColumn("product_images"), new DataColumn("id"), new DataColumn("product_id") });
            if (cook != null)

            {
                s = Convert.ToString(cook.Value);
                string[] sa = s.Split('|');
                for (int i = 0; i < sa.Length; i++)
                {
                    t = Convert.ToString(sa[i].ToString());
                    string[] st = t.Split('&');
                    for (int j = 0; j < st.Length; j++)
                    {
                        a[j] = st[j].ToString();

                    }


                    dt.Rows.Add(a[0].ToString(), a[1].ToString(), a[2].ToString(), a[3].ToString(), i.ToString(), a[4].ToString());



                }
            }
            return dt;





        }
        public int getcart_number()
        {
            int cart_number;
            DataTable ds;
            string connectionstring = ConfigurationManager.ConnectionStrings["fabricationConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connectionstring))
            {
                    con.Open();
                String myquery = "select cart_id from cart";
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = myquery;
                cmd.Connection = con;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                ds = new DataTable();
                da.Fill(ds);
            }

            if (ds.Rows.Count < 1)
            {
                cart_number = 1;

            }

            else
            {




                using (SqlConnection con1 = new SqlConnection(connectionstring))
                {
                    con1.Open();
                    String myquery1 = "select max(cart_id) from cart";
                    SqlCommand cmd1 = new SqlCommand();
                    cmd1.CommandText = myquery1;
                    cmd1.Connection = con1;
                    SqlDataAdapter da1 = new SqlDataAdapter();
                    da1.SelectCommand = cmd1;
                    DataSet ds1 = new DataSet();
                    da1.Fill(ds1);
                    cart_number = Convert.ToInt32(ds1.Tables[0].Rows[0][0]);
                    cart_number += 1;



                }


            }
            return cart_number;
        }

    }
}