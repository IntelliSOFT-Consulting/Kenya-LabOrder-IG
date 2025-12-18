// RuleSet: CodeableConceptRule
// Description: Enforces valid coding structure.
// Usage: * insert CodeableConceptRule(type, 1..1, MS)
RuleSet: CodeableConceptRule(path, card, strength)
* {path} {card} {strength}
* {path}.coding 1..* MS
* {path}.coding.system 1..1 MS
* {path}.coding.code 1..1 MS
* {path}.coding.display 0..1 MS
* {path}.text 0..1 MS

// RuleSet: IdentifierRequiredRule
// Description: Enforces robust identification (System, Value, and Type).
// Usage: * insert IdentifierRequiredRule(identifier, 1..*)
RuleSet: IdentifierRequiredRule(path, card)
* {path} {card} MS
* {path}.use 0..1 MS
* {path}.type 1..1 MS
* {path}.system 1..1 MS 
* {path}.value 1..1 MS

// RuleSet: ReferenceRule
// Description: Enforces a reference to a specific profile or resource type.
// Usage: * insert ReferenceRule(patient, Patient, 1..1)
RuleSet: ReferenceRule(path, target, card)
* {path} {card} MS
* {path} only Reference({target})