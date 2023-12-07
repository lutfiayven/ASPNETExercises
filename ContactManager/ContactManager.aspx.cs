using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETExercises.ContactManager
{
    public partial class ContactManager : System.Web.UI.Page
    {
        Person[] people;
        int current;
        protected void Page_Load(object sender, EventArgs e)
        {
            // if not postback create array and session
            // else just get session data
            if (!IsPostBack)
            {
                people = new Person[5];
                current = 0;
                people[0] = new Person("Bob", "Smith", "123-4567", new
                Address("200 2nd Ave", "Minneapolis", "MN", "55416"));
                people[1] = new Person("Bill", "Brooks", "122-1211", new
                Address("14 John St.", "St. Petersburg", "FL", "11358"));
                people[2] = new Person("Gus", "Fraiser", "123-4447", new
                Address("20 29th St.", "Chicago", "IL", "60612"));
                people[3] = new Person("Tom", "Jones", "123-5555", new
                Address("701 Pots Rd.", "Holtsville", "NY", "06543"));
                people[4] = new Person("Sue", "Shard", "", new Address());
                Session["people"] = people;
                Session["current"] = current;

                loadPerson(current);
            }
            else
            {
                people = Session["people"] as Person[];
                current = (int)Session["current"];
            }

            
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            int currentPerson = (int)Session["current"];
            updatePerson(currentPerson);
        }

        protected void btnPrevious_Click(object sender, EventArgs e)
        {
            updateCurrent(-1);
            loadPerson((int)Session["current"]);
        }

        protected void btnNext_Click(object sender, EventArgs e)
        {
            updateCurrent(1);
            loadPerson((int)Session["current"]);
        }

        // load person info to textbox
        protected void loadPerson(int listIndex)
        {
            txtFirstName.Text = people[listIndex].FirstName;
            txtLastName.Text = people[listIndex].LastName;  
            txtPhoneNumber.Text = people[listIndex].PhoneNumber;
            txtStreet.Text = people[listIndex].Address.Street;
            txtCity.Text = people[listIndex].Address.City;
            txtState.Text = people[listIndex].Address.State;
            txtZip.Text = people[listIndex].Address.Zip;
        }

        // update individual person data and update in array and session
        protected void updatePerson(int listIndex)
        {
            people[listIndex] = new Person(txtFirstName.Text, txtLastName.Text, txtPhoneNumber.Text, new Address(txtStreet.Text, txtCity.Text, txtState.Text, txtZip.Text));
            Session["people"] = people;
        }

        // update currrent/selected index from the people array
        // newSelected will be added/subtracted to the current index to get the new selected index 
        protected void updateCurrent(int newSelected)
        {
            current = (int)Session["current"];
            int newCurrent = current + newSelected;
            if (newCurrent < 0)
            {
                newCurrent = people.Length - 1;
            }
            if (newCurrent >= people.Length) 
            {
                newCurrent = 0;
            }
            Session["current"] = newCurrent;
        }
    }
}