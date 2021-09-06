using fabricationscratch.app_code;
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
namespace fabricationscratch
{
    public partial class cart : System.Web.UI.Page
    {
        string connectionstring = ConfigurationManager.ConnectionStrings["fabricationConnectionString"].ConnectionString;
        readcookies dis = new readcookies();


        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {


                DataTable dt = dis.get_cookie_data(Request.Cookies["fabcart"]);
                rep.DataSource = dt;
                rep.DataBind();

            }
            catch (Exception)
            {
                string a = "your cart is empty..";
                Response.Write("<script>alert('" + a + "');</script>");
            }

            if (!IsPostBack)
            {
                dataBinder();
            }
        }
        protected void OnEditing(object sender, EventArgs e)
        {
            RepeaterItem item = (sender as LinkButton).Parent as RepeaterItem;
            item.FindControl("LinkButton4").Visible = true;
            item.FindControl("LinkButton1").Visible = false;
            item.FindControl("LinkButton3").Visible = true;
            item.FindControl("TextBox9").Visible = true;
            item.FindControl("Label1").Visible = false;

        }
        protected void OnDeleting(object sender, EventArgs e)
        { 
            RepeaterItem item = (sender as LinkButton).Parent as RepeaterItem;
            Label lbl = item.FindControl("Label2") as Label;
            using (SqlConnection con = new SqlConnection(connectionstring))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("delete from  cart  where id=@id", con);

                cmd.Parameters.AddWithValue("@id", Convert.ToInt16(lbl.Text));
                cmd.ExecuteNonQuery();
                dataBinder();
            }
        }
        protected void OnCancel(object sender, EventArgs e)
        {

            RepeaterItem item = (sender as LinkButton).Parent as RepeaterItem;
            item.FindControl("LinkButton4").Visible = false;
            item.FindControl("LinkButton1").Visible = true;
            item.FindControl("LinkButton2").Visible = true;
            item.FindControl("LinkButton3").Visible = false;
            item.FindControl("TextBox9").Visible = false;
            item.FindControl("Label1").Visible = true;
        }
        protected void OnUpdating(object sender, EventArgs e)
        {
            RepeaterItem item = (sender as LinkButton).Parent as RepeaterItem;
            TextBox text_qty = (TextBox)item.FindControl("TextBox9");
            string qty = text_qty.Text;
            Label lbl = item.FindControl("Label2") as Label;
            using (SqlConnection con = new SqlConnection(connectionstring))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("update cart set product_quantity=@qty where id=@id", con);
                cmd.Parameters.AddWithValue("@qty", qty);
                cmd.Parameters.AddWithValue("@id", Convert.ToInt16(lbl.Text));
                cmd.ExecuteNonQuery();
                dataBinder();
            }
        }
        public void dataBinder()
        {
            if (Session["user"] != null || Request.Cookies["cart_id"] != null)
            {
                using (SqlConnection con = new SqlConnection(connectionstring))
                {
                    con.Open();
                    SqlCommand cmd;



                    if (Session["user"] == null && Request.Cookies["cart_id"] != null)
                    {
                        cmd = new SqlCommand("select * from cart where cart_id=@cart_id", con);

                        cmd.Parameters.AddWithValue("@cart_id", Convert.ToInt32(Request.Cookies["cart_id"].Value.ToString()));
                    }
                    else
                    {
                        cmd = new SqlCommand("select * from cart where email_id=@email_id", con);
                        cmd.Parameters.AddWithValue("@email_id", Session["user"].ToString());
                    }
                    cmd.ExecuteNonQuery();
                    SqlDataAdapter da = new SqlDataAdapter(cmd);

                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    Rep1.DataSource = dt;
                    Rep1.DataBind();

                }
            }

        }
    }
}