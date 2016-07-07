---
layout: default
---

# Student Dimensions

### Name<a name="name"></a>

- College Actionable: "Student Name"
- Student Dimensions: student_name

The most-recent active primary name for the student.

### Home Email<a name="home_email"></a>

- College Actionable: N/A
- Student Dimensions: home_email

The student's email address with the type of HOME.

### Student Email<a name="student_email"></a>

- College Actionable: "Student Email"
- Student Dimensions: student_email

The student's email address with the type of UNIV.

### Other Email<a name="other_email"></a>

- College Actionable: N/A
- Student Dimensions: other_email

The student's email address with the type of OTHR.

### Address<a name="addr"></a>

- College Actionable: N/A
- Student Dimensions: addr1, addr2

The street addresses of the student's most-recent, active, address with the type 'HOME'

### City<a name="city"></a>

- College Actionable: N/A
- Student Dimensions: city

The city of the student's most-recent, active, address with the type 'HOME'

### State<a name="state"></a>

- College Actionable: N/A
- Student Dimensions: state

The state of the student's most-recent, active, address with the type 'HOME'

### Postal Code<a name="postal"></a>

- College Actionable: N/A
- Student Dimensions: postal

The postal code of the student's most-recent, active, address with the type 'HOME'

### Ethnic Group Code<a name="ethnic_grp_cd"></a>

- College Actionable: N/A
- Student Dimensions: ethnic_grp_cd
  - Defaults to "NA"

The code of the student's most-recent, active, primary ethnic group.

### Ethnic Group Short<a name="ethnic_grp_sd"></a>

- College Actionable: N/A
- Student Dimensions: ethnic_grp_sd
  - Defaults to "Not Available"

The short description of the student's most-recent, active, primary ethnic group.

### Ethnic Group Long<a name="ethnic_grp_ld"></a>

- College Actionable: "Ethnicity"
- Student Dimensions: ethnic_grp_ld
  - Defaults to "Not Available"

The long description of the student's most-recent, active, primary ethnic group.

### Leave of Absence - Begin<a name="loa_begin_date"></a>

- College Actionable: N/A
- Student Dimensions: begin_date

From [Leave of Absence Students](/views/leave_of_absence_students)

### Leave of Absence - Return<a name="loa_end_date"></a>

- College Actionable: N/A
- Student Dimensions: return_date

From [Leave of Absence Students](/views/leave_of_absence_students)

### Leave of Absence Indicator<a name="loa_end_ind"></a>

- College Actionable: "Leave of Absence?"
  - Value is displayed as "Yes" or "No"
- Student Dimensions: loa_ind
  - Value is displayed as 1 or 0

From [Leave of Absence Students](/views/leave_of_absence_students)

### Enrolled Next Term Indicator<a name="next_enrll_ind"></a>

- College Actionable: N/A
- Student Dimensions: stdnt_nxt_enrll_ind
  - Value is displayed as 1 or 0

Indicates if the student has an enrollment status of E, and a reason other than WDRW for the term that begins after the current term.

### Enrolled Next Term Status<a name="next_enrll_status"></a>

- College Actionable: N/A
- Student Dimensions: stdnt_nxt_enrll_status
  - Value is displayed as 'Not Enrolled' or 'Enrolled'

Translates the stdnt_nxt_enrll_ind to human readable labels.

### Enrolled Next Term Code<a name="next_enrll_cd"></a>

- College Actionable: N/A
- Student Dimensions: stdnt_nxt_enrll_cd
  - Defaults to '99999'

Term code for the student's next enrolled term.

### Enrolled Next Term Institution<a name="next_enrll_inst_cd"></a>

- College Actionable: N/A
- Student Dimensions: stdnt_nxt_enrll_inst_cd
  - Defaults to 'Not Available'

Institution for the student's next enrolled term.

### Enrolled Next Term Career<a name="next_enrll_acad_car_cd"></a>

- College Actionable: N/A
- Student Dimensions: stdnt_nxt_enrll_acad_car_cd
  - Defaults to 'Not Available'

Academic Career for the student's next enrolled term.

### Advisor Names<a name="advisor_names"></a>

- College Actionable: "Advisor Names"
- Student Dimensions: advisor_names

Contains the names for all of the student's current advisors.

### Advisor Emails<a name="advisor_emails"></a>

- College Actionable: N/A
- Student Dimensions: advisor_emails

Contains the primary, active email addresses for all of the student's current advisors.

### Suspended Indicator<a name="suspended_ind"></a>

- College Actionable: N/A
- Student Dimensions: suspended_ind
  - Value is displayed as 1 or 0

Indicates if the student has an active suspension.

### Athlete Indicator<a name="athlete_ind"></a>

- College Actionable: "Athlete?"
  - Value is displayed as "Yes" or "No"
- Student Dimensions: athlete_ind
  - Value is displayed as 1 or 0

Indicates if the student currently belongs to the ATHL student group.

### First Generation Student Group Indicator<a name="first_gen_stdnt_grp_ind"></a>

- College Actionable: "1st Generation Stdnt Grp?"
  - Value is displayed as "Yes" or "No"
