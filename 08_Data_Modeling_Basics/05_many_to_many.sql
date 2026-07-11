-- Topic       : Many-to-Many Relationship

-- THEORY

-- One playlist can contain many tracks.
-- One track can belong to many playlists.
-- Therefore, a junction table is required.

--------------------------------------------------
-- CREATE TABLE : playlists

CREATE TABLE playlists
(
    id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY,
    title VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

--------------------------------------------------
-- CREATE TABLE : playlists_tracks

CREATE TABLE playlists_tracks
(
    id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY,
    playlist_id INTEGER NOT NULL,
    track_id INTEGER NOT NULL,
    track_position INTEGER,
    PRIMARY KEY (id)
);

--------------------------------------------------
-- CREATE SAMPLE PLAYLIST

INSERT INTO playlists
(
    title
)
VALUES
(
    'Top Hits Today'
);

--------------------------------------------------
-- ADD TRACKS TO PLAYLIST

INSERT INTO playlists_tracks
(
    playlist_id,
    track_id
)
VALUES
(1,10),
(1,15);

--------------------------------------------------
-- VERIFY

SELECT *
FROM playlists_tracks
WHERE playlist_id = 1
ORDER BY track_position;