-- Topic       : Data Modeling Basics
-- Description : Creating the Artists table.

--------------------------------------------------
-- CREATE TABLE : artists

CREATE TABLE public.artists
(
    id INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY,
    title VARCHAR(1023),
    description TEXT,
    monthly_listeners INTEGER,
    PRIMARY KEY (id)
);

--------------------------------------------------
-- INSERT SAMPLE RECORDS

INSERT INTO artists
(
    title,
    description
)
VALUES
(
    'Midnight Serenade',
    'Midnight Serenade is a fictional band that combines elements of dream pop and neo-soul, creating a sound that is both ethereal and emotionally resonant. The band features a trio of artists: a singer with a silky, mesmerizing voice, a keyboardist who crafts lush, layered arrangements, and a guitarist whose subtle, reverb-laden licks weave through the music like threads of silver. Their music is often described as a journey through the quieter hours, with lyrics that explore themes of love, introspection, and the mysteries of the night. Their breakthrough album, "Whispers of the Moon," captivated listeners with its intimate atmosphere and sophisticated melodies, earning them a spot in the hearts of fans worldwide. Midnight Serenade''s concerts are known for their intimate settings and the deep connection the band establishes with their audience, making each performance a memorable experience.'
),
(
    'Solar Drift',
    'Solar Drift is a fictional band known for their innovative fusion of psychedelic rock and ambient electronica, creating a soundscape that transports listeners to otherworldly dimensions. The quartet consists of a charismatic lead vocalist with a hypnotic presence, a guitarist who blends psychedelic swirls with electronic textures, a bassist who lays down cosmic grooves, and a drummer who mixes acoustic rhythms with digital beats to propel the music forward. Their signature sound is a blend of expansive melodies, transcendent harmonies, and sonic experiments that defy traditional genre boundaries. Their debut album, "Galactic Echoes", received widespread acclaim for its bold exploration of space and time through music, establishing Solar Drift as trailblazers in the contemporary music scene. Known for their visually stunning live shows that incorporate immersive visuals and lighting, Solar Drift offers an experience that is as much a voyage through the cosmos as it is a musical performance.'
),
(
    'Phantom Melody',
    'Phantom Melody is a fictional band that stands out for their fusion of alternative rock and dark folk, creating an enigmatic and captivating sound. Comprising a lead singer with a haunting voice that echoes with emotion, a guitarist who intertwines dark, melodic lines with folk-inspired acoustics, a bassist whose deep, rhythmic undertones add a mysterious depth, and a drummer who combines traditional beats with unconventional percussion to create a mesmerizing rhythm. Their music is characterized by its storytelling, weaving tales of folklore, love, and loss into a tapestry of sound that feels both ancient and modern. Their critically acclaimed album, "Echoes of the Forgotten", has been celebrated for its ability to transport listeners to shadowy, forgotten landscapes through its rich, atmospheric soundscapes. Phantom Melody''s live performances are known for their intense, emotional delivery and the ethereal stage presence, making each concert an unforgettable experience.'
);

--------------------------------------------------
-- VERIFY INSERTED RECORDS

SELECT *
FROM artists;