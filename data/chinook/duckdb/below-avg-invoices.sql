select invoice_id,
  billing_address,
  total::float8
from invoices
where total < (
  select avg(total)
  from invoices
)
