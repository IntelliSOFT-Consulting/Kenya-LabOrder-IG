Profile: KenyaImagingProcedure
Parent: Procedure
Id: kenya-imaging-procedure
Title: "Imaging Procedure Profile"
Description: "Represents imaging procedures performed as part of an imaging order."
* status 1..1 MS
* code 1..1 MS
* subject 1..1 MS
* subject only Reference(KenyaLabOrderPatient)
* encounter 0..1 MS
* performer 0..* MS
* basedOn 0..* MS