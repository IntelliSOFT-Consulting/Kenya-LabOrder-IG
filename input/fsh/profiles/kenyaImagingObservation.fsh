Profile: KenyaImagingObservation
Parent: Observation
Id: kenya-imaging-observation
Title: "Imaging Observation Profile"
Description: "Represents imaging results linked to imaging orders."
* status 1..1 MS
* code 1..1 MS
* subject 1..1 MS
* subject only Reference(KenyaLabOrderPatient)
* effective[x] 1..1 MS
* performer 0..* MS
* value[x] 0..1 MS
* basedOn 0..* MS