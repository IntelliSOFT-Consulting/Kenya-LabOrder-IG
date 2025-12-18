Profile: KenyaCoreServiceRequest
Parent: ServiceRequest
Id: kenya-order-servicerequest
Title: "Kenya Order ServiceRequest"
Description: "Kenya base profile for request-for-service. Reused by lab orders and referrals."

* insert IdentifierRequiredRule(identifier, 1..*)
* status 1..1 MS
* intent 1..1 MS
* intent = #order
* insert ReferenceRule(subject, Patient, 1..1)
* requester 1..1 MS
* requester only Reference(PractitionerRole or Practitioner or Organization)
* authoredOn 1..1 MS
* insert CodeableConceptRule(code, 1..1, MS)
* occurrence[x] 1..1 MS
* occurrenceDateTime 0..1 MS
* occurrenceTiming 0..1 MS
* occurrencePeriod 0..0
* priority 0..1 MS
* insert CodeableConceptRule(category, 0..*, MS)
* insert CodeableConceptRule(reasonCode, 0..*, MS)
* reasonReference 0..* MS
* reasonReference only Reference(Condition or Observation or DiagnosticReport or DocumentReference)
* insert ReferenceRule(encounter, Encounter, 0..1)
* performer 1..* MS
* performer only Reference(Organization or PractitionerRole or Practitioner or Patient)
