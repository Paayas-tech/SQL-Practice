from sqlalchemy import create_engine, String, Integer, ForeignKey
from sqlalchemy.orm import DeclarativeBase, Mapped, mapped_column, relationship, Session


class Base(DeclarativeBase):
    pass


class Course(Base):
    __tablename__ = "courses"

    id: Mapped[int] = mapped_column(Integer, primary_key=True)
    name: Mapped[str] = mapped_column(String(100))

    students: Mapped[list["Student"]] = relationship(
        back_populates="course"
    )


class Student(Base):
    __tablename__ = "students_copy"

    id: Mapped[int] = mapped_column(Integer, primary_key=True)
    first_name: Mapped[str] = mapped_column(String(30))
    last_name: Mapped[str] = mapped_column(String(30))
    course_id: Mapped[int] = mapped_column(
        ForeignKey("courses.id")
    )

    course: Mapped["Course"] = relationship(
        back_populates="students"
    )

    def __repr__(self):
        return (
            f"Student("
            f"id={self.id}, "
            f"first_name='{self.first_name}', "
            f"last_name='{self.last_name}', "
            f"course_id={self.course_id})"
        )


engine = create_engine(
    "postgresql+psycopg://python_application@localhost/language_school",
    echo=True
)

with Session(engine) as session:

    students = session.query(Student).all()

    for student in students:
        print(student)

    # Filtering with ORM
    students = (
        session.query(Student)
        .filter(Student.course_id == 8)
        .all()
    )

    for student in students:
        print(student)

    # Access related object
    for student in students:
        print(student.first_name)
        print(student.course)

    # Access students enrolled in a course
    course = session.query(Course).first()

    if course:
        print(course.name)

        for student in course.students:
            print(student)