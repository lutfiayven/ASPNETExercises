using Newtonsoft.Json.Serialization;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETExercises
{
    public partial class ShippingCalculator : System.Web.UI.Page
    {
        const double costPerMile = 0.35;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            // remove error msg on pageload
            lblError.Text = "";
        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            double shippingCost = 0.0;
            double shippingTypeCost = getShippingTypeCost();

            // calculate shpping cost, if invalid inputs, show error msg
            try
            {
                Int32 quantity = Int32.Parse(txtQuantity.Text);
                Int32 distance = Int32.Parse(txtDistance.Text);

                shippingCost = (quantity * shippingTypeCost) + (quantity * (distance * costPerMile));
            }
            catch(Exception ex)
            { 
                lblError.Text = "Quantity and Distance should be numbers.";
            }

            lblCalculatedShippingCost.Text = String.Format("{0:C}", shippingCost);
        }

        // show shipping type cost on select
        protected void ddlShippingType_SelectedIndexChanged(object sender, EventArgs e)
        {
            double shippingTypeCost = getShippingTypeCost();

            lblCalculatedShippingTypeCost.Text = String.Format("{0:C}", shippingTypeCost);
        }

        // get shipping type cost based on selected type
        protected double getShippingTypeCost()
        {
            Int32 ddlShippingTypeIndex = ddlShippingType.SelectedIndex;
            double shippingTypeCost = ddlShippingTypeIndex * 0.05;

            return shippingTypeCost;
        }
    }
}