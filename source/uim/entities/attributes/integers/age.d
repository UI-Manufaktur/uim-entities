module uim.entities.attributes.integers.age;

@safe:
import uim.entities;

class DAgeAttribute : DIntegerAttribute {
  mixin(AttributeThis!("AgeAttribute"));

  override void initialize() {
    super.initialize;

    //means.demographic.age
    //means.measurement.age
    this
      .name("age")
      .registerPath("age");    
  }
}
mixin(AttributeCalls!"AgeAttribute");

version(test_uim_entities) {
  unittest {
    testAttribute(new DAgeAttribute);
    testAttribute(AgeAttribute);
  }
}