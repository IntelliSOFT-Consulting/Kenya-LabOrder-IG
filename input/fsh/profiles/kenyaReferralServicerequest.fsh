Profile: KenyaReferralServiceRequest
Parent: KenyaCoreServiceRequest
Id: kenya-referral-servicerequest
Title: "Kenya Referral ServiceRequest"
Description: "Kenya referral request profile. Used for hub and spoke referrals and direct specialty referrals."

* obeys kenya-referral-reason

* performer 1..* MS
* performer only Reference(Organization)
* supportingInfo 0..* MS
* supportingInfo only Reference(
  Condition or
  Observation or
  DiagnosticReport or
  DocumentReference or
  Encounter
)
* insert CodeableConceptRule(category, 0..*, MS)
* basedOn 0..* MS
* basedOn only Reference(ServiceRequest)
