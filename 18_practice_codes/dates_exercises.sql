-- Section 18 - Dates Exercises

DROP TABLE IF EXISTS e_concerts;
CREATE TABLE e_concerts (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    band VARCHAR(1023) NOT NULL,
    start_time TIMESTAMP,
    end_time TIMESTAMP
);

INSERT INTO e_concerts (band, start_time, end_time)
VALUES
    ('Red Hot Chilli Peppers', TIMESTAMP '2030-12-05 20:00:00', TIMESTAMP '2030-12-05 23:59:59'),
    ('Coldplay', TIMESTAMP '2030-11-10 20:00:00', TIMESTAMP '2030-12-05 23:59:59'),
    ('OneRepublic', TIMESTAMP '2030-11-20 20:00:00', TIMESTAMP '2030-12-05 23:59:59');


DROP TABLE IF EXISTS e_booking_requests;
CREATE TABLE e_booking_requests (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    band_name VARCHAR(1000) NOT NULL,
    city VARCHAR(1000) NOT NULL,
    preferred_booking_date DATE,
    preferred_booking_time TIME
);

INSERT INTO e_booking_requests
    (band_name, city, preferred_booking_date, preferred_booking_time)
VALUES
    ('Red Hot Chilli Peppers', 'Los Angeles', DATE '2043-12-31', TIME '17:00:00'),
    ('Coldplay', 'Colorado Springs', DATE '2043-11-12', TIME '17:00:00'),
    ('The Rockin Rebels', 'New York City', DATE '2043-12-31', TIME '20:00:00'),
    ('Electric Fusion', 'Chicago', DATE '2042-08-10', TIME '18:30:00'),
    ('Groove Machine', 'San Antonio', DATE '2043-01-25', TIME '19:45:00'),
    ('Jazz Collective', 'Dallas', DATE '2043-08-18', TIME '21:15:00'),
    ('Acoustic Harmony', 'San Jose', DATE '2043-04-20', TIME '17:00:00');


DROP TABLE IF EXISTS e_tour_concerts;
CREATE TABLE e_tour_concerts (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    town VARCHAR(100),
    venue VARCHAR(255),
    concert_date DATE,
    start_time TIME,
    end_time TIME,
    ticket_count INT
);

INSERT INTO e_tour_concerts
    (town, venue, concert_date, start_time, end_time, ticket_count)
VALUES
    ('Hilltop', 'Grove Hall', '2044-11-10', '20:00:00', '23:00:00', 50),
    ('Bayview', 'Ocean Arena', '2046-12-01', '18:30', '9:30 PM', 600),
    ('Oakwood', 'Maple Park', '2047-01-15', '8:30 PM', '23:30', 800),
    ('Lakeview', 'Drift Den', '2048-02-20', '06:00:00', '09:00', 900),
    ('Fairfax', 'Bluff Tent', '2048-03-10', '19:30', '22:30', 1550);


DROP TABLE IF EXISTS e_concerts_cet;
CREATE TABLE e_concerts_cet (
    id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    concert_name VARCHAR(255),
    venue VARCHAR(255),
    start_time TIMESTAMP,
    end_time TIMESTAMP
);

INSERT INTO e_concerts_cet
    (concert_name, venue, start_time, end_time)
VALUES
    ('Parisian Acoustic Nights', 'Le Zénith Paris', '2040-12-10 13:00:00', '2040-12-10 16:00:00'),
    ('Berlin Beats Festival', 'Berliner Philharmonie', '2040-12-15 14:30:00', '2040-12-15 17:30:00'),
    ('Vienna Classical Music Gala', 'Wiener Konzerthaus', '2040-11-20 13:00:00', '2040-11-20 16:00:00'),
    ('Milan Symphony Night', 'Teatro alla Scala', '2040-12-05 20:00:00', '2040-12-05 23:00:00'),
    ('Zurich Jazz Evening', 'Tonhalle Zürich', '2040-11-15 14:00:00', '2040-11-15 17:00:00');