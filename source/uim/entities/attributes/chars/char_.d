module uim.entities.attributes.chars.char_;

@safe:
import uim.entities;

class DCharAttribute : DAttribute {
  mixin(AttributeThis!"CharAttribute");

  override void initialize() {
    super.initialize;

    this
      .dataFormats(["character", "big"])
      .name("char")
      .registerPath("char");
  }
}
mixin(AttributeCalls!"CharAttribute");

version(test_uim_entities) {
  unittest {
    testAttribute(new DCharAttribute);
    testAttribute(CharAttribute);
  }
}