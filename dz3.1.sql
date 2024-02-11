
iNSERT into executor 
VALUES(1, 'Скриптонит'), (2, 'Eminem'),
(3, 'Linkin park'), (4, 'Britney Spears');

insert into genre
values(1, 'rap'), (2, 'pop'), (3, 'rock');

insert into album(album_name, year_of_release)
values('Дом с нормальными явлениями', 2015),
		('Music To Be Murdered By - Side B',2020),
		('Iridescent', 2011), ('S&M Remix', 2011);
		
insert into track(track_name, duration, album_id)
values('S&M Remix', 257, 4), ('New Divide', 268, 3),
		('Стиль', 407, 1), ('Дома', 192, 1),
		('Бумажки', 322, 1), ('Black Magic', 175, 2);
	
update track
set track_name = 'мой дом'
where id = 4;
	
insert into collection_of_songs(collection_name, year_of_release)
values ('сборник1', 2015), ('сборник2', 2020),
		('сборник3', 2011), ('сборник4', 2011);
insert into genre_executor(genre_id, executor_id)
values (1, 1), (2, 4), (3, 3), (1, 2);

insert into executor_album(executor_id, album_id)
values (1,1), (2,2), (3,3), (4,4);

insert into track_collection(track_id, collection_of_songs_id)
values (1, 3), (2, 3), (3, 1), (4, 1), (5, 1), (6,2);

