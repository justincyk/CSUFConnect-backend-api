--
-- PostgreSQL database dump
--

-- Dumped from database version 14.17 (Homebrew)
-- Dumped by pg_dump version 14.17 (Homebrew)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: event; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.event (
    id bigint NOT NULL,
    description character varying(255) NOT NULL,
    category character varying(255) NOT NULL,
    end_date_and_time timestamp(6) without time zone NOT NULL,
    image character varying(255),
    location_address character varying(255),
    location_address2 character varying(255),
    location_city character varying(255),
    location_state character varying(255),
    location_zip_code character varying(255),
    event_name character varying(255) NOT NULL,
    short_description character varying(255) NOT NULL,
    start_date_and_time timestamp(6) without time zone NOT NULL,
    student_id character varying(255) NOT NULL,
    CONSTRAINT event_category_check CHECK (((category)::text = ANY ((ARRAY['UNIVERSITY'::character varying, 'ORGANIZATION'::character varying, 'CLUB'::character varying, 'GROUP'::character varying, 'STUDENT'::character varying])::text[])))
);


ALTER TABLE public.event OWNER TO postgres;

--
-- Name: event_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.event_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.event_id_seq OWNER TO postgres;

--
-- Name: event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.event_id_seq OWNED BY public.event.id;


--
-- Name: event_sequence; Type: SEQUENCE; Schema: public; Owner: justinkim
--

CREATE SEQUENCE public.event_sequence
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.event_sequence OWNER TO justinkim;

--
-- Name: student; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student (
    id character varying(255) NOT NULL,
    birthday date NOT NULL,
    email character varying(255) NOT NULL,
    first_name character varying(255),
    last_name character varying(255),
    photo_url character varying(255)
);


ALTER TABLE public.student OWNER TO postgres;

--
-- Name: event id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event ALTER COLUMN id SET DEFAULT nextval('public.event_id_seq'::regclass);


--
-- Data for Name: event; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.event (id, description, category, end_date_and_time, image, location_address, location_address2, location_city, location_state, location_zip_code, event_name, short_description, start_date_and_time, student_id) FROM stdin;
31	Today we will be making burgers and eating them so join us.	ORGANIZATION	2024-05-04 08:09:31	\N	12 Fullerton Ave.		Fullerton	California	91405	Burger Dat	Let us eat some burgers!	2024-05-03 12:20:31.215	0G3IJRZhASNwdCpgM80V7Oumbli2
32	Narnia is a classic and a lot of younger generation students have not seen it.	GROUP	2024-05-11 04:33:32	\N	142 Fullerton St.		Fullerton	California	91014	Movie Day	Let's watch Narnia!	2024-05-03 22:33:32.303	0G3IJRZhASNwdCpgM80V7Oumbli2
33	We are almost done with this semester and that means a lot of projects for CPSC 597 will be finished. Showcase what you have been working on and brag!	GROUP	2024-05-04 19:00:37	https://csufconnect-images-bucket.s3.amazonaws.com/event33.jpeg	1414 Fullerton Ave.		Los Angeles	California	91405	Project Showcase	Showcase your CPSC597 projects!	2024-05-04 18:00:37	0G3IJRZhASNwdCpgM80V7Oumbli2
34	Club day is where all the clubs in the CSUF come set up to showcase their club. Learn about different clubs and become a member!	UNIVERSITY	2024-05-04 21:00:46	https://csufconnect-images-bucket.s3.amazonaws.com/event34.jpeg	800 N State College Blvd		Fullerton	California	92831	Clubs Introduction Day	Find and learn about different clubs!	2024-05-04 18:00:46	T0xKBHhQw3bweKRL0QBbJ6JVE803
35	Valorant Challengers is this weekend so let's watch it at the conference hall and cheer on the teams.	STUDENT	2024-10-01 00:00:15	\N	800 N State College Blvd		Fullerton	California	92831	Valorant Challengers	Let's watch Valorant challengers together!	2024-09-30 19:30:15	PnxJX2Hbr1cPEVJmhmshGsqHJTZ2
36	I am interviewing	STUDENT	2024-09-29 18:20:38	\N	424 fullerton		Fullerton	California	91412	Interview	Lets have an interview	2024-09-28 18:25:38	GnG5FeOofhNUstkr23k7XX1TrCq1
28	Let us all become friends through our common hobby of gaming.	GROUP	2024-05-04 08:14:21	https://csufconnect-images-bucket.s3.amazonaws.com/event28.png	124		fullerton	ca	91011	Gaming Day	Let's play video games	2024-05-03 10:14:21.071	0G3IJRZhASNwdCpgM80V7Oumbli2
29	Programming and Software Engineering is continually advancing so lets learn.	CLUB	2024-05-04 09:16:43	https://csufconnect-images-bucket.s3.amazonaws.com/event29.jpeg	1414		Los Angeles	California	91011	Learn to Code Day	Let's code	2024-05-03 09:16:43.649	0G3IJRZhASNwdCpgM80V7Oumbli2
30	It is fourth of July this weekend so let's celebrate while eating some bbq!	STUDENT	2024-05-10 10:02:37	https://csufconnect-images-bucket.s3.amazonaws.com/event30.jpeg	4141 Test St.		Los Angeles	California	91044	BBQ Day	Let us eat some BBQ!	2024-05-03 11:02:37.907	0G3IJRZhASNwdCpgM80V7Oumbli2
\.


--
-- Data for Name: student; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student (id, birthday, email, first_name, last_name, photo_url) FROM stdin;
0G3IJRZhASNwdCpgM80V7Oumbli2	1980-04-26	test7@csu.fullerton.edu	test10	test10	
T0xKBHhQw3bweKRL0QBbJ6JVE803	2000-05-03	johndoe@csu.fullerton.edu	John	Doe	
PnxJX2Hbr1cPEVJmhmshGsqHJTZ2	2000-09-25	test1@csu.fullerton.edu	Justin	K	
GnG5FeOofhNUstkr23k7XX1TrCq1	2000-09-26	test3@csu.fullerton.edu	Justine	Kim	
\.


--
-- Name: event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.event_id_seq', 36, true);


--
-- Name: event_sequence; Type: SEQUENCE SET; Schema: public; Owner: justinkim
--

SELECT pg_catalog.setval('public.event_sequence', 1, false);


--
-- Name: event event_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event
    ADD CONSTRAINT event_pkey PRIMARY KEY (id);


--
-- Name: student student_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_pkey PRIMARY KEY (id);


--
-- Name: student uk_fe0i52si7ybu0wjedj6motiim; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT uk_fe0i52si7ybu0wjedj6motiim UNIQUE (email);


--
-- Name: event fk60ua7upltt4d7k4uqrg6b0vhq; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.event
    ADD CONSTRAINT fk60ua7upltt4d7k4uqrg6b0vhq FOREIGN KEY (student_id) REFERENCES public.student(id);


--
-- PostgreSQL database dump complete
--

