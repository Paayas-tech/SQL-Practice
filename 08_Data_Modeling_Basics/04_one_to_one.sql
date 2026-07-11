-- Topic : One-to-One Relationship
--------------------------------------------------
-- THEORY EXAMPLE
--------------------------------------------------

-- One Artist -> One Favorite Track
-- One Favorite Track -> One Artist
--
-- Since choosing a favorite track is optional,
-- the foreign key is stored in the artists table
-- and can remain NULL.

-- Example:
--
-- ALTER TABLE artists
-- ADD COLUMN favorite_track_id INTEGER;
--
-- UPDATE artists
-- SET favorite_track_id = 35
-- WHERE id = 1;

--------------------------------------------------
-- PRACTICAL EXERCISE
--------------------------------------------------

CREATE TABLE project_documents
(
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    project_id INTEGER NOT NULL UNIQUE,
    document_name VARCHAR(100) NOT NULL,
    document_path VARCHAR(255) NOT NULL
);

INSERT INTO project_documents
(
    project_id,
    document_name,
    document_path
)
VALUES
(1,'Project Plan','/docs/project1/plan.pdf'),
(2,'Budget Report','/docs/project2/budget.pdf'),
(3,'Design Document','/docs/project3/design.pdf');

SELECT
    document_name,
    document_path
FROM project_documents
WHERE project_id IN (1,3)
ORDER BY id;