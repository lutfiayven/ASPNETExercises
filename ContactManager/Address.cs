using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ASPNETExercises.ContactManager
{
    public class Address
    {
        private String street;
        private String city;
        private String state;
        private String zip;

        public Address() { }

        public Address(String street, String city, String state, String zip)
        {
            Street = street;
            City = city;
            State = state;
            Zip = zip;
        }

        public string Street
        {
            get { return street; }
            set { this.street = value; }
        }

        public string City
        {
            get { return city; }
            set { this.city = value; }
        }

        public string State
        {
            get { return state; }
            set { this.state = value; }
        }

        public string Zip
        {
            get { return zip; }
            set { this.zip = value; }
        }
    }
}