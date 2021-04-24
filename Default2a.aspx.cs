using System;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace lab2
{
    public partial class Default2a : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      
            protected void btnPodnesi_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
                lastLabel.Text = "Welcome " + tbID;
            else
                lastLabel.Text = "Не ги исполнувате условите";
        }

        
    }
}