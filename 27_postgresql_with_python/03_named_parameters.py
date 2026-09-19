import psycopg

with psycopg.connect(
    "dbname=language_school user=python_application"
) as conn:
    with conn.cursor() as cursor:
        cursor.execute(
            """
            INSERT INTO students_copy
            (first_name, last_name, course_id)
            VALUES (%(first_name)s, %(last_name)s, %(course_id)s)
            """,
            {
                "first_name": "Jack",
                "last_name": "Morrison",
                "course_id": 8
            }
        )

    conn.commit()