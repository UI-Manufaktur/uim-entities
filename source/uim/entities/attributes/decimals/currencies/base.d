module uim.entities.attributes.decimals.currencies.base;

@safe:
import uim.entities;

class DBaseCurrencyAttribute : DCurrencyAttribute {
  mixin(AttributeThis!("BaseCurrencyAttribute"));

  override void initialize() {
    super.initialize;

    /* 
Value is expressed in the base currency units for the system

Inheritance
any <- decimal <- currency <- baseCurrency
Traits
is.dataFormat.numeric.shaped
means.measurement.currency
means.measurement.currency
    */
    this
      .name("baseCurrency")
      .registerPath("baseCurrency");
  }
}
mixin(AttributeCalls!"BaseCurrencyAttribute");

version(test_uim_entities) {
  unittest {
    testAttribute(new DBaseCurrencyAttribute);
    testAttribute(BaseCurrencyAttribute);
  }
}