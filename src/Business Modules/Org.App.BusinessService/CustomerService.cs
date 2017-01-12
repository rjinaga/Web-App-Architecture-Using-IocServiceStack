namespace Org.App.BusinessService
{
    using Org.App.Core.Business;
    using System.Collections.Generic;
    using Core.Model;
    using Core.Data;
    using IocServiceStack;

    [Service]
    public class CustomerService : ICustomerService
    {
        private readonly ICustomerRepository _customerRepository;

        [ServiceInit]
        public CustomerService(ICustomerRepository customerRepository)
        {
            _customerRepository = customerRepository;
        }

        public void Add(Customer customer)
        {
            /*Validate customer object*/
            customer.Validate(new CustomerValidator());
            _customerRepository.Add(customer);
            _customerRepository.SaveChanges();
        }

        public void Update(Customer customer)
        {
            /*Validate customer object*/
            customer.Validate(new CustomerValidator());

            _customerRepository.Update(customer);
            _customerRepository.SaveChanges();
        }

        public void Delete(Customer customer)
        {
            _customerRepository.Delete(customer);
            _customerRepository.SaveChanges();
        }

        public Customer GetCustomer(int customerId)
        {
            return _customerRepository.GetCustomer(customerId);
        }

        public IEnumerable<Customer> GetCustomers()
        {
            return _customerRepository.GetCustomers();
        }
    }
}
