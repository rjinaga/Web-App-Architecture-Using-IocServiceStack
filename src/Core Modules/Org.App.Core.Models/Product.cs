using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Org.App.Core.Models
{
    /// <summary>
    ///  Product
    /// </summary>
   public class Product
    {
        /// <summary>
        /// IdProduct
        /// </summary>
        public int IdProduct { get; set; }
        /// <summary>
        /// Description
        /// </summary>
        public string Description { get; set; }
        /// <summary>
        /// Price
        /// </summary>
        public double Price { get; set; }      
    }
}
