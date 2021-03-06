module uim.entities.attributes.lookups.integers.integer;

@safe:
import uim.entities;

class DIntegerIntegerAttribute : DLookupAttribute {
  mixin(AttributeThis!("IntegerIntegerAttribute"));

  mixin(OProperty!("int[int]", "lookups"));  
  O addLookup(this O)(int key, string value) {
    _lookups[key] = value;
    return cast(O)this;
  }

  override void initialize() {
    super.initialize;
    // means.measurement.lookup

    this
      .name("lookup")
      .dataFormats(["lookup", "integer", "string"])
      .registerPath("lookup");
  }

  bool hasLookupKey(int key) {
    return (key in _lookups ? true : false); 
  }
  bool hasLookupValue(int lookupValue) {
    foreach(k, v; _lookups) { if (v == lookupValue) return true; }
    return false; 
  }  

  override DValue createValue() {
    return IntegerIntegerValue(this).isNullable(isNullable); }  
}
mixin(AttributeCalls!("IntegerIntegerAttribute"));

version(test_uim_entities) {
  unittest {  
    // TODO tests
  }
}