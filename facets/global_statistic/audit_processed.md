---
layout: page
title: Audit Processed
---

Identifies Audits that have been processed.
Excludes audits that are in the processing queue, or that are currently being processed.

A single audit can have only one of these facets

Columns:
- id: Auto-incremented primary key
- etl_audit_id: Foreign key from etl_audits.id
