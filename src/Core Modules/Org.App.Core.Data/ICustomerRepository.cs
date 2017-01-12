namespace Org.App.Core.Data
{
    using IocServiceStack;
    using Model;
    using System.Collections.Generic;

    [Contract]
    public interface ICustomerRepository 
    {
        void Add(Customer customer);
        void Update(Customer customer);
        void Delete(Customer customer);

        void SaveChanges();

        Customer GetCustomer(int customerId);
        IEnumerable<Customer> GetCustomers();
    }
}
