module uim.entities.attributes.datetimes.birthdate;

@safe:
import uim.entities;

class DBirthDateAttribute : DDatetimeAttribute {
  mixin(AttributeThis!("BirthDateAttribute"));

  override void initialize() {
    super.initialize;

    /* is.dataFormat.date
    means.measurement.date
    is.dataFormat.time
    means.measurement.time
    means.demographic.birthDate
 */
    this
      .dataFormats(["time"])
      .name("birthdate")
      .registerPath("birthdate");

  }
  override DValue createValue() {
    return DatetimeValue(this); }
}
mixin(AttributeCalls!"BirthDateAttribute");

version(test_uim_entities) {
  unittest {
    testAttribute(new DBirthDateAttribute);
    testAttribute(BirthDateAttribute);
  }
}