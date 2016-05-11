---
layout: page
title: Percent Complete
---

This facet calculates what percent of the degree requirements have been met. It calculates two percentages: one with in-progress credits and one without.

A single audit can have only one of these these facets.

Columns:
- id: Auto-incremented primary key
- etl_audit_id: Foreign key from etl_audits.id
- pct_complete: The percentage complete without in-progress credits
- pct_complete_w_in_progress: The percentage complete with in-progress credits

Requirements:
- The CreditCount and RequiredCredit facets must already be calculated
