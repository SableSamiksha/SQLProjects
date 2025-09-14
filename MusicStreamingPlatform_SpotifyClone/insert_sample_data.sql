-- Users
INSERT INTO Users (user_id, name, age, city, premium_status) VALUES
(1, 'Aryan Sharma', 22, 'Mumbai', 'premium'),
(2, 'Priya Singh', 25, 'Delhi', 'free'),
(3, 'Rohan Gupta', 30, 'Bangalore', 'premium'),
(4, 'Neha Kapoor', 27, 'Chennai', 'free'),
(5, 'Vikram Joshi', 21, 'Hyderabad', 'premium'),
(6, 'Ananya Mehta', 24, 'Pune', 'free'),
(7, 'Kabir Khan', 29, 'Kolkata', 'premium'),
(8, 'Sanya Rao', 23, 'Ahmedabad', 'free'),
(9, 'Rahul Verma', 26, 'Jaipur', 'premium'),
(10, 'Isha Bhatia', 28, 'Lucknow', 'free');

-- Artists
INSERT INTO Artists (artist_id, name, debut_year, fan_count) VALUES
(1, 'Arijit Singh', 2007, 5000000),
(2, 'Neha Kakkar', 2006, 4500000),
(3, 'Badshah', 2012, 4000000),
(4, 'Shreya Ghoshal', 2000, 3500000),
(5, 'Yo Yo Honey Singh', 2008, 3000000),
(6, 'Rahat Fateh Ali Khan', 1995, 2500000),
(7, 'Sonu Nigam', 1992, 2000000),
(8, 'Armaan Malik', 2010, 1800000);

-- Songs
INSERT INTO Songs (song_id, title, duration, language, artist_id, release_year) VALUES
(1, 'Tum Hi Ho', 4.23, 'Hindi', 1, 2013),
(2, 'Dilbar', 3.55, 'Hindi', 2, 2018),
(3, 'Genda Phool', 3.12, 'Hindi', 3, 2020),
(4, 'Tera Ban Jaunga', 4.01, 'Hindi', 4, 2019),
(5, 'Blue Eyes', 3.50, 'Hindi', 5, 2013),
(6, 'Afreen Afreen', 5.05, 'Hindi', 6, 1996),
(7, 'Kal Ho Naa Ho', 4.45, 'Hindi', 7, 2003),
(8, 'Bol Do Na Zara', 4.20, 'Hindi', 8, 2015),
(9, 'Nashe Si Chadh Gayi', 3.40, 'Hindi', 2, 2016),
(10, 'Sheher Ki Ladki', 3.30, 'Hindi', 5, 2012);

-- Playlists
INSERT INTO Playlists (playlist_id, name, created_by, created_date) VALUES
(1, 'Chill Vibes', 1, '2025-08-01'),
(2, 'Workout Hits', 2, '2025-07-15'),
(3, 'Romantic Songs', 3, '2025-06-20'),
(4, 'Party Anthems', 4, '2025-05-10'),
(5, 'Old Classics', 5, '2025-04-01');

-- PlaylistSongs
INSERT INTO PlaylistSongs (playlist_id, song_id, added_date) VALUES
(1, 1, '2025-08-01'),
(1, 2, '2025-08-01'),
(2, 3, '2025-07-16'),
(2, 5, '2025-07-17'),
(3, 4, '2025-06-21'),
(3, 6, '2025-06-22'),
(4, 7, '2025-05-11'),
(4, 8, '2025-05-12'),
(5, 9, '2025-04-02'),
(5, 10, '2025-04-03');

-- Streams
INSERT INTO Streams (stream_id, user_id, song_id, listen_time, rating, device) VALUES
(1, 1, 1, '2025-09-10 18:00:00', 5, 'Mobile'),
(2, 2, 2, '2025-09-11 09:00:00', 4, 'Laptop'),
(3, 3, 3, '2025-09-11 12:00:00', 5, 'Mobile'),
(4, 1, 2, '2025-09-12 08:00:00', 3, 'Tablet'),
(5, 4, 5, '2025-09-12 20:00:00', 2, 'Mobile'),
(6, 5, 6, '2025-09-13 07:30:00', 5, 'Laptop'),
(7, 6, 7, '2025-09-13 14:00:00', 4, 'Mobile'),
(8, 7, 8, '2025-09-13 16:00:00', 5, 'Mobile'),
(9, 8, 9, '2025-09-13 18:30:00', 3, 'Laptop'),
(10, 9, 10, '2025-09-13 19:00:00', 4, 'Mobile');

-- Subscriptions
INSERT INTO Subscriptions (user_id, start_date, end_date, plan_type) VALUES
(1, '2025-01-01', '2025-12-31', 'Gold'),
(3, '2025-02-01', '2025-08-31', 'Silver'),
(5, '2025-03-01', '2026-02-28', 'Gold'),
(7, '2025-04-01', '2025-09-30', 'Silver'),
(9, '2025-05-01', '2026-04-30', 'Gold');

-- Complaints
INSERT INTO Complaints (complaint_id, user_id, song_id, reason, date) VALUES
(1, 2, 3, 'lyrics cringe', '2025-09-10'),
(2, 4, 5, 'wrong song', '2025-09-11'),
(3, 6, 7, 'repeated ads', '2025-09-12'),
(4, 8, 9, 'lyrics cringe', '2025-09-12');
