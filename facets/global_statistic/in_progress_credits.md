---
layout: page
title: In Progress Credits
---

This facet calculates in-progress credits in three different ways:
- past (in-progress credits from any term LESS THAN the current term)
- current (in-progress credits from the current term)
- future (in-progress credits from any term GREATER THAN the current term).
Future credits are then further broken down into spring, summer and fall using the last digit of the yt. If a student has future credits from multiple terms (e.g. the upcoming fall and next year's fall) those credits will be lumped together

Breaking these sums out in this way helps analysts understand which courses are really "in-progress", which ones are only registered for (future) and which credits may be hangover from past terms.

A single audit can have only one of these facets.

Columns:
- id: Auto-incremented primary key
- etl_audit_id: Foreign key from etl_audits.id
- past_credits_in_progress: in-progress credits from previous terms
- current_credits_in_progress: in-progress credits from the current term
- future_credits_in_progress: in-progress credits from all future terms
- fut_spring_credits_in_progress: in-progress credits from future spring terms
- fut_summer_credits_in_progress: in-progress credits from future summer terms
- fut_summer_credits_in_progress: in-progress credits from future summer terms