- Student Dimensions: first_gen_stdnt_grp_ind
  - Value is displayed as 1 or 0

Indicates if the student currently belongs to the FGEN student group.

### First Generation Admissions Indicator<a name="first_gen_adm_ind"></a>

- College Actionable: "1st Generations Adm?"
  - Value is displayed as "Yes" or "No"
- Student Dimensions: first_gen_adm_ind
  - Value is displayed as 1 or 0

Indicates if the student currently has the FGEN recruitment category

### Pell Grant Indicator<a name="pell_grant_ind"></a>

- College Actionable: "Pell Grant?"
  - Value is displayed as "Yes" or "No"
- Student Dimensions: pell_grant_ind
  - Value is displayed as 1 or 0

Indicates if the student has received an award with Pell Grant item type.

### ATS Indicator<a name="atsp_ind"></a>

- College Actionable: "PES/ATS?"
  - If ATS Indicator or PES Indicatior is true, then value is "Yes".
  - Value is displayed as "Yes" or "No"
- Student Dimensions: atsp_ind
  - Value is displayed as 1 or 0

Indicates if the student currently belongs to the ATSP student group

### PES Indicator<a name="pesp_ind"></a>

- College Actionable: "PES/ATS?"
  - If ATS Indicator or PES Indicatior is true, then value is "Yes".
  - Value is displayed as "Yes" or "No"
- Student Dimensions: pesp_ind
  - Value is displayed as 1 or 0

Indicates if the student currently belongs to the PESP student group

### Veteran Indicator<a name="veteran_ind"></a>

- College Actionable: "Veteran?"
  - Value is displayed as "Yes" or "No"
- Student Dimensions: veteran_ind
  - Value is displayed as 1 or 0

Indicates if the student currently belongs to the VTRN student group

### MN Transfer Curriculum Indicator<a name="mn_transfer_curriculum_ind"></a>

- College Actionable: "MN Transfer Curriculum?"
  - Value is displayed as "Yes" or "No"
- Student Dimensions: mn_transfer_curriculum_ind
  - Value is displayed as 1 or 0

Indicates if the student currently belongs to the PRAA, PBRD or MNTC student groups

### Deceased Indicator<a name="deceased_ind"></a>

- College Actionable: "Deceased?"
  - Value is displayed as "Yes" or "No"
- Student Dimensions: deceased_ind
  - Value is displayed as 1 or 0

From [Deceased Students](/views/deceased_students)

### Completed Major Indicator<a name="complete_major_ind"></a>

- College Actionable: "Degree Awarded"
  - Value is displayed as "Yes" or "No"
- Student Dimensions: complete_major_ind
  - Value is displayed as 1 or 0

From [Complete Majors](/views/complete_majors)

### Expected Major Indicator<a name="expected_major_ind"></a>

- College Actionable: "Degree Expected"
  - Value is displayed as "Yes" or "No"
- Student Dimensions: expected_major_ind
  - Value is displayed as 1 or 0

From [Expected Majors](/views/expected_majors)

### U Promise Indicator<a name="u_promise_ind"></a>

- College Actionable: N/A
- Student Dimensions: u_promise_ind
  - Value is displayed as 1 or 0

From [UPromise Students](/views/u_promise_students)

### U Promise Type<a name="u_promise_type"></a>

- College Actionable: "U Promise?"
- Student Dimensions: u_promise_type
  - Default is "None"

From [UPromise Students](/views/u_promise_students)

### Classification<a name="u_promise_type"></a>

- College Actionable: "Classification"
- Student Dimensions: classification
  - Default is "Unknown"

From [Student Classification](/views/student_classification)

### Transfer Status<a name="transfer_status"></a>

- College Actionable: "Transferred From UMNTC?"
  - Default is "Not Run"
- Student Dimensions: N/A

Uses data retrieved from the National Student Clearinghouse.

### Most Recent Institution<a name="last_attended_institution"></a>

- College Actionable: "Most Recent Institution"
  - If the student has not transferred, this will be empty.
  - If we have no transfer data for the student, this will be 'Not Run'
- Student Dimensions: N/A

Uses data retrieved from the National Student Clearinghouse.

### 13 Credit Exemption<a name="13_credit_exemption"></a>

- College Actionable: "13 Credit Exemption?"
  - Values are "Permanent", "Temporary, "None"
- Student Dimensions: N/A

From [Student Credit Exemptions](/views/student_credit_exemptions/)

### APlus Retention Risk<a name="aplus_retention_risk"></a>

- College Actionable: "APlus Retention Risk?"
  - Values are "Yes" and "No"
- Student Dimensions: N/A

Based on student tag data received from APlus

### APlus Financial Risk<a name="aplus_financial_risk"></a>

- College Actionable: "APlus Financial Risk?"
  - Values are "Yes" and "No"
- Student Dimensions: N/A

Based on student tag data received from APlus

### APlus Degree Progress Risk<a name="aplus_degree_progress_risk"></a>

- College Actionable: "APlus Degree Progress Risk?"
  - Values are "Yes" and "No"
- Student Dimensions: N/A

Based on student tag data received from APlus
