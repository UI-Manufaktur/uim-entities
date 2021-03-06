module uim.entities.attributes.entities.businessunit;

@safe:
import uim.entities;

// A unique identifier for entity instances

class DBusinessUnitAttribute : DEntityAttribute {
  mixin(AttributeThis!("BusinessUnitAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("businessUnit")
      .registerPath("businessunit");
  }  
}
mixin(AttributeCalls!("BusinessUnitAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DBusinessUnitAttribute);
    testAttribute(BusinessUnitAttribute);
  }
}