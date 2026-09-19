import psycopg

student_id = input("Enter student ID: ")

with psycopg.connect(
    "dbname=language_school user=python_application"
) as conn:
    with conn.cursor() as cursor:
        cursor.execute(
            "SELECT * FROM students WHERE id = %s",
            (student_id,)
        )

        results = cursor.fetchall()

        for student in results:
            print(student)