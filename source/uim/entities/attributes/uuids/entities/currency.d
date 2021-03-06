module uim.entities.attributes.uuids.entities.currency;

@safe:
import uim.entities;

// A unique identifier for entity instances

class DCurrencyIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("CurrencyIdAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("currencyId")
      .registerPath("currencyid");
  }  
}
mixin(AttributeCalls!("CurrencyIdAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DCurrencyIdAttribute);
    testAttribute(CurrencyIdAttribute);
  }
}