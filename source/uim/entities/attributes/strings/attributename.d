module uim.entities.attributes.strings.attributename;

// Type for trait parameters that take attribute names as values

@safe:
import uim.entities;

class DOOPAttributeNameAttribute : DOOPStringAttribute {
  mixin(OOPAttributeThis!("OOPAttributeNameAttribute"));

  /*

is.dataFormat.character
is.dataFormat.big
is.dataFormat.array
means.attributeName

  */
}
mixin(OOPAttributeCalls!("OOPAttributeNameAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}
