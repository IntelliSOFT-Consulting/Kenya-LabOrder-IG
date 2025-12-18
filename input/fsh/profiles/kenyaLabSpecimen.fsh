Profile: KenyaLabSpecimen
Parent: Specimen
Id: kenya-lab-specimen
Title: "Kenya Lab Specimen"
Description: "Kenya specimen profile for lab workflows when specimen details are exchanged."

* insert ReferenceRule(subject, Patient, 1..1)
* insert CodeableConceptRule(type, 1..1, MS)
* collection 0..1 MS
* collection.collected[x] 0..1 MS
* collection.collector 0..1 MS
* collection.bodySite 0..1 MS
* insert CodeableConceptRule(collection.bodySite, 0..1, MS)
* receivedTime 0..1 MS
* insert IdentifierRequiredRule(identifier, 1..*)
