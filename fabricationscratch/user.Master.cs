using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using fabricationscratch.app_code;

namespace fabricationscratch
{
    public partial class user : System.Web.UI.MasterPage
    {
        readcookies item = new readcookies();

        protected void Page_Load(object sender, EventArgs e)
        {
            total.Text = item.item_count(Request.Cookies["fabcart"]).ToString();
        }
    }
}