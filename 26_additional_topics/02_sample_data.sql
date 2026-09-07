-- ============================================
-- Section 26 - Sample Data
-- ============================================

INSERT INTO courses
    (language_name, name, language_level, description, teacher_id)
VALUES
    (
        'German',
        'German Basics',
        'Beginner',
        'Learn basic German vocabulary, grammar and everyday conversations.',
        101
    ),
    (
        'German',
        'German Conversation',
        'Intermediate',
        'Improve German speaking skills through practical conversations.',
        102
    ),
    (
        'English',
        'English Grammar',
        'Beginner',
        'Learn English grammar rules and improve sentence construction.',
        103
    ),
    (
        'English',
        'Business English',
        'Advanced',
        'Improve English communication skills for professional environments.',
        104
    ),
    (
        'French',
        'French Basics',
        'Beginner',
        'Learn basic French vocabulary and common phrases.',
        105
    ),
    (
        'Spanish',
        'Spanish Conversation',
        'Intermediate',
        'Practice Spanish conversation and everyday communication.',
        106
    ),
    (
        'Italian',
        'Italian Basics',
        'Beginner',
        'Learn Italian vocabulary, grammar and useful expressions.',
        107
    ),
    (
        'Japanese',
        'Japanese Introduction',
        'Beginner',
        'Introduction to Japanese writing, vocabulary and basic grammar.',
        108
    );

-- ============================================
-- Students
-- ============================================

INSERT INTO students
    (first_name, last_name, email, course_id, payment_status)
VALUES
    ('Aarav', 'Sharma', 'aarav@example.com', 1, 'paid'),
    ('Riya', 'Verma', 'riya@example.com', 2, 'pending'),
    ('Ananya', 'Gupta', 'ananya@example.com', 3, 'paid'),
    ('Rahul', 'Singh', 'rahul@example.com', 4, 'pending'),
    ('Priya', 'Mehta', 'priya@example.com', 5, 'paid'),
    ('Karan', 'Malhotra', 'karan@example.com', 6, 'pending'),
    ('Neha', 'Kapoor', 'neha@example.com', 7, 'paid'),
    ('Arjun', 'Patel', 'arjun@example.com', 8, 'paid');