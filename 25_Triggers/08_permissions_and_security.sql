CREATE OR REPLACE FUNCTION access_log_instead_of_delete()
RETURNS TRIGGER
SECURITY DEFINER
AS $$
BEGIN

    UPDATE access_log_data
    SET is_deleted = TRUE
    WHERE id = OLD.id;

    RETURN NULL;

END;
$$ LANGUAGE plpgsql;