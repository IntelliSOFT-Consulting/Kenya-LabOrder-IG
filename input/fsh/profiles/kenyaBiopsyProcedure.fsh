Profile: KenyaBiopsyProcedure
Parent: Procedure
Id: kenya-biopsy-procedure
Title: "Biopsy Procedure Profile"
Description: "Represents biopsy procedures performed as part of a biopsy order."
* status 1..1 MS
* code 1..1 MS
* subject 1..1 MS
* subject only Reference(KenyaLabOrderPatient)
* encounter 0..1 MS
* performer 0..* MS
* basedOn 0..* MS
