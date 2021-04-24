using System;
using System.Collections.Generic;
using System.ComponentModel.Design;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab2
{
    public partial class Najava : System.Web.UI.Page
    {
        public string pass = "mb";
        public int zgresen = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnPodnesi_Click(object sender, EventArgs e)
        {

            if (tbKorisnik != null && tbPassword.Text.Equals(pass) && zgresen<=3)
            {
                HttpCookie myc = new HttpCookie("Login");
                myc.Expires = DateTime.Now.AddDays(1d);
                Response.Cookies.Add(myc);

                Response.Redirect("GlavnaStranica.aspx");
                
            }
            else if (zgresen > 3)
            {
                lblNajava.Text = "Unauthorized Access.";
                tbKorisnik.Text = " ";
                tbPassword.Text = " ";
            } 
            else
            {
                lblNajava.Text = "Please check your username and password!";
                zgresen++;
            }
        }
    }
}