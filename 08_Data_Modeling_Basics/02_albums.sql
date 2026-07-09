-- Topic       : Data Modeling Basics

--------------------------------------------------
-- CREATE TABLE : albums

CREATE TABLE public.albums
(
    id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY,
    artist_id INTEGER NOT NULL,
    title VARCHAR NOT NULL,
    PRIMARY KEY (id)
);

--------------------------------------------------
-- INSERT SAMPLE RECORDS

INSERT INTO albums
(
    artist_id,
    title
)
VALUES
(
    3,
    'Shadows and Silhouettes'
),
(
    3,
    'Whispers in the Thorns'
),
(
    3,
    'Beneath the Moon''s Gaze'
),
(
    2,
    'Solar Drift'
),
(
    2,
    'Echoes of the Void'
),
(
    1,
    'Lunar Reflections'
),
(
    1,
    'Whispering Shadows'
);

--------------------------------------------------
-- VERIFY INSERTED RECORDS

SELECT *
FROM albums;