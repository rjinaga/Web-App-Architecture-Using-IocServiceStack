namespace Org.App.BusinessService
{
    using FluentValidation;
    using Org.App.Core.Model;
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;

    public class CustomerValidator : AbstractValidator<Customer>
    {
        public CustomerValidator()
        {
            RuleFor(customer => customer.FirstName).NotEmpty();
            RuleFor(customer => customer.LastName).NotEmpty();
            RuleFor(customer => customer.ZipCode).Must(BeAValidPostcode).WithMessage("Please specify a valid postcode");
        }

        private bool BeAValidPostcode(string postcode)
        {
            return postcode.Length == 5 || postcode.Length == 9;
        }
    }
}
