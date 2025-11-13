Profile: KenyaLabOrder
Parent: ServiceRequest
Id: kenya-lab-order
Title: "Lab Order Profile"
Description: "Profile for lab test orders extending Kenya Core base profiles."
* status 1..1 MS
* intent 1..1 MS
* priority 0..1 MS
* subject 1..1 MS
* subject only Reference(KenyaLabOrderPatient)
* requester 1..1 MS
* requester only Reference(KenyaLabOrderPractitioner)
* code 1..1 MS
* encounter 0..1 MS
* specimen 0..* MS
* performer 0..* MS
* supportingInfo 0..* MS