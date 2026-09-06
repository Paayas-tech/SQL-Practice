-- PL/pgSQL Loops
-- Loop through every room in the rooms table

DO $$
DECLARE
    room RECORD;
BEGIN

    FOR room IN
        SELECT *
        FROM rooms
    LOOP

        RAISE NOTICE 'Room: %', room;

    END LOOP;

END;
$$ LANGUAGE plpgsql;


-- Access individual columns

DO $$
DECLARE
    room RECORD;
BEGIN

    FOR room IN
        SELECT *
        FROM rooms
    LOOP

        RAISE NOTICE 'Room ID: %, Room Name: %',
            room.id,
            room.name;

    END LOOP;

END;
$$ LANGUAGE plpgsql;


-- Loop through selected rooms

DO $$
DECLARE
    room RECORD;
BEGIN

    FOR room IN
        SELECT *
        FROM rooms
        WHERE id != 2
    LOOP

        RAISE NOTICE 'Room ID: %, Room Name: %',
            room.id,
            room.name;

    END LOOP;

END;
$$ LANGUAGE plpgsql;