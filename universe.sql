--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: enfeite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.enfeite (
    name character varying(3) NOT NULL,
    enfeite_id integer NOT NULL,
    desct text
);


ALTER TABLE public.enfeite OWNER TO freecodecamp;

--
-- Name: enfeite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.enfeite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.enfeite_id_seq OWNER TO freecodecamp;

--
-- Name: enfeite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.enfeite_id_seq OWNED BY public.enfeite.enfeite_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    description text,
    is_spherical boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    description text,
    is_spherical boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    description text,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: enfeite enfeite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.enfeite ALTER COLUMN enfeite_id SET DEFAULT nextval('public.enfeite_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: enfeite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.enfeite VALUES ('SEI', 1, NULL);
INSERT INTO public.enfeite VALUES ('la', 2, NULL);
INSERT INTO public.enfeite VALUES ('1', 3, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'vialactea', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'triangulo', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'galaxia4', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'galaxia5', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'galaxia6', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'lua', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'Europa', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (3, 'Ganimede', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (4, 'moon4', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (5, 'moon5', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (6, 'moon6', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (7, 'moon7', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (8, 'moon8', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (9, 'moon9', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (10, 'moon10', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (11, 'moon11', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (12, 'moon12', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (13, 'moon13', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (14, 'moon14', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (15, 'moon15', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (16, 'moon16', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (17, 'moon17', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (18, 'moon18', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (19, 'moon19', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (20, 'moon20', NULL, NULL, NULL, NULL, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'terra', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'jupiter', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, 'marte', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (4, 'planeta4', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (5, 'planeta5', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (6, 'planeta6', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (7, 'planeta7', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (8, 'planeta8', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (9, 'planeta9', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (10, 'planeta10', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (11, 'planeta11', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (12, 'planeta12', NULL, NULL, NULL, NULL, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sol', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'sol2', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (3, 'sol3', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (4, 'sol4', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (5, 'sol5', NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (6, 'sol6', NULL, NULL, NULL, 1);


--
-- Name: enfeite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.enfeite_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 7, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: enfeite enfeite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.enfeite
    ADD CONSTRAINT enfeite_pkey PRIMARY KEY (enfeite_id);


--
-- Name: enfeite enfeite_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.enfeite
    ADD CONSTRAINT enfeite_unique UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: moon moon_id_filha_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_filha_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_id_filha_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_filha_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_id_filha_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_filha_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

