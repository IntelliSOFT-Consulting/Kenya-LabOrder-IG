// Shared support resources used by the profile examples below.

Instance: ExampleAminaWanjikuPatient
InstanceOf: Patient
Usage: #example
Title: "Amina Wanjiku Patient Example"
Description: "Adult outpatient used across the Kenya lab order and referral workflow examples."
* id = "example-amina-wanjiku-patient"
* identifier[0].use = #official
* identifier[0].type.coding[0].system = $IdType
* identifier[0].type.coding[0].code = #MR
* identifier[0].type.coding[0].display = "Medical record number"
* identifier[0].system = $NsPatientNumber
* identifier[0].value = "MRN-00124567"
* name[0].use = #official
* name[0].family = "Wanjiku"
* name[0].given[0] = "Amina"
* gender = #female
* birthDate = "1989-04-12"

Instance: ExampleMwangazaCountyReferralHospital
InstanceOf: Organization
Usage: #example
Title: "Mwangaza County Referral Hospital"
Description: "Ordering facility used in the example workflow."
* id = "example-mwangaza-county-referral-hospital"
* identifier[0].system = $NsFacilityCode
* identifier[0].value = "FAC-047-1001"
* name = "Mwangaza County Referral Hospital"

Instance: ExampleNairobiRegionalReferenceLaboratory
InstanceOf: Organization
Usage: #example
Title: "Nairobi Regional Reference Laboratory"
Description: "Performing laboratory used in the example workflow."
* id = "example-nairobi-regional-reference-laboratory"
* identifier[0].system = $NsFacilityCode
* identifier[0].value = "LAB-001-4452"
* name = "Nairobi Regional Reference Laboratory"

Instance: ExampleKijaniNationalReferralHospital
InstanceOf: Organization
Usage: #example
Title: "Kijani National Referral Hospital"
Description: "Receiving specialty referral organization used in the example workflow."
* id = "example-kijani-national-referral-hospital"
* identifier[0].system = $NsFacilityCode
* identifier[0].value = "FAC-001-2300"
* name = "Kijani National Referral Hospital"

Instance: ExampleDrMiriamAtieno
InstanceOf: Practitioner
Usage: #example
Title: "Dr Miriam Atieno Practitioner Example"
Description: "Ordering clinician for the example workflow."
* id = "example-dr-miriam-atieno"
* identifier[0].system = $NsPractitionerLicense
* identifier[0].value = "PRAC-KE-00991"
* name[0].family = "Atieno"
* name[0].given[0] = "Miriam"
* name[0].prefix[0] = "Dr"

Instance: ExampleDrMiriamAtienoRole
InstanceOf: PractitionerRole
Usage: #example
Title: "Dr Miriam Atieno PractitionerRole Example"
Description: "PractitionerRole representing the ordering clinician at the originating hospital."
* id = "example-dr-miriam-atieno-role"
* practitioner = Reference(ExampleDrMiriamAtieno)
* organization = Reference(ExampleMwangazaCountyReferralHospital)
* code[0].coding[0].system = $RoleCode
* code[0].coding[0].code = #medical-officer
* code[0].coding[0].display = "Medical officer"
* code[0].text = "Medical officer"

Instance: ExampleOutpatientEncounter
InstanceOf: Encounter
Usage: #example
Title: "Outpatient Encounter Example"
Description: "Encounter during which the patient was assessed and the lab order and referral were initiated."
* id = "example-outpatient-encounter"
* status = #finished
* class = $ActCode#AMB "ambulatory"
* subject = Reference(ExampleAminaWanjikuPatient)
* participant[0].individual = Reference(ExampleDrMiriamAtieno)
* period.start = "2026-05-28T08:10:00+03:00"
* period.end = "2026-05-28T09:05:00+03:00"
* serviceProvider = Reference(ExampleMwangazaCountyReferralHospital)

Instance: ExampleSymptomaticAnemiaCondition
InstanceOf: Condition
Usage: #example
Title: "Symptomatic Anemia Condition Example"
Description: "Clinical condition used as the reason for the lab order and subsequent referral."
* id = "example-symptomatic-anemia-condition"
* clinicalStatus.coding[0].system = $CondClinical
* clinicalStatus.coding[0].code = #active
* clinicalStatus.coding[0].display = "Active"
* verificationStatus.coding[0].system = $CondVer
* verificationStatus.coding[0].code = #confirmed
* verificationStatus.coding[0].display = "Confirmed"
* code.coding[0].system = $SCT
* code.coding[0].code = #271737000
* code.coding[0].display = "Anemia (disorder)"
* code.text = "Symptomatic anemia"
* subject = Reference(ExampleAminaWanjikuPatient)
* encounter = Reference(ExampleOutpatientEncounter)
* onsetDateTime = "2026-05-20"
* recordedDate = "2026-05-28"

