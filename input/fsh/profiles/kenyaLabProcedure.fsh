Profile: KenyaLabProcedure
Parent: Procedure
Id: kenya-lab-procedure
Title: "Lab Procedure Profile"
Description: "Represents lab procedures like specimen collection for lab orders."
* status 1..1 MS
* code 1..1 MS
* subject 1..1 MS
* subject only Reference(KenyaLabOrderPatient)
* encounter 0..1 MS
* performer 0..* MS
* basedOn 0..* MS
