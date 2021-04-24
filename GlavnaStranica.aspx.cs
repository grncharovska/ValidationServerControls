using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab2
{
    public partial class GlavnaStranica : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["Login"] != null)
            {
              
            } else
            {
                Response.Redirect("Najava.aspx");
            }

        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            HttpCookie mycooc = new HttpCookie("Login");
            mycooc.Expires = DateTime.Now.AddDays(-1d);
            Response.Cookies.Add(mycooc);
        }
    }
}