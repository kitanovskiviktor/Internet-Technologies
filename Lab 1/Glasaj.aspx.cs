using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InternetTehnologii3
{
    public partial class Glasaj : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                ListItem item1 = new ListItem("Интернет Технологии", "Гоце Арменски");
                ListItem item2 = new ListItem("Интернет", "Гоце Арменски2");
                ListItem item3 = new ListItem("Дигитална Електроника", "Гоце Арменски3");

                lbPredmeti.Items.Add(item1);
                lbPredmeti.Items.Add(item2);
                lbPredmeti.Items.Add(item3);

                ListItem item4 = new ListItem("6", "6");
                ListItem item5 = new ListItem("5.5", "5.5");
                ListItem item6 = new ListItem("5.5", "5.5");

                lbKrediti.Items.Add(item4);
                lbKrediti.Items.Add(item5);
                lbKrediti.Items.Add(item6);
            }
        }

        protected void lbPredmeti_SelectedIndexChanged(object sender, EventArgs e)
        {
            ListItemCollection items = lbPredmeti.Items;
            foreach(ListItem predmet in items)
            {
                if(predmet.Selected)
                {
                    lblProfesor.Text = predmet.Text;
                    break;
                }
            }
        }

        protected void Dodadi_Click(object sender, EventArgs e)
        {
            TextBox novPredmet = newPredmet;
            ListItem newPredmetItem = new ListItem(novPredmet.Text);
            lbPredmeti.Items.Add(newPredmetItem);

            TextBox novKredit = newKrediti;
            ListItem newKreditItem = new ListItem(novKredit.Text);
            lbKrediti.Items.Add(newKreditItem);
        }

        protected void Izbrisi_Click(object sender, EventArgs e)
        {
            ListItemCollection items = lbPredmeti.Items;
            ListItem selectedItem = null;

            foreach(ListItem item in items)
            {
                if(item.Selected)
                {
                    selectedItem = item;
                }
            }

     
            int index = items.IndexOf(selectedItem);
            SelectedPredmet.Text = index.ToString();

            lbPredmeti.Items.RemoveAt(index);
            lbKrediti.Items.RemoveAt(index);
        }

        protected void Glasajte_Click(object sender, EventArgs e)
        {
            Response.Redirect("UspesnoGlasanje.aspx");
        }
    }
}