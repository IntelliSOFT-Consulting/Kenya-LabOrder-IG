Profile: KenyaDiagnosticReportLab
Parent: DiagnosticReport
Id: kenya-diagnosticreport-lab
Title: "Diagnostic Report for Lab Orders"
Description: "Represents finalized lab reports linked to lab orders."
* status 1..1 MS
* code 1..1 MS
* subject 1..1 MS
* subject only Reference(KenyaLabOrderPatient)
* performer 0..* MS
* result 0..* MS
* basedOn 0..* MS