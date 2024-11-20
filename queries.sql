SELECT genres, COUNT(*) FROM movies_metadata group by genres;

select original_title, revenue from movies_metadata where revenue is not null order by revenue desc limit 1;

select adult, COUNT(*) from movies_metadata group by adult;

select AVG(runtime) from movies_metadata;

select title, vote_average from movies_metadata where vote_average >= 8 order by vote_average desc;

select original_language, count(*) from movies_metadata group by original_language order by count desc;

select original_title, release_date from movies_metadata where release_date between '2000-01-01' and '2024-11-20' order by release_date desc;

select count(*) from movies_metadata where status != 'Released';

select original_title, belongs_to_collection from movies_metadata where belongs_to_collection  != '' and belongs_to_collection is not null order by belongs_to_collection desc;

select original_title , budget, revenue, (revenue - budget) as rentabilidad from movies_metadata where revenue != 0 order by rentabilidad desc;