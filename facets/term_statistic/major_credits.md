---
layout: page
title: Major Credits
---

Extracts the number of credits earned in the student's major during each term. Does not include free electives.

Credits "in the student's" major are defined as

- Courses that are not in progress
- Courses with a requirement rname of 'NEEDTOTHR'

Columns:

- id: Auto-incremented primary key
- etl_audit_id: Foreign key from etl_audits.id
- strm: Term, PeoplesoftFormat
- credit_count: Number of credits

## Known Data Issues

If the term is mis-entered in Dars, then this facet will put the credit for that course in the wrong term. Some strm values in this facet will not be valid Peoplesoft term years.
