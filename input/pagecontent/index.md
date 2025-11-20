## Kenya Laboratory Orders Implementation Guide

Feel free to modify this index page with your own awesome content!
This Implementation Guide (IG) consolidates guidance for exchanging laboratory orders and results in Kenya's digital health ecosystem. It complements the **Kenya Core FHIR IG** and leverages related national guides such as the **Kenya Client Registry (KeNHA) prescription workflows**, **Kenya Patient Summary**, and **KeNHA Claims (CeClaims)** packages to deliver a cohesive view of how laboratories collaborate with clinical and administrative systems.

### Purpose and scope

- Provide a consistent representation of laboratory orders, results, and supporting clinical context using FHIR R4.
- Support referral and follow-up workflows across public and private facilities, ensuring that orders capture the requesting provider, patient demographics, and facility identifiers aligned with Kenya Core resources.
- Enable downstream consumption by claims adjudication, prescription management, and longitudinal patient summaries through shared identifiers and terminology bindings.

### Relationship With Other Kenyan IGs

> Other international and national standards were reviewed and considered during the development process to assess the degree of alignment and to facilitate adoption of this standard. These implementation guides include: 
> #### Related Implementation Guides
- [Kenya Core FHIR IG](https://igkenyacore.intellisoftkenya.com)
- [Kenya eClaims FHIR IG](https://igeclaims.intellisoftkenya.com)  
- [Kenya Patient Summary (KPS) FHIR IG](https://igpatientsummary.intellisoftkenya.com)
- [Kenya ePrescription FHIR IG](https://igeprescriptions.intellisoftkenya.com)
- [Kenya Lab Orders FHIR IG](https://iglaborders.intellisoftkenya.com)

<table border="1" cellpadding="8" cellspacing="0" class="dataframe table table-striped table-bordered">
  <thead>
    <tr>
<th>IG </th><th> Relevant contributions to lab ordering </th></tr></thead>
  <tbody>
    <tr>
<td> <b>Kenya Core FHIR IG</b> </td><td> Supplies foundational profiles (Patient, Practitioner, Organization, Encounter) and code systems reused by this guide's laboratory-specific artifacts. </td></tr>
 <tr>
<td> <b>Kenya Patient Summary IG</b></td><td> Ensures lab orders and results can be summarized for continuity of care, including key observations and diagnostic reports. </td></tr>
 <tr>
<td> <b>Kenya e-Prescription IG</b></td><td> Aligns medication orders with associated lab investigations to support test justification and follow-up. </td></tr>
 <tr>
<td> <b>Kenya eClaims IG</b> </td><td> Facilitates linking ServiceRequest, Procedure, and DiagnosticReport resources to claims submissions for reimbursement and audit trails. </td></tr></tbody></table>

### Key lab order artifacts

- **KenyaLabOrder (ServiceRequest)** – Captures the clinical question, requested tests, responsible practitioner, facility, and any specimens collected.
- **KenyaLabObservation (Observation)** – Shares structured results, reference ranges, and interpretation tied back to the originating order.
- **KenyaDiagnosticReportLab (DiagnosticReport)** – Aggregates observations, specimen details, and narrative findings for delivery to requesting systems.
- **KenyaLabProcedure (Procedure)** – Describes specimen collection and processing activities performed in the laboratory workflow.

### Implementation considerations

1. **Terminology** – Adopt shared value sets from Kenya Core and national coding standards (e.g., LOINC where available, locally governed catalogues otherwise).
2. **Patient matching** – Use Kenya Patient Summary identifiers (MPI, national IDs) to ensure traceable linkage between orders, claims, and longitudinal records.
3. **Workflow coordination** – Synchronize order lifecycle states (`draft`, `active`, `completed`, `cancelled`) with facility information systems and ensure DiagnosticReports reflect final sign-off by authorized practitioners.
4. **Interoperability testing** – Validate conformance using the HL7 FHIR validator and test scenarios spanning request creation, specimen collection, result reporting, and claims referencing.

### Next steps

This IG is an evolving resource. Future iterations will include:

- Expanded examples for common laboratory panels and point-of-care tests.
- Detailed guidance on subscription-based notifications for order status changes.
- Cross-IG implementation scenarios showcasing end-to-end flows from ordering through claims settlement.

Stakeholders are encouraged to contribute feedback and implementation stories to refine the guide for nationwide adoption.
