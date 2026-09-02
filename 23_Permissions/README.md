- PostgreSQL permissions control what users/applications can do.
- Fine-grained access control gives only required permissions.
- Permissions can control access to specific tables and operations.
- A user may be allowed to SELECT but not INSERT.
- A user may be allowed to INSERT but not SELECT.
- Roles and GRANT will be used to manage permissions.
- Project: physical data center access log.
- Tables:
  1. users
  2. rooms
  3. access_log_data
- access_log_data stores user, room, time and is_deleted.
- Soft delete means marking a record as deleted instead of using DELETE.
- is_deleted = true means the record should normally be excluded from queries.
- Goal: protect access logs even if the logging application is compromised.

SECTION 23 — LECTURE 2
MANAGING ROLES

- PostgreSQL permissions are managed through roles.
- A role can represent a database user.
- PostgreSQL roles can also be used as groups.
- This course focuses on individual users for now.
- CREATE ROLE creates a new role.
- LOGIN allows the role to connect to PostgreSQL.
- PASSWORD sets the login password.
- Creating a role does not automatically give it access to tables.
- Different users can connect to the same database with different permissions.
- logging_application can connect but currently gets permission denied
  when trying to access protected tables.
- Permissions will be added using GRANT in the next lecture.

