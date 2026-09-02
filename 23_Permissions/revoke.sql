-- Section 23: Permissions
-- REVOKE command

-- Remove SELECT permission from logging_application
REVOKE SELECT
ON TABLE rooms
FROM logging_application;

-- Give the permission back
GRANT SELECT
ON TABLE rooms
TO logging_application;

-- Example: revoke INSERT permission
-- REVOKE INSERT
-- ON TABLE access_log_data
-- FROM logging_application;

-- Example: revoke UPDATE permission
-- REVOKE UPDATE
-- ON TABLE access_log_data
-- FROM logging_application;

-- Example: revoke CONNECT permission on a database
-- REVOKE CONNECT
-- ON DATABASE data_center
-- FROM logging_application;