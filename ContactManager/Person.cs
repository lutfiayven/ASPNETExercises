using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Web;

namespace ASPNETExercises.ContactManager
{
    public class Person
    {
        // private members
        private string firstName;
        private string lastName;
        private string phoneNumber;
        private Address address;

        public Person()
        {

        }

        public Person(string firstName, string lastName, string phoneNumber, Address address)
        {
            // switched to use accessors
            //this.firstName = firstName;
            //this.lastName = lastName;
            //this.phoneNumber = phoneNumber;

            FirstName = firstName;
            LastName = lastName;
            PhoneNumber = phoneNumber;
            Address = address;
        }

        public string FirstName
        {
            get { return firstName; }
            set { this.firstName = value; }
        }
        public string LastName
        {
            get { return lastName; }
            set { this.lastName = value; }
        }

        public string PhoneNumber
        {
            get { return phoneNumber; }
            set {
                if (value != "")
                    phoneNumber = value;
                else
                    phoneNumber = "Not Provided";
            }
        }

        public Address Address
        {
            get { return address; }
            set { this.address = value; }
        }
    } 
}