-- Users table
CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT,
    city VARCHAR(50),
    premium_status ENUM('free', 'premium') DEFAULT 'free'
);

-- Artists table
CREATE TABLE Artists (
    artist_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    debut_year YEAR,
    fan_count INT DEFAULT 0
);

-- Songs table
CREATE TABLE Songs (
    song_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    duration DECIMAL(4,2),
    language VARCHAR(20),
    artist_id INT,
    release_year YEAR,
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id)
);

-- Playlists table
CREATE TABLE Playlists (
    playlist_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    created_by INT,
    created_date DATE,
    FOREIGN KEY (created_by) REFERENCES Users(user_id)
);

-- PlaylistSongs table
CREATE TABLE PlaylistSongs (
    playlist_id INT,
    song_id INT,
    added_date DATE,
    PRIMARY KEY (playlist_id, song_id),
    FOREIGN KEY (playlist_id) REFERENCES Playlists(playlist_id),
    FOREIGN KEY (song_id) REFERENCES Songs(song_id)
);

-- Streams table
CREATE TABLE Streams (
    stream_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    song_id INT,
    listen_time DATETIME,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    device VARCHAR(20),
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (song_id) REFERENCES Songs(song_id)
);

-- Subscriptions table
CREATE TABLE Subscriptions (
    user_id INT PRIMARY KEY,
    start_date DATE,
    end_date DATE,
    plan_type ENUM('Silver', 'Gold', 'Platinum') DEFAULT 'Silver',
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

-- Complaints table
CREATE TABLE Complaints (
    complaint_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    song_id INT,
    reason VARCHAR(100),
    date DATE,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (song_id) REFERENCES Songs(song_id)
);
