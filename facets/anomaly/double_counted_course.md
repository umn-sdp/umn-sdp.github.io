---
layout: page
title: Double Counted Course
---

Identifies Audits where a course is listed multiple times in the 3 'standard' buckets (Degree Appliable, Free Electives, Excess Electives) at the end of the APAS.

The facet tries to identify likely repeatable courses or likely extra credit courses.

A single audit can have many of these facets.

Columns:

- id: Auto-incremented primary key
- etl_audit_id: Foreign key from etl_audits.id
- anomaly_details: A text description of what was repeated. If the repetition is likely a repeatable course then the text IS_LIKELY_REPEATABLE will be in the string. If the repetition is likely extra credit then the text IS_LIKELY_EXTRA_CREDIT will be in the string.
