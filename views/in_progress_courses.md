---
layout: page
title: In Progress Courses
---

A view that filters job_queue_courses to show only those that are in progress.
Not meant to be used in isolaton. This view should be interesected with a second course view.
Example
  select id from in_progress_courses
  intersect
  select id from elective_free_courses

  This will give you the ids of all Free Elective courses that are In Progress
