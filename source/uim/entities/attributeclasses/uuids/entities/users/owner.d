module uim.entities.attributeclasses.uuids.entities.users.owner;

@safe:
import uim.entities;

class DOwnerIdAttributeClass : DEntityIdAttributeClass {
  mixin(AttributeClassThis!("OwnerIdAttributeClass"));

  override void initialize() {
    super.initialize;

    this
      .name("ownerId")
      .registerPath("ownerid");
  }  
}
mixin(AttributeClassCalls!("OwnerIdAttributeClass"));

version(test_uim_entities) {
  unittest {
  
    // TODO 
  }  
}