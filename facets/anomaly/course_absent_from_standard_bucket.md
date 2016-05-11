---
layout: page
title: Course Absent From Standard Bucket
---

Identifies Audits where a course is listed in the total course work at the beginning of the APAS, but is not included in the 3 'standard' buckets (Degree Appliable, Free Electives, Excess Electives) at the end of the APAS.

Requires that the Etl::Audit::Facet::GlobalStatistic::AuditType facet has already been calculated.

A single audit can have many of these facets.

Columns:
- id: Auto-incremented primary key
- etl_audit_id: Foreign key from etl_audits.id
- etl_job_queue_course_id: Foreign key from etl_job_queue_course.id
- course: Copied from etl_job_queue_course.course
- ctitle: Copied from etl_job_queue_course.ctitle
- strm: Peoplesoft-formatted strm based on the etl_job_queu_course.yt value.
- grade: Copied from etl_job_queue_course.grade
- gpa: Copied from etl_job_queue_course.gpa
- credit_count: Copied from etl_job_queue_course.credit