// Valid profile examples.

Instance: ExampleKenyaCoreServiceRequestValid
InstanceOf: KenyaCoreServiceRequest
Usage: #example
Title: "Valid Kenya Core ServiceRequest Example"
Description: "A valid general request-for-service example demonstrating the reusable Kenya core ServiceRequest profile."
* id = "example-kenya-core-servicerequest-valid"
* identifier[0].use = #official
* identifier[0].type.coding[0].system = $IdType
* identifier[0].type.coding[0].code = #PLAC
* identifier[0].type.coding[0].display = "Placer Identifier"
* identifier[0].system = $NsServiceRequestNumber
* identifier[0].value = "SR-GEN-2026-0001"
* status = #active
* intent = #order
* category[0].coding[0].system = $ReqCat
* category[0].coding[0].code = #diagnostic
* category[0].coding[0].display = "Diagnostic service"
* category[0].text = "Diagnostic service"
* code.coding[0].system = $ServiceCatalog
* code.coding[0].code = #ecg
* code.coding[0].display = "Electrocardiographic procedure"
* code.text = "Electrocardiographic procedure"
* subject = Reference(ExampleAminaWanjikuPatient)
* requester = Reference(ExampleDrMiriamAtienoRole)
* authoredOn = "2026-05-28"
* occurrenceDateTime = "2026-05-29T09:00:00+03:00"
* priority = #routine
* reasonCode[0].coding[0].system = $SCT
* reasonCode[0].coding[0].code = #29857009
* reasonCode[0].coding[0].display = "Chest pain"
* reasonCode[0].text = "Chest pain"
* encounter = Reference(ExampleOutpatientEncounter)
* performer[0] = Reference(ExampleDrMiriamAtienoRole)

Instance: ExampleKenyaLabSpecimenValid
InstanceOf: KenyaLabSpecimen
Usage: #example
Title: "Valid Kenya Lab Specimen Example"
Description: "A valid venous blood specimen example collected for complete blood count testing."
* id = "example-kenya-lab-specimen-valid"
* identifier[0].use = #official
* identifier[0].type.coding[0].system = $IdType
* identifier[0].type.coding[0].code = #ACSN
* identifier[0].type.coding[0].display = "Accession ID"
* identifier[0].system = $NsSpecimenAccession
* identifier[0].value = "SPC-2026-00031"
* subject = Reference(ExampleAminaWanjikuPatient)
* type.coding[0].system = $SCT
* type.coding[0].code = #122555007
* type.coding[0].display = "Venous blood specimen"
* type.text = "Venous blood specimen"
* collection.collectedDateTime = "2026-05-28T09:15:00+03:00"
* collection.collector = Reference(ExampleDrMiriamAtieno)
* receivedTime = "2026-05-28T11:05:00+03:00"

Instance: ExampleKenyaLabOrderServiceRequestValid
InstanceOf: KenyaLabOrderServiceRequest
Usage: #example
Title: "Valid Kenya Lab Order ServiceRequest Example"
Description: "A valid complete blood count lab order that references the reason for testing, the performing laboratory, and the collected specimen."
* id = "example-kenya-laborder-servicerequest-valid"
* identifier[0].use = #official
* identifier[0].type.coding[0].system = $IdType
* identifier[0].type.coding[0].code = #PLAC
* identifier[0].type.coding[0].display = "Placer Identifier"
* identifier[0].system = $NsLabOrderNumber
* identifier[0].value = "LOR-2026-00031"
* requisition.use = #official
* requisition.type.coding[0].system = $IdType
* requisition.type.coding[0].code = #PLAC
* requisition.type.coding[0].display = "Placer Identifier"
* requisition.system = $NsLabRequisitionNumber
* requisition.value = "REQ-2026-00031"
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
* priority = #routine
* encounter = Reference(ExampleOutpatientEncounter)
* performer[0] = Reference(ExampleNairobiRegionalReferenceLaboratory)
* reasonReference[0] = Reference(ExampleSymptomaticAnemiaCondition)
* supportingInfo[0] = Reference(ExampleKenyaLabSpecimenValid)

