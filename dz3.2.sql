SELECT track_name, duration FROM track    
	ORDER BY duration DESC
	LIMIT 1;

select track_name from track
where duration > 210;

select collection_name from collection_of_songs
where year_of_release >= 2018 and year_of_release <= 2020;

select executor_name from executor
where executor_name not like '% %';

select track_name from track
where track_name like '%мой %';

SELECT g.genre_name, count(ge.executor_id) FROM genre g
   JOIN genre_executor ge ON g.id = ge.genre_id
   GROUP BY g.genre_name;
   

select a.album_name, a.year_of_release, count(t.id) from album a
	join track t on a.id = t.album_id 
	where a.year_of_release between 2019 and 2020
	group by a.album_name, a.year_of_release;
	

select a.album_name, avg(t.duration) from album a 
	join track t on a.id = t.album_id 
	group by a.album_name;
	
select e.executor_name from executor e 
	JOIN executor_album ea ON e.id = ea.executor_id
	JOIN album a ON a.id = ea.album_id
	WHERE a.year_of_release < 2020; 
	
select c.collection_name from collection_of_songs c
	join track_collection tc on tc.collection_of_songs_id = c.id 
	join track t on t.id = tc.track_id
	join album a on a.id = t.album_id 
	join executor_album ea on ea.album_id = a.id
	join executor e on e.id = ea.executor_id 
	where e.executor_name like '%Eminem%'