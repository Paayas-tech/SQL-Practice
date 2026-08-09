-- Section 18 - Exercise 3
-- Timezones: CET to EST

SELECT
    id,
    concert_name,
    venue,
    start_time AT TIME ZONE 'CET' AT TIME ZONE 'EST' AS start_time_est,
    end_time AT TIME ZONE 'CET' AT TIME ZONE 'EST' AS end_time_est
FROM e_concerts_cet;