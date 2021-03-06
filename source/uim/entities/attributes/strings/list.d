module uim.entities.attributes.strings.list;

@safe:
import uim.entities;

// A CSV contained within one string value
// means.content.text.CSV
class DListAttribute : DStringAttribute {
  mixin(AttributeThis!("ListAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("list")
      .registerPath("list");
  }
}
mixin(AttributeCalls!("ListAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}