Profile: KenyaReferralTask
Parent: Task
Id: kenya-referral-task
Title: "Kenya Referral Task"
Description: "Kenya referral workflow Task for hub and spoke coordination."

* obeys kenya-referral-task-focus

* status 1..1 MS
* intent 1..1 MS
* intent = #order
* insert ReferenceRule(focus, KenyaReferralServiceRequest, 1..1)
* insert ReferenceRule(encounter, Encounter, 1..1)
* requester 1..1 MS
* requester only Reference(Organization or PractitionerRole or Practitioner)
* insert ReferenceRule(owner, Organization or PractitionerRole or Practitioner, 1..1)
* authoredOn 0..1 MS
* executionPeriod 0..1 MS
* insert IdentifierRequiredRule(identifier, 1..*)
* input 0..* MS
* output 0..* MS