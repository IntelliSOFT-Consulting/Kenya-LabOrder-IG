Invariant: kenya-laborder-reason
Description: "A lab order must have a reasonCode or reasonReference."
Expression: "reasonCode.exists() or reasonReference.exists()"
Severity: #error

Invariant: kenya-labobs-value-or-absent
Description: "Observation must have value[x] or dataAbsentReason, but not both."
Expression: "(value.exists() and dataAbsentReason.empty()) or (value.empty() and dataAbsentReason.exists())"
Severity: #error

Invariant: kenya-referral-reason
Description: "A referral must have a reasonCode or reasonReference."
Expression: "reasonCode.exists() or reasonReference.exists()"
Severity: #error

Invariant: kenya-referral-task-focus
Description: "Referral Task must have focus referencing a ServiceRequest."
Expression: "focus.exists()"
Severity: #error