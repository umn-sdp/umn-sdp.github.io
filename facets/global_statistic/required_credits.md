---
layout: page
title: Required Credits
---

This facet calculates what percent of the degree requirements have been met. It calculates two percentages: one with in-progress credits and one without.

A single audit can have only one of these these facets.

Columns:
- id: Auto-incremented primary key
- etl_audit_id: Foreign key from etl_audits.id
- credit_count:

= About
  This facet holds the number of total required credits for the student in a given Dars program (i.e. a stuno, dprog, instcd at a given point in time.
  This number can change depending on if a student double or triple dips.
  Most programs have 120 or greater.
