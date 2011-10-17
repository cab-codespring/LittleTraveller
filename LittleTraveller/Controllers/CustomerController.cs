using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using LittleTraveller.Models;


namespace LittleTraveller.Controllers
{
    public class CustomerController : Controller
    {
        LittleTravellerDataContext context;
        public CustomerController()
        {
            context = new LittleTravellerDataContext();
            Console.SetOut(new DebugTextWriter());
            context.Log = Console.Out;
            ViewData["states"] = new SelectList(context.states, "name", "name");

        }

        //
        // GET: /Customer/

        public ActionResult Index()
        {
            return View(context.GetCustomers());
        }

        //
        // GET: /Customer/Details/5

        public ActionResult Details(int id)
        {
            var cust = context.GetCustomerByID((short)id);
            return View(cust);
        }

        //
        // GET: /Customer/Create

        public ActionResult Create()
        {
            return View(new Customer());
        }

        //
        // POST: /Customer/Create

        [HttpPost]
        public ActionResult Create(Customer cust)
        {
            try
            {
                // Don't need this with Linq - is that awesome or what?
                //cust.CustomerNum = Convert.ToInt16(collection.GetValue("CustomerNum").ToString());
                //cust.CompanyName = collection.GetValue("CompanyName").ToString();
                //cust.BillToAddr1 = collection.GetValue("BillToAddr1").ToString();
                //cust.BillToAddr2 = collection.GetValue("BillToAddr2").ToString();
                //cust.BillToCity = collection.GetValue("BillToCity").ToString();
                //cust.BillToState = collection.GetValue("BillToState").ToString();
                //cust.BillToPhone = collection.GetValue("BillToPhone").ToString();
                //cust.email = collection.GetValue("email").ToString();


                context.Customers.InsertOnSubmit(cust);
                context.SubmitChanges();

                return RedirectToAction("Index");
            }
            catch (Exception biteMeIfNotUsed)
            {
                return View();
            }
        }

        //
        // GET: /Customer/Edit/5

        public ActionResult Edit(int id)
        {
            var cust = context.GetCustomerByID((short)id);
            return View(cust);

        }

        //
        // POST: /Customer/Edit/5

        [HttpPost]
        public ActionResult Edit(Customer formCust)
        {
            try
            {
                // TODO: Add update logic here

                var contextCust = context.GetCustomerByID((short)formCust.CustomerNum);

                contextCust.CompanyName = formCust.CompanyName;
                contextCust.BillToAddr1 = formCust.BillToAddr1;
                contextCust.BillToAddr2 = formCust.BillToAddr2;
                contextCust.BillToCity = formCust.BillToCity;
                contextCust.BillToState = formCust.BillToState;
                contextCust.BillToZip5 = formCust.BillToZip5;
                contextCust.BillToZip4 = formCust.BillToZip4;
                contextCust.BillToPhone = formCust.BillToPhone;
                contextCust.BillToFax = formCust.BillToFax;
                contextCust.email = formCust.email;
                contextCust.ShipToAddr1 = formCust.ShipToAddr1;
                contextCust.ShipToAddr2 = formCust.ShipToAddr2;
                contextCust.ShipToCity = formCust.ShipToCity;
                contextCust.ShipToState = formCust.ShipToState;
                contextCust.ShipToZip5 = formCust.ShipToZip5;
                contextCust.ShipToZip4 = formCust.ShipToZip4;
                contextCust.ShipToPhone = formCust.ShipToPhone;
                contextCust.ShipToFax = formCust.ShipToFax;

                context.SubmitChanges();

                return RedirectToAction("Index");
            }
            catch (Exception e2)
            {
                return View();
            }
        }

        //
        // GET: /Customer/Delete/5

        public ActionResult Delete(int id)
        {
            var cust = context.GetCustomerByID((short)id);
            return View(cust);


        }

        //
        // POST: /Customer/Delete/5

        [HttpPost]
        public ActionResult Delete(short id, Customer formCust)
        {
            try
            {
                var cust = context.GetCustomerByID((short)id);
                context.Customers.DeleteOnSubmit(cust);
                context.SubmitChanges();
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
