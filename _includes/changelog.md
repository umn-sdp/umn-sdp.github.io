# SDP Releases

# 0.5.2

- Bugfixes
  - https://github.umn.edu/asrweb/sdp/pull/182

# 0.5.1

- After processing an audit, remove audits for all degrees the student is not pursuing.
  - https://github.umn.edu/asrweb/sdp/issues/167
- Process queued students every 20 minutes
  - https://github.umn.edu/asrweb/sdp/pull/181

# 0.5.0

- Determine a Student's degrees using Live Peoplesoft data
- Degrees with a acad_plan_type of NDG are no longer audited.
- Degrees with an admit_term of before '0999' are no longer audited.
- If an audit is Frozen (see Audit Classifications), it is not re-run when we audit the student

### Audit Facts

- New audit fact: DegreeComplete
- Created if the degree's prog_status is 'CM'
- New audit fact: DprogIsNil
- Created if we can't find the degree in the Crosswalk table

### Audit Classifications

This is a new way of putting audits into "buckets". Classifications make it easier to reason about the state an audit is in. And it makes it easier for us to show the right audits to the right audience. The Dars team want to see audits with the DarsError classification. Fritz only wants the audits in the Reportable classification.

- New audit classification: **Processed**
- Any audit that has been sent to Dars, regardless of if we got an error or not.
- New audit classification: **DarsError**
- Any audit that has a known Dars error. Currently includes
- No Dprog in crosswalk table
- Dars reported a status of 'E'
- Course missing from Standard Buckets
- New audit classification: **Frozen**
- 'Frozen' is currently defined to include all audits with the 'Degree Complete' fact
- New audit classification: **Reportable**
- All Processed audits that do not have DarsErrors

### Other

- Refactoring of the process of auditing a student
- Removed the 'etl_unpreparable_audits' table and all unpreparable logic
- This is now handled by the DprogIsNil fact
