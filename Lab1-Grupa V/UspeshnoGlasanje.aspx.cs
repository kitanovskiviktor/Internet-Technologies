using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab1_GrupaV
{
    public partial class UspeshnoGlasanje : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            userEmail.Text = Session["email"].ToString();
        }
    }
}