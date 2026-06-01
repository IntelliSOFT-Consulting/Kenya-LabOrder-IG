CodeSystem: ExampleRequestCategory
Id: request-category
Title: "Example Request Category CodeSystem"
Description: "Example request categories used by the Kenya lab order validation examples."
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #diagnostic "Diagnostic service"
* #laboratory "Laboratory service"
* #referral "Referral service"

CodeSystem: ExamplePractitionerRoleCode
Id: practitioner-role
Title: "Example Practitioner Role CodeSystem"
Description: "Example practitioner role codes used by the validation support resources."
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #medical-officer "Medical officer"

CodeSystem: ExampleTaskArtifactType
Id: task-artifact-type
Title: "Example Task Artifact Type CodeSystem"
Description: "Example task input artifact codes used by the referral workflow validation examples."
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #supporting-report "Supporting diagnostic report"

CodeSystem: ExampleReferralService
Id: referral-service
Title: "Example Referral Service CodeSystem"
Description: "Example referral service codes used by the referral ServiceRequest validation examples."
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #hematology-consult "Hematology specialist consultation"

CodeSystem: ExampleServiceCatalog
Id: service-catalog
Title: "Example Service Catalog CodeSystem"
Description: "Example service catalog entries used by the general Kenya core ServiceRequest validation example."
* ^status = #active
* ^experimental = false
* ^caseSensitive = true
* ^content = #complete
* #ecg "Electrocardiographic procedure"
