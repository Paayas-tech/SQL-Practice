CREATE OR REPLACE FUNCTION access_log_instead_of_delete()
RETURNS TRIGGER
AS $$
BEGIN

    RAISE NOTICE
        'Intercepting delete for ID: %',
        OLD.id;

    -- Instead of deleting the record,
    -- mark it as deleted.
    UPDATE access_log_data
    SET is_deleted = TRUE
    WHERE id = OLD.id;

    RETURN NULL;

END;
$$ LANGUAGE plpgsql;