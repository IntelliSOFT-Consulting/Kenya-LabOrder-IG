Profile: KenyaLabOrderServiceRequest
Parent: KenyaCoreServiceRequest
Id: kenya-laborder-servicerequest
Title: "Kenya Lab Order ServiceRequest"
Description: "Kenya lab order profile. Supports single tests, panels and recurring orders."

* obeys kenya-laborder-reason
* insert IdentifierRequiredRule(requisition, 0..1)
* performer 1..* MS
* performer only Reference(Organization)
* supportingInfo 0..* MS
* supportingInfo only Reference(
    Specimen or
    Observation or
    DiagnosticReport or
    Condition or
    DocumentReference
)
* orderDetail 0..* MS
* insert CodeableConceptRule(orderDetail, 0..*, MS)
* bodySite 0..1 MS
* insert CodeableConceptRule(bodySite, 0..1, MS)


// TODO: We need valuesets for the following
// - orderDetail
// - bodySite