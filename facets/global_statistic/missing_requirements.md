---
layout: page
title: Missing Requirements
---

This facet displays unfulfilled program requirements.

A single audit can have many of these these facets.

Columns:
- id: Auto-incremented primary key
- etl_audit_id: Foreign key from etl_audits.id
- rname: The requirement name from Dars
- category: The requirement category name from Dars
- title:The requriment from title from Dars
- subrequriements_needed: The number of subrequirements needed from dars
- courses_needed: The number of courses needed from dars
- credits_needed: The number of credits needed from dars.
- gpa_needed: The gpa needed to meet the requirement


Problems
- Sometimes category and title are null, but there will be an absurud number of credits needed (1000+).
- Courses Needed is only ever 0. It may not be used.
- GPA needed is only ever 0. It may not be used.
