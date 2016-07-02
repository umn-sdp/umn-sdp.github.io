---
layout: page
title: Free Elective Credits Required
---

A single audit can have only one of these facets.

Columns:

- id: Auto-incremented primary key
- etl_audit_id: Foreign key from etl_audits.id
- credit_count:
- negative_credit_count:

## About
This facet holds the number of total free elective credits required for the student in a given Dars program (i.e. a stuno, dprog, instcd) at a given point in a time.

When a negative free elective credits required number is extracted from Dars, this facet assumes credit_count to be zero and then the negative number is captured as negative_credit_count.
