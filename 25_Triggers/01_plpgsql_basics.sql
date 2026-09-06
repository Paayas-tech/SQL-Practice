-- PL/pgSQL Basics
-- Demonstrates DO blocks, FOR loops and RAISE NOTICE

DO $$
BEGIN

    FOR i IN 1..10 LOOP
        RAISE NOTICE 'Hello World %', i;
    END LOOP;

END;
$$ LANGUAGE plpgsql;


-- Using multiple placeholders

DO $$
DECLARE
    i INTEGER;
BEGIN

    FOR i IN 1..10 LOOP
        RAISE NOTICE 'Value: %, Multiplied: %', i, i * 10;
    END LOOP;

END;
$$ LANGUAGE plpgsql;


-- RAISE NOTICE

DO $$
BEGIN
    RAISE NOTICE 'This is a notice message';
END;
$$ LANGUAGE plpgsql;


-- RAISE EXCEPTION
-- Uncomment to test an exception

/*
DO $$
BEGIN
    RAISE EXCEPTION 'Something went wrong';
END;
$$ LANGUAGE plpgsql;
*/