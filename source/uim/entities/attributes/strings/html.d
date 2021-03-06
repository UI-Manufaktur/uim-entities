module uim.entities.attributes.strings.html;

/* A HTML fragment contained within one string value

Inheritance
any <- char <- string <- html
Traits
is.dataFormat.character
is.dataFormat.big
is.dataFormat.array
means.content.text.HTML
 */
 
@safe:
import uim.entities;

class DHtmlAttribute : DStringAttribute {
  mixin(AttributeThis!("HtmlAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("html")
      .registerPath("html");
  }
}
mixin(AttributeCalls!("HtmlAttribute"));

version(test_uim_entities) {
  unittest {
    // TODO
  }
}