select a.name
from artists as a
    left join albums as b on a.artist_id = b.artist_id
where b.artist_id is null
