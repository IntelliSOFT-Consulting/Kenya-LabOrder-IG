Profile: KenyaDiagnosticReportImaging
Parent: DiagnosticReport
Id: kenya-diagnosticreport-imaging
Title: "Diagnostic Report for Imaging Orders"
Description: "Represents finalized imaging reports linked to imaging orders."
* status 1..1 MS
* code 1..1 MS 
* subject 1..1 MS
* subject only Reference(KenyaLabOrderPatient)
* performer 0..* MS
* result 0..* MS
* basedOn 0..* MS