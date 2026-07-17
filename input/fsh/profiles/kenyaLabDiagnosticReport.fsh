Profile: KenyaLabDiagnosticReport
Parent: DiagnosticReport
Id: kenya-lab-diagnosticreport
Title: "Kenya Lab DiagnosticReport"
Description: "Kenya lab report profile. Groups observations, carries overall interpretation, and links back to the lab order."

* status 1..1 MS
* insert CodeableConceptRule(code, 1..1, MS)
* code from KenyaLabDiagnosticReportCodeVS (extensible)
* insert ReferenceRule(subject, Patient, 1..1)
* effective[x] 1..1 MS
* effectiveDateTime 0..1 MS
* effectivePeriod 0..1 MS
* issued 0..1 MS
* performer 1..* MS
* performer only Reference(Organization)
* basedOn 0..* MS
* basedOn only Reference(ServiceRequest)
* result 1..* MS
* result only Reference(KenyaLabResultObservation)
* specimen 0..* MS
* specimen only Reference(KenyaLabSpecimen)
* conclusion 0..1 MS
* presentedForm 0..* MS
* insert IdentifierRequiredRule(identifier, 1..*)
* insert CodeableConceptRule(category, 0..*, MS)
