SELECT COUNT(*) , genre.name
FROM track
JOIN genre ON track.genre_id = genre.genre_id
GROUP BY genre.name;




SELECT COUNT(*) , g.name
FROM track t
JOIN genre g ON t.genre_id = g.genre_id WHERE g.name IN ('Pop', 'Rock')
GROUP BY g.name;



SELECT COUNT(*), ar.name
FROM album al
JOIN artist ar ON al.artist_id = ar.artist_id
GROUP BY ar.name;