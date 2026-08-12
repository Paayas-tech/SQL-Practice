--CODING EXERCISE 1: CREATING A FIRST ARRAY

CREATE TABLE tasks (
    id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    task_name VARCHAR(1000) NOT NULL,
    sub_tasks VARCHAR(1000) ARRAY,
    status VARCHAR(100) NOT NULL
);

INSERT INTO tasks (task_name, sub_tasks, status)
VALUES (
    'Finalize project deliverables',
    ARRAY[
        'Compile final report',
        'Test and debug the software',
        'Prepare documentation and user manuals',
        'Package and deploy the software'
    ],
    'In Progress'
);

SELECT * 
FROM tasks
WHERE task_name = 'Finalize project deliverables';