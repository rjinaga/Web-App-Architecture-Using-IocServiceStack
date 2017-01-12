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
            _dbcontext.Add(customer);
        }

        public void Delete(Customer customer)
        {
            _dbcontext.Remove(customer);
        }

        public Customer GetCustomer(int customerId)
        {
            return _dbcontext.Customers.Where(customer => customer.Id == customerId).FirstOrDefault();
        }

        public IEnumerable<Customer> GetCustomers()
        {
            return _dbcontext.Customers.ToList();
        }

        public void Update(Customer customer)
        {
            _dbcontext.Update(customer);
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
