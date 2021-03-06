module uim.entities.attributes.strings.country;

@safe:
import uim.entities;

// means.location.country
class DCountryAttribute : DStringAttribute {
  mixin(AttributeThis!("CountryAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("country")
      .registerPath("country");
  }
}
mixin(AttributeCalls!("CountryAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}