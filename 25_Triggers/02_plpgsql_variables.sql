-- PL/pgSQL Variables

DO $$
DECLARE
    room_count INTEGER;
BEGIN

    -- Get the number of rooms
    SELECT COUNT(*)
    INTO room_count
    FROM rooms;

    RAISE NOTICE 'Number of rooms: %', room_count;

END;
$$ LANGUAGE plpgsql;


-- Variable with a default value

DO $$
DECLARE
    room_count INTEGER DEFAULT 42;
BEGIN

    RAISE NOTICE 'Room count: %', room_count;

END;
$$ LANGUAGE plpgsql;


-- NOT NULL variable with default value

DO $$
DECLARE
    room_count INTEGER NOT NULL DEFAULT 42;
BEGIN

    RAISE NOTICE 'Room count: %', room_count;

END;
$$ LANGUAGE plpgsql;


-- Text variable

DO $$
DECLARE
    room_name TEXT;
BEGIN

    SELECT name
    INTO room_name
    FROM rooms
    LIMIT 1;

    RAISE NOTICE 'First room: %', room_name;

END;
$$ LANGUAGE plpgsql;