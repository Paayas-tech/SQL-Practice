-- Section 23: Permissions
-- GRANT command

-- Allow logging_application to read users
GRANT SELECT
ON TABLE users
TO logging_application;

-- Allow logging_application to read rooms
GRANT SELECT
ON TABLE rooms
TO logging_application;

-- Allow logging_application to read and insert access log data
GRANT SELECT, INSERT
ON TABLE access_log_data
TO logging_application;

-- SELECT should work
SELECT *
FROM users;

SELECT *
FROM rooms;

SELECT *
FROM access_log_data;

-- INSERT should work
INSERT INTO access_log_data (room_id, user_id, time)
VALUES (...);

-- UPDATE should fail
UPDATE access_log_data
SET is_deleted = true
WHERE id = 1;