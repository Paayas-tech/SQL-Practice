-- Trigger Function
-- A trigger function contains the logic that will be executed
-- automatically by a trigger.

CREATE OR REPLACE FUNCTION access_raise_notice()
RETURNS TRIGGER
AS $$
BEGIN

    RAISE NOTICE 'Trigger function executed';

    RETURN NEW;

END;
$$ LANGUAGE plpgsql;