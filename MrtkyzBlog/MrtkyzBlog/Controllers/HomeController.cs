using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using MrtkyzBlog.Models.DataEntities;

namespace MrtkyzBlog.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            var dbContext = new DataEntities();

            var model = new IndexViewModel
            {
                Persons = dbContext.TestTablo.Select(z => new PersonModel
                {
                    Name = z.NAME,
                    Surname = z.SURNAME
                }).ToList()
            };

            return View(model);
        }
    }

    public class IndexViewModel
    {
        public List<PersonModel> Persons { get; set; }
    }

    public class PersonModel
    {
        public string Name { get; set; }

        public string Surname { get; set; }
    }
}