using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETExercises
{
    public partial class LoanCalculator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void submitBtn_Click(object sender, EventArgs e)
        {
            double price = Double.Parse(txtPrice.Text);
            double downPayment = Double.Parse(txtDownPayment.Text);
            double interest = Double.Parse(txtInterest.Text);
            double totalLoanAmt = price - downPayment;
            double monthlyRate = interest / 12 / 100;
            int loanLength = 24;

            // clear listbox first
            paymentsLstBox.Items.Clear();
            // add label to listbox
            paymentsLstBox.Items.Add("Months - Monthly Payments");

            // loop and add monthly payments up to 5 yrs
            for (int i = 0; i < 4; i++)
            {
                double monthlyPayment = totalLoanAmt * monthlyRate * Math.Pow(1 + monthlyRate, loanLength) / (Math.Pow(1 + monthlyRate, loanLength) - 1);
                paymentsLstBox.Items.Add(new ListItem(loanLength + "..............." + String.Format("{0:C}", monthlyPayment)));
                loanLength += 12;
            }
            
        }
    }
}