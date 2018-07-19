using Customer_BLL;
using IPL_Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Presentation_Layer.Account.Customer
{
    public partial class Results : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TeamName_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {

                var data = new List<Stat>();
               string search = (TeamName.SelectedValue.ToString());
                CUSTOMER_BLL obje = new CUSTOMER_BLL();
                data = obje.view_stat(search);
                txtPlayed.Text = (data[0].Played).ToString();
                txtwon.Text = (data[0].Won).ToString();
                txtlost.Text = (data[0].Lost).ToString();
                txtTied.Text = (data[0].Tied).ToString();
                txtnr.Text = (data[0].NR).ToString();
                txtnetrr.Text = (data[0].NetRR).ToString();
                txtpts.Text = (data[0].Pts).ToString();
                txtfrompts.Text = (data[0].FromPoints).ToString();
                txtPlayed.Visible = true;
                txtwon.Visible = true;
                txtlost.Visible = true;
                txtTied.Visible = true;
                txtnr.Visible = true;
                txtnetrr.Visible = true;
                txtpts.Visible = true;
                txtfrompts.Visible = true;
                lblfrmpoints.Visible = true;
                lbllost.Visible = true;
                lblname.Visible = true;
                lblnr.Visible = true;
                lblnrr.Visible = true;
                lblplayed.Visible = true;
                lblwon.Visible = true;
                lbltied.Visible = true;
                lblpoints.Visible = true;
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
    }
}