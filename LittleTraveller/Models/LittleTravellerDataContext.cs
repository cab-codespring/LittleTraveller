using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LittleTraveller.Models
{

    public partial class LittleTravellerDataContext
    {
        
        public List<Customer> GetCustomers()
        {
            return Customers.ToList();
        }

        public Customer GetCustomerByID(short CustID)
        {
            return Customers.SingleOrDefault(c => c.CustomerNum == CustID);
        }
        public List<Item> GetItems()
        {
            return Items.ToList();
        }

        public Item GetItemBySKU(string SKU)
        {
            return Items.SingleOrDefault(c => c.sku == SKU);
        }

 
 
    }

}