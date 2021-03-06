/*********************************************************************************************************
*	Copyright: © 2017-2022, UI Manufaktur UG, Since 2022 Ozan Nurettin Süel (Sicherheitsschmiede)          *
*	License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  *
*	Authors: UI Manufaktur Team, Ozan Nurettin Süel (Sicherheitsschmiede)                                  *
**********************************************************************************************************/
module uim.entities.element;

@safe:
import uim.entities;

class DOOPElement {
  static namespace = moduleName!DOOPElement;

  // Constructors
  this() { initialize; }

  this(string myName) { 
    this().name(myName); }

  this(Json aJson) { 
    this();    
    if (aJson != Json(null)) this.fromJson(aJson); }

  void initialize() {
    this
    .name;
  }

  mixin(OProperty!("DValues", "values"));
  O addValues(this O)(DAttribute[] classes) {
    foreach(aClass; classes) {
      this.values.addValue(aClass.name, aClass.createValue);
    }
    return cast(O)this;
  }
  O addValues(this O)(DAttribute[string] classes) {
    foreach(key; classes.byKey) {
      this.values.addValue(key, classes[key].createValue);
    }
    return cast(O)this;
  }
  O addValues(this O)(DValue[string] newValues) {
    this.values.add(newValues);
    return cast(O)this;
  }

  // Every entity has a unique name - not primarykey only for human search
  string _name;
  O name(this O)(string  newName) { _name = newName.strip.toLower.replace(" ", "_"); return cast(O)this; }
  string name() { return _name; }

  // Display of entity 
  mixin(OProperty!("string", "display"));

  //	Description about the entity and more
  mixin(OProperty!("string", "description"));
  
  STRINGAA selector(STRINGAA parameters) {
    STRINGAA results;

    auto foundId = parameters.get("entity_id", parameters.get("id", ""));
    if (foundId.length > 0) results["id"] = foundId;               
    auto foundName = parameters.get("entity_name", parameters.get("name", ""));
    if (foundName.length > 0) results["name"] = foundName;               

    return results;
  }

  // Read entity from STRINGAA
  DOOPElement fromStringAA(STRINGAA reqParameters) {
    foreach(k, v; reqParameters) this[k] = v; 
    return this;
  }

  DOOPElement fromRequest(STRINGAA requestValues) {
    debug writeln("fromRequest...", requestValues);
    /* foreach(fName; fieldNames) {
      auto requestKey = "entity_"~fName;
      if (auto boolValue = cast(DBooleanValue)values[fName]) {
        boolValue.value(requestKey in requestValues ? true : false);
      }
      else {
        if (requestKey in requestValues) {
          this[fName] = requestValues[requestKey];
        }
      }
    } */
    return this;
  }

  // Converts entity property to string, which is HTML compatible
  string opIndex(string key) {
    switch(key) {
      case "name": return this.name;
      case "display": return this.display;
      case "description": return this.description;
      default:
        if (values.hasValue(key)) { return values[key].toString; }
        return null;
    }      
  }

  DOOPElement opIndexAssign(string value, string key) {
    switch(key) {
      case "name": this.name(value); break;
      case "display": this.display(value); break;
      case "description": this.description(value); break;
      default:
        values[key] = value;
        break;
    }      
    return this;
  }

  // Read HTML value and set entity value
  DOOPElement opIndexAssign(UUID value, string key) {
    switch(key) {
      default:
        values[key] = value;
        break;
    }      
    return this;
  }

  void opIndexAssign(long value, string key) {
    switch(key) {
      default:
        values[key] = value;
        break;
    }      
  } 

  void opIndexAssign(bool value, string key) {
    switch(key) {
      default:
        values[key] = value;
        break;
    }      
  }

  // Set field(key) if type Entity
  void opIndexAssign(DOOPElement value, string key) {
    switch(key) {
      default:
        break;
    }      
  }

  DOOPElement create() { return new DOOPElement; }
  DOOPElement create(Json data) { return create.fromJson(data); }

  DOOPElement clone() { return create.fromJson(toJson); }
  DOOPElement clone(Json data) { return create.fromJson(toJson).fromJson(data); }
  
  DOOPElement copyTo(DOOPElement targetOfCopy) {
    return targetOfCopy ? targetOfCopy.fromJson(this.toJson) : targetOfCopy; }
  DOOPElement copyFrom(DOOPElement targetOfCopy) {
    return targetOfCopy ? fromJson(targetOfCopy.toJson) : this;
  }

  Bson toBson() { return Bson(toJson); }

  DOOPElement fromJson(Json aJson) {
    if (aJson == Json(null)) return this;
    
    foreach (keyvalue; aJson.byKeyValue) {
      auto k = keyvalue.key;
      auto v = keyvalue.value;
      switch(k) {
        case "name": this.name(v.get!string); break;
        case "display": this.display(v.get!string); break;
        default: 
          this.values[k].value(v);
          break;
      }            
    }
    return this;
  }

  Json toJson(string[] showFields = null, string[] hideFields = null) {
    auto result = Json.emptyObject;
    
    result["name"] = this.name;
    result["display"] = this.display;
    result["description"] = this.description;

    foreach(k; values.keys) {
      result[k] = this.values[k].toJson;
    }
  
    return result;
  }
}
auto OOPElement() { return new DOOPElement; }
auto OOPElement(string name) { return new DOOPElement(name); }
auto OOPElement(Json json) { return new DOOPElement(json); }


