SELECT *
FROM invoice i
JOIN invoice_line il 
ON i.invoice_id = il.invoice_id
WHERE il.unit_price > .99;


SELECT invoice_date, c.first_name, c.last_name, total
FROM invoice i
JOIN customer c ON c.customer_id = i.customer_id;

SELECT 
	c.first_name AS customer_first_name, 
	c.last_name AS customer_last_name, 
  e.first_name AS support_first_name, 
  e.last_name AS support_last_name
FROM customer c
JOIN employee e on c.support_rep_id = e.employee_id;

SELECT al.title, ar.name
FROM album al
JOIN artist ar ON al.artist_id = ar.artist_id;


SELECT pt.track_id
FROM playlist_track pt
JOIN playlist pl ON pl.playlist_id = pt.playlist_id
WHERE name = 'Music';




SELECT tr.name
FROM track tr
JOIN playlist_track pt ON pt.track_id = tr.track_id
WHERE pt.playlist_id = 5;



SELECT t.name AS track_name, p.name AS playlist_name
FROM track t
JOIN playlist_track pt ON t.track_id = pt.track_id
JOIN playlist p ON p.playlist_id = pt.playlist_id;



SELECT tr.name AS track_name, al.title AS album_title
FROM track tr
JOIN album al ON al.album_id = tr.album_id
JOIN genre gn ON gn.genre_id = tr.genre_id 
	WHERE gn.name = 'Alternative & Punk';




    
