select invoice_id,
  billing_country,
  billing_city,
  total::float8
from invoices
where billing_country in ('Belgium', 'France')
