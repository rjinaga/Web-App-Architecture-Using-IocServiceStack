namespace Org.App.DataService
{
    using Microsoft.EntityFrameworkCore;
    using System.Collections.Generic;
    using Core.Model;

    public class AppDbContext : DbContext
    {
        public DbSet<Customer> Customers { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            //hard coded here, change this in production code to config file
            optionsBuilder.UseSqlServer(@"Data Source=(localdb)\mssqllocaldb;Initial Catalog=Adventure;Integrated Security=True;Pooling=False");
        }
    }
}
