---
layout: page
title: Active Student Tags
---

A list of all APlus tags that are active. APlus uses soft deletes
and effective dating to mark tags inactive. This view filters the
list of tags to just those that:
1) are currently effective: have an effective date in the past and
  have not reached their expiration date (eff_until) if there is
  one
2) have not been soft deleted (aplus_removed_date in blank)

This view can be joined to tag classification views (e.g. RetentionRiskTags)
to return a list of students with active tags that fall under that
classification

Returns the student_id and tag_id.
