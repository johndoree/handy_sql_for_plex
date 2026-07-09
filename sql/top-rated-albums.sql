select mo.title as "artist", mi.title as "album", mi.tags_genre from metadata_items mi 
left outer join metadata_item_settings mis
on mi.guid = mis.guid
join metadata_items mo on mi.parent_id = mo.id
where mis.rating = 10 and mi.metadata_type =9
--and mi.tags_genre is null --used for checking if top-rated albums had no genre tag.
