using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab1_GrupaV
{
    public partial class Glasaj : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          if(!IsPostBack)
            {
                lbPredmeti.Items.Add(new ListItem("Гоце Арменски"));
                lbPredmeti.Items.Add(new ListItem("Гоце Арменски2"));
                lbPredmeti.Items.Add(new ListItem("Гоце Арменски3"));

                lbKrediti.Items.Add(new ListItem("6"));
                lbKrediti.Items.Add(new ListItem("6"));
                lbKrediti.Items.Add(new ListItem("6"));
            }
        }

        protected void lbPredmeti_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblProfesor.Text = lbPredmeti.SelectedItem.Text;
            lbKrediti.SelectedIndex = lbPredmeti.SelectedIndex;
        }

        protected void addClick(object sender, EventArgs e)
        {
           if(predmetInput.Text != "" && kreditiInput.Text != "")
            {
                lbPredmeti.Items.Add(new ListItem(predmetInput.Text));
                lbKrediti.Items.Add(new ListItem(kreditiInput.Text));
            }
        }

        protected void deleteClick(object sender, EventArgs e)
        {
            int index = lbPredmeti.SelectedIndex;
            lbPredmeti.Items.RemoveAt(index);
            lbKrediti.Items.RemoveAt(index);
        }

        protected void voteClick(object sender, EventArgs e)
        {
            Response.Redirect("UspeshnoGlasanje.aspx");
        }
    }
}