/* Intentionally invalid profile examples used to confirm validator behavior.
 Each instance should fail for the reason stated in its description.*/

Instance: ExampleKenyaCoreServiceRequestInvalid
InstanceOf: ServiceRequest
Usage: #example
Title: "Invalid Kenya Core ServiceRequest Example"
Description: "Intentionally invalid because performer is missing even though the Kenya core ServiceRequest profile requires at least one performer."
* id = "example-kenya-core-servicerequest-invalid"
* meta.profile[0] = $KenyaOrderServiceRequestProfile
* identifier[0].use = #official
* identifier[0].type.coding[0].system = $IdType
* identifier[0].type.coding[0].code = #PLAC
* identifier[0].type.coding[0].display = "Placer Identifier"
* identifier[0].system = $NsServiceRequestNumber
* identifier[0].value = "SR-GEN-2026-0991"
* status = #active
* intent = #order
* code.coding[0].system = $ServiceCatalog
* code.coding[0].code = #ecg
* code.coding[0].display = "Electrocardiographic procedure"
* code.text = "Electrocardiographic procedure"
* subject = Reference(ExampleAminaWanjikuPatient)
* requester = Reference(ExampleDrMiriamAtienoRole)
* authoredOn = "2026-05-28"
* occurrenceDateTime = "2026-05-29T09:00:00+03:00"

Instance: ExampleKenyaLabSpecimenInvalid
InstanceOf: Specimen
Usage: #example
Title: "Invalid Kenya Lab Specimen Example"
Description: "Intentionally invalid because specimen.type is omitted even though the Kenya lab specimen profile requires it."
* id = "example-kenya-lab-specimen-invalid"
* meta.profile[0] = $KenyaLabSpecimenProfile
* identifier[0].use = #official
* identifier[0].type.coding[0].system = $IdType
* identifier[0].type.coding[0].code = #ACSN
* identifier[0].type.coding[0].display = "Accession ID"
* identifier[0].system = $NsSpecimenAccession
* identifier[0].value = "SPC-2026-0991"
* subject = Reference(ExampleAminaWanjikuPatient)
* collection.collectedDateTime = "2026-05-28T09:15:00+03:00"
* collection.collector = Reference(ExampleDrMiriamAtieno)
* receivedTime = "2026-05-28T11:05:00+03:00"

Instance: ExampleKenyaLabOrderServiceRequestInvalid
InstanceOf: ServiceRequest
Usage: #example
Title: "Invalid Kenya Lab Order ServiceRequest Example"
Description: "Intentionally invalid because it omits both reasonCode and reasonReference, violating the kenya-laborder-reason invariant."
* id = "example-kenya-laborder-servicerequest-invalid"
* meta.profile[0] = $KenyaLabOrderServiceRequestProfile
* identifier[0].use = #official
* identifier[0].type.coding[0].system = $IdType
* identifier[0].type.coding[0].code = #PLAC
* identifier[0].type.coding[0].display = "Placer Identifier"
* identifier[0].system = $NsLabOrderNumber
* identifier[0].value = "LOR-2026-0991"
* requisition.use = #official
* requisition.type.coding[0].system = $IdType
* requisition.type.coding[0].code = #PLAC
* requisition.type.coding[0].display = "Placer Identifier"
* requisition.system = $NsLabRequisitionNumber
* requisition.value = "REQ-2026-0991"
* status = #active
* intent = #order
* category[0].coding[0].system = $ReqCat
* category[0].coding[0].code = #laboratory
* category[0].coding[0].display = "Laboratory service"
* category[0].text = "Laboratory service"
* code.coding[0].system = $KenyaLabCode
* code.coding[0].code = #58410-2
* code.coding[0].display = "CBC panel - Blood by Automated count"
* code.text = "Complete blood count panel"
* subject = Reference(ExampleAminaWanjikuPatient)
* requester = Reference(ExampleDrMiriamAtienoRole)
* authoredOn = "2026-05-28"
* occurrenceDateTime = "2026-05-28T09:20:00+03:00"
* performer[0] = Reference(ExampleNairobiRegionalReferenceLaboratory)
* supportingInfo[0] = Reference(ExampleKenyaLabSpecimenValid)

Instance: ExampleKenyaLabResultObservationInvalid
InstanceOf: Observation
Usage: #example
Title: "Invalid Kenya Lab Result Observation Example"
Description: "Intentionally invalid because it carries both valueQuantity and dataAbsentReason, violating the kenya-labobs-value-or-absent invariant."
* id = "example-kenya-lab-result-observation-invalid"
* meta.profile[0] = $KenyaLabResultObservationProfile
* status = #final
* code.coding[0].system = $KenyaLabCode
* code.coding[0].code = #718-7
* code.coding[0].display = "Hemoglobin [Mass/volume] in Blood"
* code.text = "Hemoglobin"
* subject = Reference(ExampleAminaWanjikuPatient)
* effectiveDateTime = "2026-05-29T14:15:00+03:00"
* valueQuantity.value = 9.4
* valueQuantity.unit = "g/dL"
* valueQuantity.system = $UCUM
* valueQuantity.code = #g/dL
* dataAbsentReason.coding[0].system = $DAR
* dataAbsentReason.coding[0].code = #not-performed
* dataAbsentReason.coding[0].display = "Not Performed"
* dataAbsentReason.text = "Not performed"
* performer[0] = Reference(ExampleNairobiRegionalReferenceLaboratory)
* specimen = Reference(ExampleKenyaLabSpecimenValid)
* basedOn[0] = Reference(ExampleKenyaLabOrderServiceRequestValid)

