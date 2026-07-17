Profile: KenyaLabResultObservation
Parent: Observation
Id: kenya-lab-result-observation
Title: "Kenya Lab Result Observation"
Description: "Kenya lab result profile. Represents an atomic lab result used in DiagnosticReport.result."

* obeys kenya-labobs-value-or-absent
* status 1..1 MS
* insert CodeableConceptRule(code, 1..1, MS)
* code from KenyaLabResultObservationCodeVS (extensible)
* insert ReferenceRule(subject, Patient, 1..1)
* effective[x] 1..1 MS
* effectiveDateTime 0..1 MS
* effectivePeriod 0..1 MS
* value[x] 0..1 MS
* dataAbsentReason 0..1 MS
* insert CodeableConceptRule(dataAbsentReason, 0..1, MS)
* interpretation 0..* MS
* insert CodeableConceptRule(interpretation, 0..*, MS)
* specimen 0..1 MS
* specimen only Reference(KenyaLabSpecimen)
* basedOn 0..* MS
* basedOn only Reference(ServiceRequest)
* method 0..1 MS
* insert CodeableConceptRule(method, 0..1, MS)
* bodySite 0..1 MS
* insert CodeableConceptRule(bodySite, 0..1, MS)
* referenceRange 0..* MS
* component 0..* MS
