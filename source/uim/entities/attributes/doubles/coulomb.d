module uim.entities.attributes.doubles.coulomb;

@safe:
import uim.entities;

// Unit of measure for electric charge or amount of electricity in coulombs

/* means.measurement.dimension.electricCharge
means.measurement.units.si.coulomb
has.measurement.fundamentalComponent.second
has.measurement.fundamentalComponent.ampere */
class DCoulombAttribute : DDoubleAttribute {
  mixin(AttributeThis!("CoulombAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("coulomb")
      .registerPath("coulomb");
  }
}
mixin(AttributeCalls!("CoulombAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}