namespace Org.App.DataService
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using IocServiceStack;
    using Core.Model;
    using Org.App.Core.Data;

    [Service]
    public class CustomerRepository : ICustomerRepository, IDisposable
    {
        AppDbContext _dbcontext;

        CustomerRepository()
        {
            _dbcontext = new AppDbContext();
        }

        public void Add(Customer customer)
        {
            _dbcontext.Customers.Add(customer);
        }

        public void Delete(Customer customer)
        {
            _dbcontext.Customers.Remove(customer);
        }

        public Customer GetCustomer(int customerId)
        {
            return (from customer in _dbcontext.Customers
            where customer.Id == customerId
            select customer).SingleOrDefault();
        }

        public IEnumerable<Customer> GetCustomers()
        {
            return _dbcontext.Customers.ToList();
        }

        public void Update(Customer customer)
        {
            _dbcontext.Customers.Update(customer);
        }

        public void SaveChanges()
        {
            _dbcontext.SaveChanges();
        }

        #region IDisposable Support
        private bool disposedValue = false; // To detect redundant calls

        protected virtual void Dispose(bool disposing)
        {
            if (!disposedValue)
            {
                if (disposing)
                {
                    _dbcontext.Dispose();
                }
                disposedValue = true;
            }
        }
        // This code added to correctly implement the disposable pattern.
        public void Dispose()
        {
            // Do not change this code. Put cleanup code in Dispose(bool disposing) above.
            Dispose(true);
        }
        #endregion
    }
}
