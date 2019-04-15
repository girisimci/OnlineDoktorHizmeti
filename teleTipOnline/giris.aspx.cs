using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace teleTIP_Temel_Sağlık_Hizmeti
{
    public partial class giris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("kayit_ol.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("conn.html");
        }
    }
}