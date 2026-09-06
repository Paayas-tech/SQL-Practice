-- PL/pgSQL IF / ELSE

DO $$
DECLARE
    room RECORD;
BEGIN

    FOR room IN
        SELECT *
        FROM rooms
    LOOP

        IF room.id != 2 THEN

            RAISE NOTICE 'Room ID: %, Room Name: %',
                room.id,
                room.name;

        ELSE

            RAISE NOTICE 'Room 2 was encountered';

        END IF;

    END LOOP;

END;
$$ LANGUAGE plpgsql;