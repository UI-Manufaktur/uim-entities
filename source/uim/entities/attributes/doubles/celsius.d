module uim.entities.attributes.doubles.celsius;

// Unit of measure for temperature in degrees celsius
/* is.dataFormat.floatingPoint
is.dataFormat.big
means.measurement.dimension.temperature
means.measurement.units.si.celsius
has.measurement.fundamentalComponent.kelvin */

@safe:
import uim.entities;

class DCelsiusAttribute : DDoubleAttribute {
  mixin(AttributeThis!("CelsiusAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("celsius")
      .registerPath("celsius");
  }
}
mixin(AttributeCalls!("CelsiusAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}