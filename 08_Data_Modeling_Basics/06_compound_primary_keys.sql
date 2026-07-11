-- Topic       : Compound Primary Keys
-- Description : Using multiple columns together as a primary key.

--------------------------------------------------
-- CREATE JUNCTION TABLE WITH COMPOUND PRIMARY KEY

CREATE TABLE playlists_tracks
(
    playlist_id INTEGER NOT NULL,
    track_id INTEGER NOT NULL,
    track_position INTEGER,
    PRIMARY KEY (playlist_id, track_id)
);


INSERT INTO playlists_tracks
(
    playlist_id,
    track_id,
    track_position
)
VALUES
(1, 10, 1),
(1, 15, 2);

--------------------------------------------------
-- VERIFY DATA

SELECT *
FROM playlists_tracks
ORDER BY playlist_id, track_position;