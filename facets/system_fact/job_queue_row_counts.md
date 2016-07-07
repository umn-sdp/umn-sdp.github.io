---
layout: page
title: Job Queue Row Counts
---

Calculates the rows returned by Dars for a single audit. These numbers can then be used to classify the Audit's quality. If Dars returned too many or too few rows, the audit's quality is degraded.

Columns:

- id: Auto-incremented primary key
- etl_audit_id: Foreign key from etl_audits.id
- job_run: Number of rows for the audit in etl_job_queue_run
- req: Number of rows for the audit in etl_job_queue_req
- subreq: Number of rows for the audit in etl_job_queue_subreq
- course: Number of rows for the audit in etl_job_queue_course
- out: Number of rows for the audit in etl_job_queue_out
