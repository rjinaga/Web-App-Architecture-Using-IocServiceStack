namespace Org.App.Core.Business
{
    using Model;
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using IocServiceStack;

    [Contract]
    public interface ICustomerService 
    {
        void Add(Customer customer);
        void Update(Customer customer);
        void Delete(Customer customer);
        Customer GetCustomer(int customerId);
        IEnumerable<Customer> GetCustomers();
    }
}
