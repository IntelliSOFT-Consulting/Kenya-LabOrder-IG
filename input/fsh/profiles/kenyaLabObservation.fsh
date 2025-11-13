Profile: KenyaLabObservation
Parent: Observation
Id: kenya-lab-observation
Title: "Lab Observation Profile"
Description: "Represents lab test results linked to lab orders."
* status 1..1 MS
* code 1..1 MS
* subject 1..1 MS
* subject only Reference(KenyaLabOrderPatient)
* effective[x] 1..1 MS
* performer 0..* MS
* value[x] 0..1 MS
* basedOn 0..* MS