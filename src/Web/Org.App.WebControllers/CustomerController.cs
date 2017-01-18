namespace Org.App.WebControllers
{
    using FluentValidation;
    using Microsoft.AspNetCore.Mvc;
    using Org.App.Core.Business;
    using Org.App.Core.Model;
    using static IocServiceStack.ServiceManager;

    public class CustomerController : Controller
    {
        ICustomerService _customerService;
        public CustomerController()
        {
            _customerService = GetService<ICustomerService>();
        }

        [HttpGet]
        public IActionResult Index()
        {
            _customerService.Add(new Customer { FirstName = "Rajesh", LastName = "Jinaga", ZipCode = "12345" });
            return View();
        }

        [HttpPost]
        public IActionResult Add([FromBody]Customer customer)
        {
            //Here handing only validation exception. in production code, you should also handle
            //other kind of exceptions like database etc...
            try
            {
                _customerService.Add(customer);
                
            }
            catch(ValidationException exception)
            {
                ViewBag.Errors = exception.Errors;
            }
            return View();
        }

        [HttpPost]
        public IActionResult Update([FromBody]Customer customer)
        {
            try
            {
                _customerService.Update(customer);
            }
            catch (ValidationException exception)
            {
                ViewBag.Errors = exception.Errors;
            }
            return View();
        }

        [HttpPost]
        public IActionResult Delete([FromBody]Customer customer)
        {
            _customerService.Delete(customer);
            return View();
        }

        [HttpGet]
        public IActionResult GetCustomer(int customerId)
        {
            return View();
        }

    }
}