Instance: ExampleKenyaLabResultObservationValid
InstanceOf: KenyaLabResultObservation
Usage: #example
Title: "Valid Kenya Lab Result Observation Example"
Description: "A valid hemoglobin observation referenced by the Kenya lab DiagnosticReport example."
* id = "example-kenya-lab-result-observation-valid"
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
* interpretation[0].coding[0].system = $ObsInt
* interpretation[0].coding[0].code = #L
* interpretation[0].coding[0].display = "Low"
* interpretation[0].text = "Low"
* performer[0] = Reference(ExampleNairobiRegionalReferenceLaboratory)
* specimen = Reference(ExampleKenyaLabSpecimenValid)
* basedOn[0] = Reference(ExampleKenyaLabOrderServiceRequestValid)
* referenceRange[0].low.value = 12.0
* referenceRange[0].low.unit = "g/dL"
* referenceRange[0].low.system = $UCUM
* referenceRange[0].low.code = #g/dL
* referenceRange[0].high.value = 15.5
* referenceRange[0].high.unit = "g/dL"
* referenceRange[0].high.system = $UCUM
* referenceRange[0].high.code = #g/dL
* referenceRange[0].text = "Adult female reference interval"

Instance: ExampleKenyaLabDiagnosticReportValid
InstanceOf: KenyaLabDiagnosticReport
Usage: #example
Title: "Valid Kenya Lab DiagnosticReport Example"
Description: "A valid laboratory report that groups the hemoglobin result and links the report back to the originating lab order."
* id = "example-kenya-lab-diagnosticreport-valid"
* identifier[0].use = #official
* identifier[0].type.coding[0].system = $IdType
* identifier[0].type.coding[0].code = #FILL
* identifier[0].type.coding[0].display = "Filler Identifier"
* identifier[0].system = $NsLabReportNumber
* identifier[0].value = "DR-2026-00031"
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
* issued = "2026-05-29T14:45:00+03:00"
* performer[0] = Reference(ExampleNairobiRegionalReferenceLaboratory)
* basedOn[0] = Reference(ExampleKenyaLabOrderServiceRequestValid)
* result[0] = Reference(ExampleKenyaLabResultObservationValid)
* specimen[0] = Reference(ExampleKenyaLabSpecimenValid)
* conclusion = "Complete blood count demonstrates low hemoglobin consistent with anemia. Correlate clinically."

Instance: ExampleKenyaReferralServiceRequestValid
InstanceOf: KenyaReferralServiceRequest
Usage: #example
Title: "Valid Kenya Referral ServiceRequest Example"
Description: "A valid referral request for hematology review based on the patient’s laboratory results and clinical findings."
* id = "example-kenya-referral-servicerequest-valid"
* identifier[0].use = #official
* identifier[0].type.coding[0].system = $IdType
* identifier[0].type.coding[0].code = #PLAC
* identifier[0].type.coding[0].display = "Placer Identifier"
* identifier[0].system = $NsReferralRequestNumber
* identifier[0].value = "REF-2026-00014"
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
* priority = #urgent
* encounter = Reference(ExampleOutpatientEncounter)
* performer[0] = Reference(ExampleKijaniNationalReferralHospital)
* reasonReference[0] = Reference(ExampleSymptomaticAnemiaCondition)
* supportingInfo[0] = Reference(ExampleKenyaLabDiagnosticReportValid)
* supportingInfo[1] = Reference(ExampleOutpatientEncounter)
* basedOn[0] = Reference(ExampleKenyaLabOrderServiceRequestValid)

Instance: ExampleKenyaReferralTaskValid
InstanceOf: KenyaReferralTask
Usage: #example
Title: "Valid Kenya Referral Task Example"
Description: "A valid referral workflow task assigning the hematology referral to the receiving organization with the supporting laboratory report."
* id = "example-kenya-referral-task-valid"
* identifier[0].use = #official
* identifier[0].type.coding[0].system = $IdType
* identifier[0].type.coding[0].code = #PLAC
* identifier[0].type.coding[0].display = "Placer Identifier"
* identifier[0].system = $NsReferralTaskNumber
* identifier[0].value = "TASK-2026-00014"
* status = #requested
* intent = #order
* focus = Reference(ExampleKenyaReferralServiceRequestValid)
* encounter = Reference(ExampleOutpatientEncounter)
* requester = Reference(ExampleMwangazaCountyReferralHospital)
* owner = Reference(ExampleKijaniNationalReferralHospital)
* authoredOn = "2026-05-29T15:10:00+03:00"
* executionPeriod.start = "2026-06-02T09:00:00+03:00"
* input[0].type.coding[0].system = $TaskArtifact
* input[0].type.coding[0].code = #supporting-report
* input[0].type.coding[0].display = "Supporting diagnostic report"
* input[0].type.text = "Supporting diagnostic report"
* input[0].valueReference = Reference(ExampleKenyaLabDiagnosticReportValid)
