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
            ViewData["Colors"] = new SelectList(context.Colors, "ColorCode", "ColorCode");
            ViewData["Seasons"] = new SelectList(context.Seasons, "SeasonCode", "SeasonCode");
            ViewData["SizeTypes"] = new SelectList(context.SizeTypes, "SizeTypeName", "SizeTypeName");
            ViewData["Sizes"] = new SelectList(context.Sizes.Select(s => s.SizeVal));
            ViewData["StyleTypes"] = new SelectList(context.StyleTypes, "ID", "Desc");
            ViewData["Designs"] = new SelectList(context.Designs, "ID", "Desc");
            ViewData["CascadedSizes"] = new SelectList(context.Sizes, "SizeVal", "SizeVal");
        }

        [HttpGet]
        public ActionResult GetSizeList(string sizeTypeName)
        {
            var sizeRepos = context.Sizes;
            var sizeCollections = from sc in sizeRepos
                                  where sc.SizeTypeName == sizeTypeName
                                  select new SelectListItem
                                  {
                                      Text = sc.SizeVal,
                                      Value = sc.SizeVal
                                  };

            ViewData["CascadedSizes"] = new SelectList(sizeCollections);
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

        public ActionResult Details(string Sku)
        {
            var item = context.GetItemBySKU(Sku);
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

        public ActionResult Edit(string Sku)
        {

            var item = context.GetItemBySKU(Sku);
            // ViewData["SizeTypes"] = new SelectList(context.SizeTypes, "sizeTypeName", "sizeTypeName",item.SizeType);

         //   var selected = ((SelectList)ViewData["SizeTypes"]).Where(x => x.Value == item.SizeType).First();
         //   selected.Selected = true;
            //foreach (var x in ((SelectList)ViewData["SizeTypes"]))
            //{
            //    if (x.Value == item.SizeType.TrimEnd())
            //    {
            //        x.Selected = true;
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
                var contextItem = context.GetItemBySKU((string)formItem.Sku);
                contextItem.Sku = formItem.Sku;
                contextItem.SeasonID = formItem.SeasonID;
                contextItem.ColorID = formItem.ColorID;
                contextItem.Color2ID = formItem.Color2ID;
                contextItem.Color3ID = formItem.Color3ID;
                contextItem.SizeType = formItem.SizeType;
                contextItem.Size = formItem.Size;
                contextItem.StyleTypeID = formItem.StyleTypeID;
                contextItem.DesignID = formItem.DesignID;
                contextItem.Price = formItem.Price;
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

        public ActionResult Delete(string Sku)
        {
            var item = context.GetItemBySKU(Sku);
            return View(item);
        }

        //
        // POST: /Item/Delete/5

        [HttpPost]
        public ActionResult Delete(string Sku, Item formItem)
        {
            try
            {
                var item = context.GetItemBySKU(Sku);
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
