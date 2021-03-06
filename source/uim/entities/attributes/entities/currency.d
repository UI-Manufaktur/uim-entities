module uim.entities.attributes.entities.currency;

@safe:
import uim.entities;

// A unique identifier for entity instances

class DCurrencyAttribute : DEntityAttribute {
  mixin(AttributeThis!("CurrencyAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("currency")
      .registerPath("currency");
  }  
}
mixin(AttributeCalls!("CurrencyAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DCurrencyAttribute);
    testAttribute(CurrencyAttribute);
  }
}