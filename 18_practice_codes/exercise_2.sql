-- Section 18 - Exercise 2
-- Formatting DATE and TIME

SELECT
    town,
    venue,
    TO_CHAR(concert_date, 'YYYY/MM/DD') AS concert_date,
    TO_CHAR(start_time, 'HH24:MI:SS') AS start_time,
    TO_CHAR(end_time, 'HH24:MI:SS') AS end_time,
    ticket_count
FROM e_tour_concerts;