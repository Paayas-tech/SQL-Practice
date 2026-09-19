import psycopg

with psycopg.connect(
    "dbname=language_school user=python_application"
) as conn:
    with conn.cursor() as cursor:
        cursor.execute("SELECT * FROM students")

        print("First student:")
        print(cursor.fetchone())

        print("\nNext 3 students:")
        print(cursor.fetchmany(3))

        print("\nRemaining students:")
        print(cursor.fetchall())