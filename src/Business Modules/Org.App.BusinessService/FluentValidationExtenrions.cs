namespace Org.App.BusinessService
{
    using FluentValidation;
    
    public static class FluentValidationExtenrions
    {
        public static void Validate<T>(this T instance, AbstractValidator<T> validator)
        {
            var result = validator.Validate(instance);

            if (!result.IsValid)
            {
                throw new ValidationException(result.Errors);
            }
        }
    }
}
