module uim.entities.attributes.integers.integer;

@safe:
import uim.entities;

class DOOPAttributeInteger : DOOPAttribute {
  mixin(OOPAttributeThis!("OOPAttributeInteger"));

  this(int aValue) { this(); this.value(aValue); }

  protected int _value;
  int value() { return _value; }
  
  override void value(Json newValue) {
    this.value(newValue.get!int); }

  override void value(string newValue) {
    this.value(to!int(newValue)); }

  void value(int newValue) {
    _value = newValue; }

  version(test_uim_entities) {
    unittest {
      // TODO Add tests
      }}
  
  override Json toJson() {
    return Json(value);    
  }
  version(test_uim_entities) {
    unittest {
      // TODO Add tests
      }}

  override string toString() { return to!string(value); }
  version(test_uim_entities) {
    unittest {
      // TODO Add tests
      }}
}
mixin(OOPAttributeCalls!("OOPAttributeInteger"));

auto OOPAttributeInteger(int newValue) { return new DOOPAttributeInteger(newValue); }

unittest {
  version(test_uim_entities) {  
    // TODO tests
      }}