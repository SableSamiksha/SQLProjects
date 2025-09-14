-- 1. Songs with artist names
SELECT s.title AS Song, a.name AS Artist
FROM Songs s
JOIN Artists a ON s.artist_id = a.artist_id;

-- 2. Playlists with user names
SELECT p.name AS Playlist, u.name AS Created_By
FROM Playlists p
JOIN Users u ON p.created_by = u.user_id;

-- 3. Most streamed song per artist
SELECT s.title, a.name AS Artist, COUNT(st.stream_id) AS Streams
FROM Songs s
JOIN Artists a ON s.artist_id = a.artist_id
JOIN Streams st ON s.song_id = st.song_id
GROUP BY s.song_id
ORDER BY a.artist_id, Streams DESC;

-- 4. City-wise most popular song
SELECT u.city, s.title, COUNT(st.stream_id) AS Streams
FROM Streams st
JOIN Users u ON st.user_id = u.user_id
JOIN Songs s ON st.song_id = s.song_id
GROUP BY u.city, s.song_id
ORDER BY u.city, Streams DESC;

-- 5. Users who only listen to one artist
SELECT user_id
FROM Streams
GROUP BY user_id
HAVING COUNT(DISTINCT song_id) = 1;

-- 6. Songs longer than average duration
SELECT title, duration
FROM Songs
WHERE duration > (SELECT AVG(duration) FROM Songs);

-- 7. Users rating songs above average
SELECT DISTINCT st.user_id, u.name
FROM Streams st
JOIN Users u ON st.user_id = u.user_id
WHERE st.rating > (
    SELECT AVG(rating)
    FROM Streams
    WHERE song_id = st.song_id
);

-- 8. Rank top 5 artists by streams
SELECT a.name, COUNT(st.stream_id) AS total_streams,
       RANK() OVER (ORDER BY COUNT(st.stream_id) DESC) AS rank
FROM Artists a
JOIN Songs s ON a.artist_id = s.artist_id
JOIN Streams st ON s.song_id = st.song_id
GROUP BY a.artist_id
ORDER BY rank
LIMIT 5;

-- 9. Dense rank languages by popularity
SELECT language, COUNT(*) AS total_songs,
       DENSE_RANK() OVER (ORDER BY COUNT(*) DESC) AS language_rank
FROM Songs
GROUP BY language;
