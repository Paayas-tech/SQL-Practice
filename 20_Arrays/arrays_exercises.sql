CREATE TABLE public.developer_performance_reviews (
    review_id integer NOT NULL,
    employee_id integer,
    employee_name character varying(100),
    ratings integer[]
);

CREATE SEQUENCE public.developer_performance_reviews_review_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


CREATE TABLE public.events (
    id integer NOT NULL,
    event_name character varying(255) NOT NULL,
    vip_guests character varying(1000)[]
);



CREATE SEQUENCE public.events_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


CREATE TABLE public.food_restrictions (
    id integer NOT NULL,
    restrictions integer[]
);

CREATE SEQUENCE public.food_restrictions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE public.posts (
    id integer NOT NULL,
    author_id integer NOT NULL,
    content text NOT NULL,
    tags text[]
);


CREATE SEQUENCE public.posts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE public.test_group_feedback (
    participant_id integer NOT NULL,
    test_group_id integer,
    scores integer[]
);

CREATE SEQUENCE public.test_group_feedback_participant_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE public.workouts (
    id integer NOT NULL,
    day_of_the_week character varying(1000) NOT NULL,
    exercises character varying(1000)[]
);

CREATE SEQUENCE public.workouts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE TABLE public.workshops (
    id integer NOT NULL,
    presenter character varying(100) NOT NULL,
    participants character varying(1000)[] NOT NULL
);


CREATE SEQUENCE public.workshops_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;



ALTER TABLE ONLY public.developer_performance_reviews ALTER COLUMN review_id SET DEFAULT nextval('public.developer_performance_reviews_review_id_seq'::regclass);


ALTER TABLE ONLY public.events ALTER COLUMN id SET DEFAULT nextval('public.events_id_seq'::regclass);


ALTER TABLE ONLY public.food_restrictions ALTER COLUMN id SET DEFAULT nextval('public.food_restrictions_id_seq'::regclass);


ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);



ALTER TABLE ONLY public.test_group_feedback ALTER COLUMN participant_id SET DEFAULT nextval('public.test_group_feedback_participant_id_seq'::regclass);



ALTER TABLE ONLY public.workouts ALTER COLUMN id SET DEFAULT nextval('public.workouts_id_seq'::regclass);


ALTER TABLE ONLY public.workshops ALTER COLUMN id SET DEFAULT nextval('public.workshops_id_seq'::regclass);


INSERT INTO public.developer_performance_reviews VALUES
	(1, 14, 'Ashley Garcia', '{9,10,9,9,10}'),
	(2, 4, 'David Brown', '{9,9,9,9,9,9}'),
	(3, 5, 'Richard Davis', '{8,10,10,10}'),
	(4, 10, 'Melissa King', '{8,7,8,8,9,9}'),
	(5, 13, 'James Anderson', '{9,9,8,9}'),
	(6, 15, 'Daniel Hernandez', '{8,9,8,8,9}'),
	(7, 18, 'Lauren Clark', '{8,9,8,9}'),
	(8, 19, 'Andrew Baker', '{9}'),
	(9, 11, 'Joshua Scott', '{7,8,8,9}');



INSERT INTO public.events VALUES
	(1, 'Client Appreciation Dinner', '{"Ava Chen","Liam Kim","Sofia Patel","Isaiah Johnson"}'),
	(2, 'Product Launch Event', '{"Zara Al-Farsi","Ravi Kumar","Khadija Muhammad"}'),
	(3, 'Company Barbeque', '{"Xia Liu"}');


INSERT INTO public.food_restrictions VALUES
	(1, '{1,0,0,0,0,0,0,0}'),
	(2, '{0,1,0,0,0,0,0,0}'),
	(3, '{0,0,0,0,0,0,0,0}'),
	(4, '{0,0,0,0,0,1,0,0}'),
	(5, '{0,0,0,0,0,0,0,0}'),
	(6, '{0,0,0,0,0,0,0,0}'),
	(7, '{0,0,0,1,0,0,0,0}'),
	(8, '{0,0,0,0,0,0,0,0}'),
	(9, '{0,0,0,0,0,0,0,0}'),
	(10, '{0,0,0,0,0,0,0,0}'),
	(11, '{0,0,0,0,0,0,0,0}'),
	(12, '{0,0,0,0,0,0,0,0}'),
	(13, '{0,0,0,0,0,0,0,0}'),
	(14, '{0,0,1,0,0,0,0,0}'),
	(15, '{0,0,0,0,0,0,0,0}'),
	(16, '{0,0,0,0,0,0,0,0}'),
	(17, '{0,0,0,0,0,0,0,0}'),
	(18, '{0,0,0,0,0,0,0,0}'),
	(19, '{0,0,0,0,0,0,0,0}'),
	(20, '{0,0,0,0,0,0,0,0}'),
	(21, '{0,0,0,0,0,0,1,0}');



