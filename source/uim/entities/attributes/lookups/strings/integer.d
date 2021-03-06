module uim.entities.attributes.lookups.strings.integer;

@safe:
import uim.entities;

class DStringIntegerAttribute : DLookupAttribute {
  mixin(AttributeThis!("StringIntegerAttribute"));

  mixin(OProperty!("int[string]", "lookups"));

  override DValue createValue() {
    return StringIntegerValue(this).isNullable(isNullable);
  }
}
mixin(AttributeCalls!("StringIntegerAttribute"));

version(test_uim_entities) {
  unittest {  
    // TODO tests
  }
}