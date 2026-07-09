-- Topic       : Data Modeling Basics
-- Description : Creating the Tracks table.

--------------------------------------------------
-- CREATE TABLE : tracks

CREATE TABLE public.tracks
(
    id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY,
    album_id INTEGER NOT NULL,
    title VARCHAR(1023) NOT NULL,
    length INTEGER NOT NULL,
    "position" INTEGER NOT NULL,
    PRIMARY KEY (id)
);

--------------------------------------------------
-- INSERT SAMPLE RECORDS

INSERT INTO tracks (album_id, title, length, "position")
VALUES
(1, 'The Edge of Night', 225, 1),
(1, 'Silhouette Dreams', 270, 2),
(1, 'Shadow Dance', 315, 3),
(1, 'Twilight Echoes', 245, 4),
(1, 'Midnight''s Veil', 235, 5),
(1, 'Dusk to Dawn', 280, 6),
(1, 'Whispers of the Past', 300, 7),
(2, 'Rose Thorn Lullaby', 230, 1),
(2, 'Bramble''s Embrace', 265, 2),
(2, 'Whispering Winds', 295, 3),
(2, 'Thorns of Memory', 215, 4),
(2, 'Secrets in the Vines', 285, 5),
(2, 'Echoes of the Lost', 310, 6),
(3, 'Moonlit Serenade', 260, 1),
(3, 'Shadows Under the Moon', 230, 2),
(3, 'Gaze of the Ancients', 280, 3),
(3, 'Nocturnal Whispers', 305, 4),
(3, 'Eclipse of the Heart', 255, 5),
(3, 'Lunar Reflection', 290, 6),
(4, 'Orbiting Solitude', 330, 1),
(4, 'Auroras Beyond', 280, 2),
(4, 'Solar Winds', 295, 3),
(4, 'Voyage of the Comet', 225, 4),
(4, 'Stellar Drift', 315, 5),
(4, 'Eclipsing Suns', 275, 6),
(5, 'Void Whispers', 245, 1),
(5, 'Cosmic Silence', 320, 2),
(5, 'Nebular Dreams', 290, 3),
(5, 'Galactic Echoes', 235, 4),
(5, 'Asteroid''s Tale', 285, 5),
(5, 'Beyond the Event Horizon', 330, 6),
(6, 'Crescent Lullaby', 240, 1),
(6, 'Shade and Light', 220, 2),
(6, 'Tides of Tranquility', 305, 3),
(6, 'Lunar Rhapsody', 290, 4),
(6, 'Reflections in the Dark', 270, 5),
(6, 'The Quiet Between', 235, 6);

--------------------------------------------------
-- Topic       : Data Modeling Basics
-- Description : Creating the Tracks table.

--------------------------------------------------
-- CREATE TABLE : tracks

CREATE TABLE public.tracks
(
    id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY,
    album_id INTEGER NOT NULL,
    title VARCHAR(1023) NOT NULL,
    length INTEGER NOT NULL,
    "position" INTEGER NOT NULL,
    PRIMARY KEY (id)
);

--------------------------------------------------
-- INSERT SAMPLE RECORDS

INSERT INTO tracks (album_id, title, length, "position")
VALUES
(1, 'The Edge of Night', 225, 1),
(1, 'Silhouette Dreams', 270, 2),
(1, 'Shadow Dance', 315, 3),
(1, 'Twilight Echoes', 245, 4),
(1, 'Midnight''s Veil', 235, 5),
(1, 'Dusk to Dawn', 280, 6),
(1, 'Whispers of the Past', 300, 7),
(2, 'Rose Thorn Lullaby', 230, 1),
(2, 'Bramble''s Embrace', 265, 2),
(2, 'Whispering Winds', 295, 3),
(2, 'Thorns of Memory', 215, 4),
(2, 'Secrets in the Vines', 285, 5),
(2, 'Echoes of the Lost', 310, 6),
(3, 'Moonlit Serenade', 260, 1),
(3, 'Shadows Under the Moon', 230, 2),
(3, 'Gaze of the Ancients', 280, 3),
(3, 'Nocturnal Whispers', 305, 4),
(3, 'Eclipse of the Heart', 255, 5),
(3, 'Lunar Reflection', 290, 6),
(4, 'Orbiting Solitude', 330, 1),
(4, 'Auroras Beyond', 280, 2),
(4, 'Solar Winds', 295, 3),
(4, 'Voyage of the Comet', 225, 4),
(4, 'Stellar Drift', 315, 5),
(4, 'Eclipsing Suns', 275, 6),
(5, 'Void Whispers', 245, 1),
(5, 'Cosmic Silence', 320, 2),
(5, 'Nebular Dreams', 290, 3),
(5, 'Galactic Echoes', 235, 4),
(5, 'Asteroid''s Tale', 285, 5),
(5, 'Beyond the Event Horizon', 330, 6),
(6, 'Crescent Lullaby', 240, 1),
(6, 'Shade and Light', 220, 2),
(6, 'Tides of Tranquility', 305, 3),
(6, 'Lunar Rhapsody', 290, 4),
(6, 'Reflections in the Dark', 270, 5),
(6, 'The Quiet Between', 235, 6);

--------------------------------------------------
-- VERIFY INSERTED RECORDS

SELECT *
FROM tracks
ORDER BY album_id, "position";