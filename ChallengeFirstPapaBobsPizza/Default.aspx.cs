using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ChallengeFirstPapaBobsPizza
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void orderButton_Click(object sender, EventArgs e)
        {
            messageLabel.Text = "";
            double price = 0.00;
            if ((babySizeRadio.Checked || mamaSizeRadio.Checked || papaSizeRadio.Checked) 
                && (thinCrustRadio.Checked || deepCrustRadio.Checked))
            {
                price = (babySizeRadio.Checked) ? 10 :
                        (mamaSizeRadio.Checked) ? 13 : 16;
                price = (deepCrustRadio.Checked) ? (price + 2) : price;
                price = (peppBox.Checked) ? (price + 1.5) : price;
                price = (onionBox.Checked) ? (price + .75) : price;
                price = (gPepBox.Checked) ? (price + .5) : price;
                price = (rPepBox.Checked) ? (price + .75) : price;
                price = (anchBox.Checked) ? (price + 2) : price;

                if(peppBox.Checked && ((gPepBox.Checked && anchBox.Checked) || (rPepBox.Checked && onionBox.Checked)))
                {
                    messageLabel.Attributes["style"] = "color: green; font-weight: bold;";
                    messageLabel.Text = "$2.00 Discount applied!";
                    price = price - 2;
                }
                priceLabel.Text = price.ToString("C");

            }
            else
            {
                messageLabel.Attributes["style"] = "color: red; font-weight: bold;";
                messageLabel.Text = "You must select both a size and a crust type.";
            }
        }
    }
}