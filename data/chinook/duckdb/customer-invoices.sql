select c.last_name,
  c.first_name,
  c.email,
  i.customer_id,
  i.invoice_id,
  i.total::float8
from invoices as i
  inner join customers as c
  on i.customer_id = c.customer_id
