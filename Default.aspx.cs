using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab2
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ddlMesec_Load(object sender, EventArgs e)
        {
            var months = CultureInfo.CurrentCulture.DateTimeFormat.MonthNames;
            for (int i = 0; i < months.Length; i++)
            {
                ddlMesec.Items.Add(new ListItem(months[i], i.ToString()));
            }
        }

        protected void ddlDen_Load(object sender, EventArgs e)
        {
            for (int i=1; i<=31; i++)
            {
                ddlDen.Items.Add(new ListItem(i.ToString()));
            }
        }

        protected void ddlVreme_Load(object sender, EventArgs e)
        {
            for (int k=0; k<=22; k++)
            {
                for (int j=0; j<=59; j++)
                {
                    if (k>=0 && k<10 && j>=0 && j<10)
                        ddlVreme.Items.Add("0"+k.ToString() + " : " + "0" + j.ToString());
                    else if  (k >= 0 && k < 10)
                        ddlVreme.Items.Add("0" + k.ToString() + " : " +   j.ToString());

                    else if (j >= 0 && j < 10)
                        ddlVreme.Items.Add(k.ToString() + " : " + "0" + j.ToString());
                    else
                    ddlVreme.Items.Add(k.ToString() + " : " + j.ToString());
                }
            }
        }

        protected void btnPodnesi_Click(object sender, EventArgs e)
        {

            lblKorisnik.Text = txtIme.Text + " " + txtPrezime.Text;
            lblKartaZa.Text = lbSredstvo.SelectedItem.Text;
            lblpocetnaD.Text = ddlOd.SelectedValue;
            lblkrajnaD.Text = ddlDo.SelectedValue;
            Label24.Text = ddlVreme.SelectedValue;
            Label25.Text = rblZona.SelectedValue;
            Label26.Text = rblKlasa.SelectedValue;
            Label13.Text = chkPosluga.SelectedValue;
           
        }

        protected void lbSredstvo_SelectedIndexChanged(object sender, EventArgs e)
        {
            Image1.ImageUrl = "~/images/" + lbSredstvo.SelectedItem.Value;
        }
    }
}