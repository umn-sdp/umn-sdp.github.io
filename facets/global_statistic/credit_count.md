---
layout: page
title: Credit Count
---

Calculates the credit count of an audit. Returns count with both in-progress courses and without.

A single audit can have only one of these facets.

Columns:
- id: Auto-incremented primary key
- etl_audit_id: Foreign key from etl_audits.id
- w_in_progress_credit_count: The credit count with in-progress credits
- wo_in_progress_credit_count: The credit count without in-progress credits
