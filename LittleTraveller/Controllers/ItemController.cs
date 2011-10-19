using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using LittleTraveller.Models;
using LittleTraveller.Helpers;

namespace LittleTraveller.Controllers
{
    public class ItemController : Controller
    {
        LittleTravellerDataContext context;
        public ItemController()
        {
            context = new LittleTravellerDataContext();
            Console.SetOut(new DebugTextWriter());
            context.Log = Console.Out;
            ViewData["colors"] = new SelectList(context.Colors, "colorCode", "colorCode");
            ViewData["seasons"] = new SelectList(context.Seasons, "seasonCode", "seasonCode");
            ViewData["SizeTypes"] = new SelectList(context.SizeTypes, "sizeTypeName", "sizeTypeName");
            ViewData["Sizes"] = new SelectList(context.Sizes.Select(s => s.sizeVal));
            ViewData["StyleTypes"] = new SelectList(context.StyleTypes, "ID", "DESC");
            ViewData["Designs"] = new SelectList(context.Designs, "ID", "desc");
        }

        [HttpGet]
        public ActionResult GetSizeList(string sizeTypeName)
        {
            var sizeRepos = context.Sizes;
            var sizeCollections = from sc in sizeRepos
                                  where sc.sizeTypeName == sizeTypeName
                                   select new SelectListItem
                                   {
                                       Text =  sc.sizeVal,
                                       Value = sc.sizeVal
                                   };


            return Json(sizeCollections, JsonRequestBehavior.AllowGet);
        }

        //
        // GET: /Item/

        public ActionResult Index()
        {
            return View(context.GetItems());
        }

        //
        // GET: /Item/Details/5

        public ActionResult Details(string sku)
        {
            var item = context.GetItemBySKU(sku);
            return View(item);
        }

        //
        // GET: /Item/Create

        public ActionResult Create()
        {
            return View(new Item());
        } 

        //
        // POST: /Item/Create

        [HttpPost]
        public ActionResult Create(Item item)
        {
            try
            {
                context.Items.InsertOnSubmit(item);
                context.SubmitChanges();

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
        
        //
        // GET: /Item/Edit/5
 
        public ActionResult Edit(string sku)
        {
 
            var item = context.GetItemBySKU(sku);
            // ViewData["SizeTypes"] = new SelectList(context.SizeTypes, "sizeTypeName", "sizeTypeName",item.sizeType);

           //  var selected = ((SelectList)ViewData["SizeTypes"]).Where(x => x.Value == item.sizeType).First();
           //  selected.Selected = true;
            //foreach (var item in ((SelectList)ViewData["SizeTypes"]).)
            //{
            //    if (item.Value == selectedValue)
            //    {
            //        item.Selected = true;
            //        break;
            //    }
            //}

            return View(item);
        }

        //
        // POST: /Item/Edit/5

        [HttpPost]
        public ActionResult Edit(Item formItem)
        {
            try
            {
                var contextItem = context.GetItemBySKU((string)formItem.sku);
                contextItem.sku = formItem.sku;
                contextItem.seasonID = formItem.seasonID;
                contextItem.colorID = formItem.colorID;
                contextItem.color2ID = formItem.color2ID;
                contextItem.color3ID = formItem.color3ID;
                contextItem.sizeType = formItem.sizeType;
                contextItem.size = formItem.size;
                contextItem.styleTypeID = formItem.styleTypeID;
                contextItem.designID = formItem.designID;
                contextItem.price = formItem.price;
                context.SubmitChanges();

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Item/Delete/5

        public ActionResult Delete(string sku)
        {
            var item = context.GetItemBySKU(sku);
            return View(item);
        }

        //
        // POST: /Item/Delete/5

        [HttpPost]
        public ActionResult Delete(string sku, Item formItem)
        {
            try
            {
                var item = context.GetItemBySKU(sku);
                context.Items.DeleteOnSubmit(item);
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
