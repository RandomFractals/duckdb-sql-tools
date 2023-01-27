select round(sum(total::float8), 2),
    round(avg(total::float8), 2),
    round(max(total::float8), 2),
    count(*),
    count(total::float8),
    count(billing_state),
    count(billing_postal_code)
from invoices