Instance: ExampleKenyaLabDiagnosticReportInvalid
InstanceOf: DiagnosticReport
Usage: #example
Title: "Invalid Kenya Lab DiagnosticReport Example"
Description: "Intentionally invalid because performer references a Practitioner instead of an Organization."
* id = "example-kenya-lab-diagnosticreport-invalid"
* meta.profile[0] = $KenyaLabDiagnosticReportProfile
* identifier[0].use = #official
* identifier[0].type.coding[0].system = $IdType
* identifier[0].type.coding[0].code = #FILL
* identifier[0].type.coding[0].display = "Filler Identifier"
* identifier[0].system = $NsLabReportNumber
* identifier[0].value = "DR-2026-0991"
* status = #final
* category[0].coding[0].system = $ReqCat
* category[0].coding[0].code = #laboratory
* category[0].coding[0].display = "Laboratory service"
* category[0].text = "Laboratory service"
* code.coding[0].system = $KenyaLabCode
* code.coding[0].code = #58410-2
* code.coding[0].display = "CBC panel - Blood by Automated count"
* code.text = "Complete blood count panel"
* subject = Reference(ExampleAminaWanjikuPatient)
* effectiveDateTime = "2026-05-29T14:18:00+03:00"
* performer[0] = Reference(ExampleDrMiriamAtieno)
* basedOn[0] = Reference(ExampleKenyaLabOrderServiceRequestValid)
* result[0] = Reference(ExampleKenyaLabResultObservationValid)
* specimen[0] = Reference(ExampleKenyaLabSpecimenValid)

Instance: ExampleKenyaReferralServiceRequestInvalid
InstanceOf: ServiceRequest
Usage: #example
Title: "Invalid Kenya Referral ServiceRequest Example"
Description: "Intentionally invalid because performer references a PractitionerRole instead of an Organization."
* id = "example-kenya-referral-servicerequest-invalid"
* meta.profile[0] = $KenyaReferralServiceRequestProfile
* identifier[0].use = #official
* identifier[0].type.coding[0].system = $IdType
* identifier[0].type.coding[0].code = #PLAC
* identifier[0].type.coding[0].display = "Placer Identifier"
* identifier[0].system = $NsReferralRequestNumber
* identifier[0].value = "REF-2026-0991"
* status = #active
* intent = #order
* category[0].coding[0].system = $ReqCat
* category[0].coding[0].code = #referral
* category[0].coding[0].display = "Referral service"
* category[0].text = "Referral service"
* code.coding[0].system = $ReferralService
* code.coding[0].code = #hematology-consult
* code.coding[0].display = "Hematology specialist consultation"
* code.text = "Hematology specialist consultation"
* subject = Reference(ExampleAminaWanjikuPatient)
* requester = Reference(ExampleDrMiriamAtienoRole)
* authoredOn = "2026-05-29"
* occurrenceDateTime = "2026-06-02T09:00:00+03:00"
* encounter = Reference(ExampleOutpatientEncounter)
* performer[0] = Reference(ExampleDrMiriamAtienoRole)
* reasonReference[0] = Reference(ExampleSymptomaticAnemiaCondition)
* supportingInfo[0] = Reference(ExampleKenyaLabDiagnosticReportValid)

Instance: ExampleKenyaReferralTaskInvalid
InstanceOf: Task
Usage: #example
Title: "Invalid Kenya Referral Task Example"
Description: "Intentionally invalid because focus references a Patient instead of a Kenya Referral ServiceRequest."
* id = "example-kenya-referral-task-invalid"
* meta.profile[0] = $KenyaReferralTaskProfile
* identifier[0].use = #official
* identifier[0].type.coding[0].system = $IdType
* identifier[0].type.coding[0].code = #PLAC
* identifier[0].type.coding[0].display = "Placer Identifier"
* identifier[0].system = $NsReferralTaskNumber
* identifier[0].value = "TASK-2026-0991"
* status = #requested
* intent = #order
* focus = Reference(ExampleAminaWanjikuPatient)
* encounter = Reference(ExampleOutpatientEncounter)
* requester = Reference(ExampleMwangazaCountyReferralHospital)
* owner = Reference(ExampleKijaniNationalReferralHospital)
* authoredOn = "2026-05-29T15:10:00+03:00"
