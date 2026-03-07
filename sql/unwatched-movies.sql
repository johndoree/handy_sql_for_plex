select 
     mi.title || ' (' || substr(date(mi.originally_available_at, 'unixepoch'),1,4) || ')' formatted_title
from metadata_items mi 
left outer join metadata_item_settings mis 
    on mi.guid = mis.guid 
where 
    (mis.view_count = 0 or mis.id is null) 
and metadata_type =1;