CREATE OR REPLACE FUNCTION access_raise_notice()
RETURNS TRIGGER
AS $$
BEGIN

    -- Change the time before insertion
    NEW.time = '17:30:00';

    RAISE NOTICE
        'Room: %, User: %, Time: %',
        NEW.room_id,
        NEW.user_id,
        NEW.time;

    RETURN NEW;

END;
$$ LANGUAGE plpgsql;