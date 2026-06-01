ValueSet: KenyaLabOrderCodeVS
Id: kenya-lab-order-codes
Title: "Kenya Lab Order Codes"
Description: "Locally hosted laboratory codes, derived from LOINC, allowed for Kenya laboratory order ServiceRequest.code."
* ^status = #active
* ^experimental = false
* $KenyaLabCode#58410-2 "CBC panel - Blood by Automated count"

ValueSet: KenyaLabDiagnosticReportCodeVS
Id: kenya-lab-diagnosticreport-codes
Title: "Kenya Lab DiagnosticReport Codes"
Description: "Locally hosted laboratory codes, derived from LOINC, allowed for Kenya laboratory DiagnosticReport.code."
* ^status = #active
* ^experimental = false
* $KenyaLabCode#58410-2 "CBC panel - Blood by Automated count"

ValueSet: KenyaLabResultObservationCodeVS
Id: kenya-lab-result-observation-codes
Title: "Kenya Lab Result Observation Codes"
Description: "Locally hosted laboratory codes, derived from LOINC, allowed for Kenya laboratory result Observation.code."
* ^status = #active
* ^experimental = false
* $KenyaLabCode#718-7 "Hemoglobin [Mass/volume] in Blood"
