-- Section 18 - Exercise 1
-- DATE, TIME, TIMESTAMP

INSERT INTO e_concerts (band, start_time, end_time)
VALUES (
    'Electronic Dance Night',
    TIMESTAMP '2060-08-15 21:00:00',
    TIMESTAMP '2060-08-15 23:59:59'
);

SELECT *
FROM e_concerts
WHERE band = 'Electronic Dance Night';