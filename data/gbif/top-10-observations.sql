select genus, species, count(*) as n
from read_parquet(
  "s3://gbif-open-data-us-east-1/occurrence/2023-03-01/occurrence.parquet/000000"
)
group by genus, species
order by n desc
limit 10