INSERT INTO public.posts VALUES
	(1, 1, 'Adopted a new puppy today!', '{Pets,Dog,Adoption}'),
	(2, 2, 'Baked my first batch of cookies!', '{Baking,Cookies,Homemade}'),
	(3, 3, 'Visited the beach with friends.', '{Travel,Beach,Friends}'),
	(4, 4, 'Started a new painting project.', '{Art,Painting,Hobby}'),
	(5, 5, 'Read an amazing book over the weekend.', '{Books,Reading,Relaxing}'),
	(6, 6, 'Went hiking in the mountains.', '{Travel,Hiking,Nature}'),
	(7, 7, 'Tried a new recipe for dinner.', '{Cooking,Recipe,Homemade}'),
	(8, 8, 'Adopted a kitten from the shelter.', '{Pets,Cat,Adoption}'),
	(9, 9, 'Visited a new art gallery downtown.', '{Art,Gallery,Travel}'),
	(10, 10, 'Baked a cake for a birthday party.', '{Baking,Cake,Celebration}');



INSERT INTO public.test_group_feedback VALUES
	(1, 1, '{6,10,6,9}'),
	(2, 1, '{8,9,5,9}'),
	(3, 1, '{6,9,6,8}'),
	(4, 2, '{8,9,4,7}'),
	(5, 2, '{6,7,4,7}'),
	(6, 2, '{9,8,4,8}'),
	(7, 3, '{5,10,4,7}'),
	(8, 3, '{7,10,4,9}'),
	(9, 3, '{8,NULL,4,NULL}');

INSERT INTO public.workouts VALUES
	(1, 'Monday', '{Push-ups,"Dumbbell Shoulder Press",Dips,"Tricep Extensions","Lateral Raises"}'),
	(2, 'Tuesday', '{Pull-ups,"Bent-over Rows","Doorway Rows","Bicep Curls","Face Pulls"}'),
	(3, 'Wednesday', '{"Bodyweight Squats",Lunges,"Glute Bridges","Calf Raises","Leg Extensions"}'),
	(4, 'Thursday', '{Push-ups,"Pike Push-ups","Tricep Dips","Front Raises","Tricep Kickbacks"}'),
	(5, 'Friday', '{Pull-ups,"Reverse Flyes","Doorway Rows","Hammer Curls","Rear Delt Flyes"}'),
	(6, 'Saturday', '{"Bulgarian Split Squats","Single-Leg Deadlifts",Step-ups,"Calf Raises","Glute Bridges"}'),
	(7, 'Sunday', '{"Rest or active recovery"}');

INSERT INTO public.workshops VALUES
	(1, 'Ashley Garcia', '{"Timmy Thompson","Aisha Patel","Jamal Johnson","Elena Rodriguez"}'),
	(2, 'David Brown', '{"Sophia Chen","Isabella Garcia","Liam O Connor","Amir Khan"}');


SELECT pg_catalog.setval('public.developer_performance_reviews_review_id_seq', 9, true);


SELECT pg_catalog.setval('public.events_id_seq', 3, true);

SELECT pg_catalog.setval('public.food_restrictions_id_seq', 21, true);



SELECT pg_catalog.setval('public.posts_id_seq', 10, true);


SELECT pg_catalog.setval('public.test_group_feedback_participant_id_seq', 9, true);


SELECT pg_catalog.setval('public.workouts_id_seq', 7, true);

SELECT pg_catalog.setval('public.workshops_id_seq', 2, true);



ALTER TABLE ONLY public.developer_performance_reviews
    ADD CONSTRAINT developer_performance_reviews_pkey PRIMARY KEY (review_id);



ALTER TABLE ONLY public.events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);



ALTER TABLE ONLY public.food_restrictions
    ADD CONSTRAINT food_restrictions_pkey PRIMARY KEY (id);


ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);



ALTER TABLE ONLY public.test_group_feedback
    ADD CONSTRAINT test_group_feedback_pkey PRIMARY KEY (participant_id);


ALTER TABLE ONLY public.workouts
    ADD CONSTRAINT workouts_pkey PRIMARY KEY (id);


ALTER TABLE ONLY public.workshops
    ADD CONSTRAINT workshops_pkey PRIMARY KEY (id);
