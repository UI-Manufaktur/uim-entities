module uim.entities.attributes.integers.calenderparts.quarter;

/* any <- integer <- integerCalendarPart <- quarter
Traits
is.dataFormat.integer
means.calendar
means.calendar.quarter */


@safe:
import uim.entities;

class DQuarterAttribute : DIntegerCalendarPart {
  mixin(AttributeThis!("QuarterAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("quarter")
      .registerPath("quarter");
  }
}
mixin(AttributeCalls!("QuarterAttribute"));

version(test_uim_entities) {
  unittest {
    testAttribute(new DQuarterAttribute);
    testAttribute(QuarterAttribute);
  }
}