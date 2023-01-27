with customer as (
  select
    customer_id as customer_id,
    first_name,
    last_name
  from customers
),
invoice as (
  select
    invoice_id as invoice_id,
    customer_id as customer_id,
    invoice_date as invoice_date,
    total
  from invoices
),
customer_invoices as (
  select
    customer_id,
    min(invoice_date) as first_invoice_date,
    max(invoice_date) as most_recent_invoice_date,
    count(invoice_id) as number_of_invoices
  from invoice
  group by 1
),
final as (
  select
    customer.customer_id,
    customer.first_name,
    customer.last_name,
    strftime(customer_invoices.first_invoice_date, '%Y-%m-%d'),
    strftime(customer_invoices.most_recent_invoice_date, '%Y-%m-%d'),
    coalesce(customer_invoices.number_of_invoices, 0) as number_of_invoices
  from customer
  left join customer_invoices using (customer_id)
)
select * from final
