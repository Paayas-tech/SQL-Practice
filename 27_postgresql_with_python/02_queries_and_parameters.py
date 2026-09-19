import psycopg

student_id = 5

with psycopg.connect(
    "dbname=language_school user=python_application"
) as conn:
    with conn.cursor() as cursor:
        cursor.execute(
            "SELECT * FROM students WHERE id = %s",
            (student_id,)
        )

        print(cursor.fetchall())