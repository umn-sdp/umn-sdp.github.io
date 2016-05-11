---
layout: page
title: Complete Status Message
---

Identifies if the Degree Program requirements have been completed

A single audit can have only one of these facets

Columns:
- id: Auto-incremented primary key
- etl_audit_id: Foreign key from etl_audits.id
- message: The Dars message about program completion.

Message:
The value in message comes straight from Dars, and it is possible that it could change. Current possible values are:
- ALL REQUIREMENTS IDENTIFIED BELOW HAVE BEEN MET
- PROGRAM COMPLETED IF IN PROGRESS COURSES ARE USED
- * PLEASE NOTE: AT LEAST ONE REQUIREMENT HAS NOT BEEN COMPLETED **
