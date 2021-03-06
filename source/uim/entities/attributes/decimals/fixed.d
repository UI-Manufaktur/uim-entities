module uim.entities.attributes.decimals.fixed;

@safe:
import uim.entities;

// The 64 bit fixed (4) scale numbers used by PBI
class DFixedDecimalAttribute : DDecimalAttribute {
  mixin(AttributeThis!("FixedDecimalAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("fixedDecimal")
      .registerPath("fixedDecimal");
  }
}
mixin(AttributeCalls!"FixedDecimalAttribute");

version(test_uim_entities) {
  unittest {
    testAttribute(new DFixedDecimalAttribute);
    testAttribute(FixedDecimalAttribute);
  }
}