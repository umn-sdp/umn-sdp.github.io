---
layout: page
title: Student Classifications
---

Contains labels for each classification that applies to a student

Only displays labels for students in the Ps DWSA Stix All table.

The main use of this table is to write queries like

```sql
select
  coalesce(graduated_label, deceased_label, ..., 'Active')
from
  student_classifications
```

Using this view with a small number of students is OK. But it gets slow quickly. Prefer the daily snapshot of this table over the live view.

Columns:

- emplid
- graduated_label (will be 'Graduated' or null)
- deceased_label (will be 'Deceased' or null)
- suspended_label (will be 'Suspended' or null)
- transferred_label (will be 'Transferred' or null)
- discontinued_label (will be 'Discontinued' or null)
- loa_with_return_label (will be 'LOA With Return' or null)
- loa_without_return_label (will be 'LOA Without Return' or null)

