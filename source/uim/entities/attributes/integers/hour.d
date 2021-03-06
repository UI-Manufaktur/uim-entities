module uim.entities.attributes.integers.hour;

/* Unit of measure for time in 3600 second interval

means.measurement.dimension.time
means.measurement.duration.hours
has.measurement.fundamentalComponent.second */

@safe:
import uim.entities;

class DHourAttribute : DIntegerAttribute {
  mixin(AttributeThis!("HourAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("hour")
      .registerPath("hour");
  }    
}
mixin(AttributeCalls!("HourAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DHourAttribute);
    testAttribute(HourAttribute);
  }
}