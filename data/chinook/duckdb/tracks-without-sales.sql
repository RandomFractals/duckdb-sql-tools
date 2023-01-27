select track_id, name
from tracks
where track_id not in (
  select distinct track_id
  from invoice_items
)
