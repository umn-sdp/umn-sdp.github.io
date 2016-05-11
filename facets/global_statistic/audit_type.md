---
layout: page
title: Audit Type
---

Identifies the type of the audit.

A single audit can have only one of these facets

Columns:
- id: Auto-incremented primary key
- etl_audit_id: Foreign key from etl_audits.id
- acad_plan_substr: The last 3 digits of acad_plan
- acad_plan_type: Same as acad_plan_type in PeopleSoft
- audit_type: The audit type as determined by the substr and plan_type

Possible values for audit_type:
- minor
- certificate
- lower_division
- major
- second_major
- pre_major
- non_degree
- DirecTrack
- unknown
